require 'Qt4'
require 'qtuitools'
require 'escena.rb'
require 'form_resultado_individual.rb'
require 'form_resultado_grupal.rb'
require 'form/ui_form_calificar_examen.rb'
require 'dialog_abrir_imagenes.rb'

class Frm_calificar_examen < Qt::Widget

	attr_accessor :path_cfg
	attr_accessor :array_infocfg
	attr_accessor :u
	attr_accessor :qfilepath_exam
	attr_accessor :numero_imagenes
	attr_accessor :lista_codigos
	
	slots	'on_btn_caluno_clicked()',
			'on_btn_caltodos_clicked()',
			'on_btn_img_exm_1_clicked()',
			'on_btn_img_exm_2_clicked()',
			'on_btn_img_exm_3_clicked()',
			'on_btn_cargarlista_clicked()'
	
	def initialize(parent = nil)
	    super(parent)
		@ui = Ui_Frm_calificar_examen.new
	    @ui.setupUi(self)
	    
	    @areacodigoest1 = Qt::RectF.new
		@areacodigoest2 = Qt::RectF.new
		@areacodigoest3 = Qt::RectF.new
		
		@respuestas_combo = Array.new
		@respuestas_combo_indiceimg = Array.new
		@respuestas_combo_puntaje = Array.new
		
		@marca_tl1 = Qt::RectF.new
		@marca_tl2 = Qt::RectF.new
		@marca_tl3 = Qt::RectF.new
		@marca_tr1 = Qt::RectF.new
		@marca_tr2 = Qt::RectF.new
		@marca_tr3 = Qt::RectF.new
		@marca_bl1 = Qt::RectF.new
		@marca_bl2 = Qt::RectF.new
		@marca_bl3 = Qt::RectF.new
		@marca_br1 = Qt::RectF.new
		@marca_br2 = Qt::RectF.new
		@marca_br3 = Qt::RectF.new
		
		@areapaginacion1 = Qt::RectF.new
		@areapaginacion2 = Qt::RectF.new
		@areapaginacion3 = Qt::RectF.new
	    
	    @marcas_hojas = Array.new
	    
	    @array_infocfg = Array.new
	    
	    @u = Qt::Widget.new
	    @ui.vl_resultados.addWidget @u
	    
		@ui.tbl_preguntas_mostrar.horizontalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
		@ui.tbl_preguntas_mostrar.verticalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
	    
	    #PROPIEDAS ESTETICAS PARA LA TABLA OCULTA
	    @ui.tbl_preguntas.hide
	    #@ui.tbl_preguntas.setColumnHidden(3,true)
		#@ui.tbl_preguntas.setColumnHidden(4,true)
		#@ui.tbl_preguntas.setColumnHidden(5,true)
		#@ui.tbl_preguntas.horizontalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
		#@ui.tbl_preguntas.verticalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);")
		
		@ui.btn_img_exm_1.hide
		@ui.btn_img_exm_2.hide
		@ui.btn_img_exm_3.hide
		
		@lista_codigos = ""
		@ui.btn_caluno.setEnabled false
		@ui.btn_caltodos.setEnabled false
		
	end
	
	def	setPathCfg(nombre_archivo) 
		@path_cfg = nombre_archivo
		if !@path_cfg.nil?
			abrir_configuracion
		end
	end
	
	def abrir_configuracion
		@array_infocfg = Array.new
	
		File.open(@path_cfg, 'r') do |f1|
			while linea = f1.gets
				@array_infocfg<<linea
			end
		end
		
		if @array_infocfg.size < 4
			Qt::MessageBox.critical(self, "Error abriendo configuracion","El archivo se encuentra corrupto o incompleto.");
		else
			cargar_configuracion
		end
	end
	
	def	cargar_configuracion
		@marcas_hojas.clear
		@qfilepath_exam = @array_infocfg[0]
		@ui.pte_nombreexamen.setPlainText @array_infocfg[1]
		
		numero_imagenes = @array_infocfg[2].to_i
		
		indice = 3	
		if numero_imagenes > 0
			puntos = @array_infocfg[indice].split("%")
			
			puntostl = puntos[0].split("#")
			ptl = Qt::PointF.new(puntostl[0].to_f, puntostl[1].to_f)
			pbr = Qt::PointF.new(puntostl[2].to_f, puntostl[3].to_f)
			@marca_tl1 = Qt::RectF.new(ptl, pbr)
			
			puntostr = puntos[1].split("#")
			ptl = Qt::PointF.new(puntostr[0].to_f, puntostr[1].to_f)
			pbr = Qt::PointF.new(puntostr[2].to_f, puntostr[3].to_f)
			@marca_tr1 = Qt::RectF.new(ptl, pbr)
			
			puntosbl = puntos[2].split("#")
			ptl = Qt::PointF.new(puntosbl[0].to_f, puntosbl[1].to_f)
			pbr = Qt::PointF.new(puntosbl[2].to_f, puntosbl[3].to_f)
			@marca_bl1 = Qt::RectF.new(ptl, pbr)
			
			puntosbr = puntos[3].split("#")
			ptl = Qt::PointF.new(puntosbr[0].to_f, puntosbr[1].to_f)
			pbr = Qt::PointF.new(puntosbr[2].to_f, puntosbr[3].to_f)
			@marca_br1 = Qt::RectF.new(ptl, pbr)
			
			puntosareapaginacion = puntos[4].split("#")
			ptl = Qt::PointF.new(puntosareapaginacion[0].to_f, puntosareapaginacion[1].to_f)
			pbr = Qt::PointF.new(puntosareapaginacion[2].to_f, puntosareapaginacion[3].to_f)
			@areapaginacion1 = Qt::RectF.new(ptl, pbr)
			
			puntosareacodest = puntos[5].split("#")
			ptl = Qt::PointF.new(puntosareacodest[0].to_f, puntosareacodest[1].to_f)
			pbr = Qt::PointF.new(puntosareacodest[2].to_f, puntosareacodest[3].to_f)
			@areacodigoest1 = Qt::RectF.new(ptl, pbr)
			
			marcas_hoja = Array.new
			marcas_hoja<<@marca_tl1<<@marca_tr1<<@marca_bl1<<@marca_br1<<@areapaginacion1<<@areacodigoest1
			@marcas_hojas<<marcas_hoja
			
			image= Qt::Image.new(@array_infocfg[0].to_s.chop+"1.bmp").scaled(230,300,Qt::IgnoreAspectRatio,Qt::FastTransformation)
			@ui.btn_img_exm_1.show
			
			if image.width == 0 and image.height == 0
				@ui.btn_img_exm_1.setEnabled false
			end
			indice +=1
		end
				
		if numero_imagenes > 1
			puntos = @array_infocfg[indice].split("%")
			
			puntostl = puntos[0].split("#")
			ptl = Qt::PointF.new(puntostl[0].to_f, puntostl[1].to_f)
			pbr = Qt::PointF.new(puntostl[2].to_f, puntostl[3].to_f)
			@marca_tl2 = Qt::RectF.new(ptl, pbr)
			
			puntostr = puntos[1].split("#")
			ptl = Qt::PointF.new(puntostr[0].to_f, puntostr[1].to_f)
			pbr = Qt::PointF.new(puntostr[2].to_f, puntostr[3].to_f)
			@marca_tr2 = Qt::RectF.new(ptl, pbr)
			
			puntosbl = puntos[2].split("#")
			ptl = Qt::PointF.new(puntosbl[0].to_f, puntosbl[1].to_f)
			pbr = Qt::PointF.new(puntosbl[2].to_f, puntosbl[3].to_f)
			@marca_bl2 = Qt::RectF.new(ptl, pbr)
			
			puntosbr = puntos[3].split("#")
			ptl = Qt::PointF.new(puntosbr[0].to_f, puntosbr[1].to_f)
			pbr = Qt::PointF.new(puntosbr[2].to_f, puntosbr[3].to_f)
			@marca_br2 = Qt::RectF.new(ptl, pbr)
			
			puntosareapaginacion = puntos[4].split("#")
			ptl = Qt::PointF.new(puntosareapaginacion[0].to_f, puntosareapaginacion[1].to_f)
			pbr = Qt::PointF.new(puntosareapaginacion[2].to_f, puntosareapaginacion[3].to_f)
			@areapaginacion2 = Qt::RectF.new(ptl, pbr)
			
			puntosareacodest = puntos[5].split("#")
			ptl = Qt::PointF.new(puntosareacodest[0].to_f, puntosareacodest[1].to_f)
			pbr = Qt::PointF.new(puntosareacodest[2].to_f, puntosareacodest[3].to_f)
			@areacodigoest2 = Qt::RectF.new(ptl, pbr)
			
			marcas_hoja = Array.new
			marcas_hoja<<@marca_tl2<<@marca_tr2<<@marca_bl2<<@marca_br2<<@areapaginacion2<<@areacodigoest2
			@marcas_hojas<<marcas_hoja
			
			image= Qt::Image.new(@array_infocfg[0].to_s.chop+"2.bmp").scaled(230,300,Qt::IgnoreAspectRatio,Qt::FastTransformation)
			@ui.btn_img_exm_2.show
			
			if image.width == 0 and image.height == 0
				@ui.btn_img_exm_2.setEnabled false
			end
			
			indice +=1
		end
				
		if numero_imagenes > 2
			puntos = @array_infocfg[indice].split("%")
			
			puntostl = puntos[0].split("#")
			ptl = Qt::PointF.new(puntostl[0].to_f, puntostl[1].to_f)
			pbr = Qt::PointF.new(puntostl[2].to_f, puntostl[3].to_f)
			@marca_tl3 = Qt::RectF.new(ptl, pbr)
			
			puntostr = puntos[1].split("#")
			ptl = Qt::PointF.new(puntostr[0].to_f, puntostr[1].to_f)
			pbr = Qt::PointF.new(puntostr[2].to_f, puntostr[3].to_f)
			@marca_tr3 = Qt::RectF.new(ptl, pbr)
			
			puntosbl = puntos[2].split("#")
			ptl = Qt::PointF.new(puntosbl[0].to_f, puntosbl[1].to_f)
			pbr = Qt::PointF.new(puntosbl[2].to_f, puntosbl[3].to_f)
			@marca_bl3 = Qt::RectF.new(ptl, pbr)
			
			puntosbr = puntos[3].split("#")
			ptl = Qt::PointF.new(puntosbr[0].to_f, puntosbr[1].to_f)
			pbr = Qt::PointF.new(puntosbr[2].to_f, puntosbr[3].to_f)
			@marca_br3 = Qt::RectF.new(ptl, pbr)
			
			puntosareapaginacion = puntos[4].split("#")
			ptl = Qt::PointF.new(puntosareapaginacion[0].to_f, puntosareapaginacion[1].to_f)
			pbr = Qt::PointF.new(puntosareapaginacion[2].to_f, puntosareapaginacion[3].to_f)
			@areapaginacion3 = Qt::RectF.new(ptl, pbr)
			
			puntosareacodest = puntos[5].split("#")
			ptl = Qt::PointF.new(puntosareacodest[0].to_f, puntosareacodest[1].to_f)
			pbr = Qt::PointF.new(puntosareacodest[2].to_f, puntosareacodest[3].to_f)
			@areacodigoest3 = Qt::RectF.new(ptl, pbr)
			
			marcas_hoja = Array.new
			marcas_hoja<<@marca_tl3<<@marca_tr3<<@marca_bl3<<@marca_br3<<@areapaginacion3<<@areacodigoest3
			@marcas_hojas<<marcas_hoja
			
			image= Qt::Image.new(@array_infocfg[0].to_s.chop+"3.bmp").scaled(230,300,Qt::IgnoreAspectRatio,Qt::FastTransformation)
			@ui.btn_img_exm_3.show
			
			if image.width == 0 and image.height == 0
				@ui.btn_img_exm_3.setEnabled false
			end
			
			indice +=1
		end
		
		@array_infocfg[indice..(@array_infocfg.size-1)].each do |item_preg|
			conf_pregunta = item_preg.split("*")
			
			row = @ui.tbl_preguntas.rowCount()
			@ui.tbl_preguntas.rowCount = row + 1
			
			#SE CONFIGURAN LOS ITEMS PARA LA TABLA OCULTA LA CUAL SE UTILIZA PARA ANALISIS DE CALIFICACIONES Y DEMAS
			item0 = Qt::TableWidgetItem.new(conf_pregunta[0].to_s)
			item0.flags &= ~Qt::ItemIsEditable
			item0.setTextAlignment Qt::AlignCenter
				
			item1 = Qt::TableWidgetItem.new(conf_pregunta[1].to_s)
			item1.flags &= ~Qt::ItemIsEditable
			item1.setTextAlignment Qt::AlignCenter
				
			item2 = Qt::TableWidgetItem.new(conf_pregunta[2].to_s)
			item2.flags &= ~Qt::ItemIsEditable
			item2.setTextAlignment Qt::AlignCenter
			
			item3 = Qt::TableWidgetItem.new(conf_pregunta[3].to_s)
			item3.flags &= ~Qt::ItemIsEditable
			
			item4 = Qt::TableWidgetItem.new(conf_pregunta[4].to_s)
			item4.flags &= ~Qt::ItemIsEditable
			
			item5 = Qt::TableWidgetItem.new(conf_pregunta[5].to_s)
			item5.flags &= ~Qt::ItemIsEditable
			
			item6 = Qt::TableWidgetItem.new(conf_pregunta[6].to_s)
			item6.flags &= ~Qt::ItemIsEditable
			item6.setTextAlignment Qt::AlignCenter
				
			@ui.tbl_preguntas.setItem(row, 0, item0)
			@ui.tbl_preguntas.setItem(row, 1, item1)
			@ui.tbl_preguntas.setItem(row, 2, item2)
			@ui.tbl_preguntas.setItem(row, 3, item3)
			@ui.tbl_preguntas.setItem(row, 4, item4)
			@ui.tbl_preguntas.setItem(row, 5, item5)
			@ui.tbl_preguntas.setItem(row, 6, item6)
		end
			
		@array_infocfg[indice..(@array_infocfg.size-1)].each do |item_preg|
			conf_pregunta = item_preg.split("*")
			
			row = @ui.tbl_preguntas_mostrar.rowCount()
			@ui.tbl_preguntas_mostrar.rowCount = row + 1
			#SE CONFIGURAN LOS ITEMS PARA LA TABLA DE MUESTRA. SE ORGANIZAN UNOS CAMPOS
			
			item00 = Qt::TableWidgetItem.new(conf_pregunta[0].to_s)
			item00.flags &= ~Qt::ItemIsEditable
			item00.setTextAlignment Qt::AlignCenter
				
			item11 = Qt::TableWidgetItem.new(conf_pregunta[1].to_s)
			item11.flags &= ~Qt::ItemIsEditable
			item11.setTextAlignment Qt::AlignCenter
			
			item22 = Qt::TableWidgetItem.new(conf_pregunta[2].to_s)
			item22.flags &= ~Qt::ItemIsEditable
			item22.setTextAlignment Qt::AlignCenter
			
			var_temp = conf_pregunta[5].to_s
			var_temp = var_temp.gsub("%"," -- ") [0..-4]
			
			item55 = Qt::TableWidgetItem.new(var_temp)
			item55.flags &= ~Qt::ItemIsEditable
			
			var_temp = conf_pregunta[6].to_s
			
			if var_temp == "0"
				var_temp = "Unica"
			elsif var_temp == "1"
				var_temp = "Multiple"
			end
			item66 = Qt::TableWidgetItem.new(var_temp)
			item66.flags &= ~Qt::ItemIsEditable
			item66.setTextAlignment Qt::AlignCenter
			
			@ui.tbl_preguntas_mostrar.setItem(row, 0, item00)
			@ui.tbl_preguntas_mostrar.setItem(row, 1, item11)
			@ui.tbl_preguntas_mostrar.setItem(row, 2, item22)
			@ui.tbl_preguntas_mostrar.setItem(row, 3, item55)
			@ui.tbl_preguntas_mostrar.setItem(row, 4, item66)
		end
		
		@numero_imagenes = numero_imagenes
	end
	
	def on_btn_img_exm_1_clicked()
		system("eog "+@qfilepath_exam.chop+"1.bmp")
	end
	
	def on_btn_img_exm_2_clicked()
		system("eog "+@qfilepath_exam.chop+"2.bmp")
	end
	
	def on_btn_img_exm_3_clicked()
		system("eog "+@qfilepath_exam.chop+"3.bmp")
	end
	
	def on_btn_caluno_clicked()
		@a = Dlg_abrir_imagenes.new
	    
		if(@a.result == Qt::Dialog::Accepted)
			@qimages = @a.archivos_qimage
			
			if !@qimages.empty?
				if @qimages.size>@numero_imagenes or @qimages.size<@numero_imagenes
					Qt::MessageBox.critical(self, "Error imagenes","Esta configuración del examen solo acepta "+@numero_imagenes.to_s+" imagen(es)")
				else
					@ui.vl_resultados.removeWidget @u
					@u.hide
					@u = Frm_resultado_individual.new
					@u.setTablaRespuestas @ui.tbl_preguntas
					
					@u.setMarcas @marcas_hojas
					@u.setQImage @qimages
					@ui.vl_resultados.addWidget @u
				end
			end
		end
	end
	
	
	def on_btn_caltodos_clicked()
		@a = Dlg_abrir_imagenes.new
	    
		if(@a.result == Qt::Dialog::Accepted)		
			@qimages = @a.archivos_qimage
	
			if !@qimages.empty?
				@ui.vl_resultados.removeWidget @u
				@u.hide
				@u = Frm_resultado_grupal.new self, @a.carpeta_qimages, @lista_codigos
				@u.setTablaRespuestas @ui.tbl_preguntas
				@u.setMarcas @marcas_hojas
				@u.setQImages @qimages
				@ui.vl_resultados.addWidget @u
			end
		end
	end
	
	def on_btn_cargarlista_clicked()
		@lista_codigos = Qt::FileDialog.getOpenFileName(self, "Abrir imagen", "", "Archivo de texto (*.txt)")
		
		if @lista_codigos	
			@ui.btn_caluno.setEnabled true
			@ui.btn_caltodos.setEnabled true
		end
	end
end
