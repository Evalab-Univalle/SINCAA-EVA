require 'Qt4'
require 'qtuitools'
require 'escena.rb'
require 'manager.rb'
require 'managernube.rb'
require 'form/ui_form_resultado_grupal.rb'

class Frm_resultado_grupal < Qt::Widget

	attr_accessor :qimages
	attr_accessor :tablarespuestas
	attr_accessor :mng
	attr_accessor :carpeta_imgs
	attr_accessor :lista_codigos
	
	slots 'on_btn_explorar_clicked()',
		  'on_btn_exportar_clicked()',
		  'on_tbl_estudiantes_cellDoubleClicked (int, int)'
	
	def initialize(parent, carpeta_archivos, lista_codigos)
	    super(parent)
		@ui = Ui_Frm_resultado_grupal.new
	    @ui.setupUi(self)
	    
	    @mng = Manager.new
	    
	    @carpeta_imgs = carpeta_archivos
	    @lista_codigos = lista_codigos
	    @marcas_hojas = Array.new
	    @qimages = Array.new
	    @qimages_reubicadas = Array.new
	    
	    @informe_errores = ""
	    
	    @codigos_estudiantes = Array.new
	    
	    @ui.tbl_estudiantes.horizontalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
	    @ui.tbl_estudiantes.verticalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
	end
	
	def	setQImages(imgs) 
		@qimages = imgs
		if !@qimages.empty?
			@ui.lb_escaneados.setText @qimages.size.to_s
			configurar_tabla_estudiantes
			identificar_marcas
			identificar_codigos
		end
	end

	def	setTablaRespuestas(tbl_respuestas)
		@tablarespuestas = tbl_respuestas
	end
	
	def setMarcas contenedor_marcashoja
		@marcas_hojas = contenedor_marcashoja
	end
	
	def identificar_marcas
		begin
			@qimages_reubicadas.clear
			
			@qimages.each_index do |indice| #ORIENTAMOS LA IMAGEN
				@qimages_reubicadas<<@mng.orientar_img(@qimages[indice],@marcas_hojas)
			end
			
			numero_pagina = -1
			
			@qimages_reubicadas.each_index do |indice|
				numero_pagina = @mng.identificar_paginacion(@qimages_reubicadas[indice],@marcas_hojas)
				
				if numero_pagina < 0
					@informe_errores << "* No ha sido posible detectar el número de página en el archivo "+(indice+1).to_s+"<br/>"
				elsif numero_pagina > @marcas_hojas.size
					@informe_errores << "* El número de página no se encuentra dentro del rango permitido en la configuración. Archivo "+(indice+1).to_s+"<br/>"
				else
					codigo_est = @mng.identificar_codigo(@qimages_reubicadas[indice], (@marcas_hojas[numero_pagina])[5])
						
					if codigo_est.gsub(%r[-], '').size == 7
						
						insertar_item_tabla @qimages_reubicadas[indice], numero_pagina, codigo_est, indice
					else
						@informe_errores << "* El código de estudiante no pudo ser leído correctamente en el archivo "+(indice+1).to_s+"<br/>"
					end
				end
			end
			
			@ui.tbl_estudiantes.setColumnHidden(@ui.tbl_estudiantes.columnCount-1,true)
			
			rescue => err
				Qt::MessageBox.critical(self, "Error identificando marcas","Ha ocurrido el siguiente error: <br/>"+err.message)
				@informe_errores <<(err.message+"<br/>")
		end
		
		@ui.te_inconsistencias.setText @informe_errores
	end
	
	def	configurar_tabla_estudiantes #ADICIONA LOS NUMEROS DE PREG COMO RESPUESTA
		@tablarespuestas.rowCount.times do |fila|
			#@ui.tbl_estudiantes.insertColumn(@ui.tbl_estudiantes.columnCount)
			@ui.tbl_estudiantes.setColumnCount(@ui.tbl_estudiantes.columnCount+1)
			qtwi = Qt::TableWidgetItem.new("Preg #"+@tablarespuestas.item(fila,1).text,Qt::TableWidgetItem::Type)
			@ui.tbl_estudiantes.setHorizontalHeaderItem(@ui.tbl_estudiantes.columnCount-1,qtwi)
		end
		
		#SE ADICIONA EL CAMPO PARA ALMACENAR LA RUTA DE LA IMAGEN CORRESPONDIENTE
		@ui.tbl_estudiantes.setColumnCount(@ui.tbl_estudiantes.columnCount+1)
		qtwi = Qt::TableWidgetItem.new("Ruta imagen",Qt::TableWidgetItem::Type)
		@ui.tbl_estudiantes.setHorizontalHeaderItem(@ui.tbl_estudiantes.columnCount-1,qtwi)
		
		@ui.tbl_estudiantes.repaint
	end
	
	def insertar_item_tabla img_hoja, numero_pagina, cod_est, indice
		calf_total = 0.0
		marcas_respuestas_pregunta = Array.new
		puntuacion_respuestas_pregunta = Array.new
		
		row = -1
		
		encontrado, fila_encontrado = estudiante_ingresado cod_est
		
		if encontrado
			row = fila_encontrado
			@ui.tbl_estudiantes.item(row,1).setText((@ui.tbl_estudiantes.item(row,1).text.to_i + 1).to_s)
		else
			row = @ui.tbl_estudiantes.rowCount()
			@ui.tbl_estudiantes.rowCount = row + 1
			item0 = Qt::TableWidgetItem.new(cod_est)
			item0.flags &= ~Qt::ItemIsEditable
			item0.setTextAlignment Qt::AlignCenter
					
			item1 = Qt::TableWidgetItem.new(1.to_s) #PAGINA
			item1.flags &= ~Qt::ItemIsEditable
			item1.setTextAlignment Qt::AlignCenter
				
			item2 = Qt::TableWidgetItem.new(0.to_s) #CALIFICACION
			item2.flags &= ~Qt::ItemIsEditable
			item2.setTextAlignment Qt::AlignCenter
			
			@ui.tbl_estudiantes.setItem(row, 0, item0)
			@ui.tbl_estudiantes.setItem(row, 1, item1)
			@ui.tbl_estudiantes.setItem(row, 2, item2)
			
			i = 3
			
			@tablarespuestas.rowCount.times do |fila| #CREACION DE SUBCAMPOS PARA LAS PREGUNTAS
				@ui.tbl_estudiantes.setItem(row, i, Qt::TableWidgetItem.new("0"))
				@ui.tbl_estudiantes.item(row,i).flags &= ~Qt::ItemIsEditable
				@ui.tbl_estudiantes.item(row,i).setTextAlignment Qt::AlignCenter
				
				i += 1
			end
		end

		i = 3
		
		@tablarespuestas.rowCount.times do |fila|
			resp_est = ""
			puntuacion_est = 0.0
			marcas_respuestas_pregunta.clear
			puntuacion_respuestas_pregunta.clear 
			
			if @tablarespuestas.item(fila,0).text.to_i == (numero_pagina+1)
				coordenadas = @tablarespuestas.item(fila,4).text.split("%")
						
				coordenadas.each do |cuadrado|
					puntos_coordenadas = cuadrado.split("#")
					ptl = Qt::PointF.new(puntos_coordenadas[0].to_f, puntos_coordenadas[1].to_f)
					pbr = Qt::PointF.new(puntos_coordenadas[2].to_f, puntos_coordenadas[3].to_f)
					marca = Qt::RectF.new(ptl, pbr)
					marcas_respuestas_pregunta<<marca
				end
				
				puntuacion_respuestas_pregunta = @tablarespuestas.item(fila,5).text.split("%")
				
				resp_est,puntuacion_est = @mng.evaluar_respuesta puntuacion_respuestas_pregunta, marcas_respuestas_pregunta,img_hoja, @tablarespuestas.item(fila,6).text
				
				@ui.tbl_estudiantes.item(row,i+fila).setText resp_est.to_s
				
				calf_total += puntuacion_est
			end
		end	
		
		@ui.tbl_estudiantes.item(row,2).setText calf_total.to_s
		@ui.tbl_estudiantes.setItem(row,(@ui.tbl_estudiantes.columnCount-1), Qt::TableWidgetItem.new(@carpeta_imgs + "/out"+(indice + 1).to_s+".pnm"))
		@ui.tbl_estudiantes.item(row,(@ui.tbl_estudiantes.columnCount-1)).flags &= ~Qt::ItemIsEditable
		
		@ui.tbl_estudiantes.repaint
	end
	
	def estudiante_ingresado cod_est
		encontrado = false
		fila_encontrado = -1
		@ui.tbl_estudiantes.rowCount.times do |fila|

			if @ui.tbl_estudiantes.item(fila,0).text == cod_est
				encontrado = true
				fila_encontrado = fila
				break
			end
		end
		
		return encontrado,fila_encontrado
	end
	
	def on_btn_explorar_clicked
		system("nautilus "+@carpeta_imgs)
	end
	
	def on_btn_exportar_clicked
		
		u = Managernube.new
		u.tipoExcel 2 #tipo archivo grupal para excel
		u.setTablaExportar @ui.tbl_estudiantes
		u.show
	end
	
	def on_tbl_estudiantes_cellDoubleClicked (qfila, qcolumna)
		@images_seleccionadas = Array.new
		@images_seleccionadas<<Qt::Image.new(@ui.tbl_estudiantes.item(qfila,(@ui.tbl_estudiantes.columnCount-1)).text)
		
		a = Dlg_ver_imagen.new self
		a.setQImage @images_seleccionadas
		a.setTablaPreguntas @tablarespuestas
		a.dibujar_marcas @marcas_hojas
		a.show
	end
	
	def identificar_codigos
		if @ui.tbl_estudiantes.rowCount > 0  and @lista_codigos
			@ui.tbl_estudiantes.rowCount.times do |fila|
				estaenlista = false
				
				File.open(@lista_codigos, 'r') do |f1|
					while linea = f1.gets
						if linea.chomp == @ui.tbl_estudiantes.item(fila,0).text
							estaenlista = true
							break;
						end
					end
				end
				
				if !estaenlista #si no se encuentra en la lista de codigos, pintar toda la fila dado el caso
					@ui.tbl_estudiantes.columnCount.times do |columna|
						@ui.tbl_estudiantes.item(fila,columna).setBackground(Qt::Brush.new(Qt::red))
						@ui.tbl_estudiantes.item(fila,columna).setForeground(Qt::Brush.new(Qt::white))
					end
				end
			end
		end
	end
end
