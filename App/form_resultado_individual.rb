require 'Qt4'
require 'qtuitools'
require 'escena.rb'
require 'manager.rb'
require 'managernube.rb'
require 'dialog_ver_imagen.rb'
require 'form/ui_form_resultado_individual.rb'

class Frm_resultado_individual < Qt::Widget

	slots 'on_btn_verimg_clicked()',
		  'on_btn_exportar_clicked()',
		  'on_btn_infoerror_clicked()'
	
	attr_accessor :qimages
	attr_accessor :qimages_reubicadas
	attr_accessor :tablarespuestas
	attr_accessor :mng
	
	def initialize(parent = nil)
	    super(parent)
		@ui = Ui_Frm_resultado_individual.new
	    @ui.setupUi(self)
		
	    @mng = Manager.new
	    
	    @marcas_hojas = Array.new
	    @qimages = Array.new
	    @qimages_reubicadas = Array.new
	    
	    @informe_errores = ""
	    
	    @ui.tbl_respuestas_est.horizontalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
	    @ui.tbl_respuestas_est.verticalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
	end
	
	def on_btn_verimg_clicked()
		a = Dlg_ver_imagen.new self
		a.setQImage @qimages_reubicadas
		a.setTablaPreguntas @tablarespuestas
		a.dibujar_marcas @marcas_hojas
		a.show
	end
	
	def on_btn_exportar_clicked
		u = Managernube.new
		u.tipoExcel 1 #tipo archivo individual para excel
		u.setTablaExportar @ui.tbl_respuestas_est
		u.show
	end
	
	def	on_btn_infoerror_clicked
	
		if @informe_errores != ""
			Qt::MessageBox.warning(self, "Error identificando marcas","Se encontraron las siguientes inconsistencias: <br/>"+@informe_errores)
		else
			Qt::MessageBox.information(self, "Sin novedad","No se han encontrado inconsistencias")
		end
	end
	
	def	setQImage(imgs) 
		@qimages = imgs

		if !@qimages.nil?
			identificar_marcas
		end
	end
	
	def setMarcas contenedor_marcashoja
		@marcas_hojas = contenedor_marcashoja
	end
	
	def	setTablaRespuestas(tbl_respuestas)
		@tablarespuestas = tbl_respuestas
	end
	
	def identificar_marcas
		begin
			@qimages_reubicadas.clear
			
			@qimages.each_index do |indice| #ORIENTAMOS LA IMAGEN
				#@qimages_reubicadas<<@mng.identificar_marcas(@qimages[indice],@marcas_hojas[indice])
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
					
					if (@ui.le_codest.text == "" and codigo_est.all?{|caracter| caracter!="-"} == true ) or codigo_est == @ui.le_codest.text
						@ui.le_codest.setText codigo_est
						
						evaluar_hoja_vs_tabla @qimages_reubicadas[numero_pagina], numero_pagina
						
					elsif codigo_est != @ui.le_codest.text
						@informe_errores << "* Inconsistencia en la lectura de código de estudiante (no hay coincidencia)<br/>"
					else
						@informe_errores << "* El código de estudiante no pudo ser leído correctamente en el archivo "+(indice+1).to_s+"<br/>"
					end
				end
			end
			
			rescue => err
				Qt::MessageBox.critical(self, "Error identificando marcas","Ha ocurrido el siguiente error: <br/>"+err.message)
				@informe_errores <<(err.message+"<br/>")
		end
		
		on_btn_infoerror_clicked
	end
	
	def evaluar_hoja_vs_tabla img_hoja, numero_pagina
		calf_total = 0.0
		marcas_respuestas_pregunta = Array.new
		puntuacion_respuestas_pregunta = Array.new
		
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
				
				#puts "HOJA "+@tablarespuestas.item(fila,0).text + " PREGUNTA "+ @tablarespuestas.item(fila,1).text
				
				#REVISAR PUNTUACION
				resp_est,puntuacion_est = @mng.evaluar_respuesta puntuacion_respuestas_pregunta, marcas_respuestas_pregunta,img_hoja, @tablarespuestas.item(fila,6).text
				
				row = @ui.tbl_respuestas_est.rowCount()
				@ui.tbl_respuestas_est.rowCount = row + 1
				
				item0 = Qt::TableWidgetItem.new(@tablarespuestas.item(fila,0).text)
				item0.flags &= ~Qt::ItemIsEditable
				item0.setTextAlignment Qt::AlignCenter
					
				item1 = Qt::TableWidgetItem.new(@tablarespuestas.item(fila,1).text)
				item1.flags &= ~Qt::ItemIsEditable
				item1.setTextAlignment Qt::AlignCenter
					
				item2 = Qt::TableWidgetItem.new(resp_est)
				item2.flags &= ~Qt::ItemIsEditable
				item2.setTextAlignment Qt::AlignCenter
				
				item3 = Qt::TableWidgetItem.new(puntuacion_est.to_s)
				item3.flags &= ~Qt::ItemIsEditable
				item3.setTextAlignment Qt::AlignCenter

				@ui.tbl_respuestas_est.setItem(row, 0, item0)
				@ui.tbl_respuestas_est.setItem(row, 1, item1)
				@ui.tbl_respuestas_est.setItem(row, 2, item2)
				@ui.tbl_respuestas_est.setItem(row, 3, item3)
				
				calf_total += puntuacion_est
			end
		end	

		@ui.lb_calificacion.setText calf_total.to_s
	end
end
