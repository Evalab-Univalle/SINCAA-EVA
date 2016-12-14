require 'Qt4'
require 'qtuitools'
require 'escena.rb'
require 'form/ui_form_configuracion_examen.rb'

class Frm_configuracion_examen < Qt::Widget

	attr_accessor :qimages
	attr_accessor :escena1
	attr_accessor :escena2
	attr_accessor :escena3
	attr_accessor :marca_tl1
	attr_accessor :marca_tl2
	attr_accessor :marca_tl3
	attr_accessor :marca_tr1
	attr_accessor :marca_tr2
	attr_accessor :marca_tr3
	attr_accessor :marca_bl1
	attr_accessor :marca_bl2
	attr_accessor :marca_bl3
	attr_accessor :marca_br1
	attr_accessor :marca_br2
	attr_accessor :marca_br3
	
	attr_accessor :areapaginacion1
	attr_accessor :areapaginacion2
	attr_accessor :areapaginacion3
	
	attr_accessor :countclickpaginacion1
	attr_accessor :countclickpaginacion2
	attr_accessor :countclickpaginacion3
	
	slots	'on_tbl_preguntas_clicked(QModelIndex)',
			'on_btn_arearespuesta_clicked()',
			'on_btn_guardar_clicked()',
			'on_btn_cambiarimg_clicked()',
			'on_tw_img_currentChanged(int)',
			'on_tw_marcas_img_currentChanged(int)',
			'on_toolBox_currentChanged(int)',
			'on_btn_tl_clicked()',
			'on_btn_tl_2_clicked()',
			'on_btn_tl_3_clicked()',
			'on_btn_tr_clicked()',
			'on_btn_tr_2_clicked()',
			'on_btn_tr_3_clicked()',
			'on_btn_bl_clicked()',
			'on_btn_bl_2_clicked()',
			'on_btn_bl_3_clicked()',
			'on_btn_br_clicked()',
			'on_btn_br_2_clicked()',
			'on_btn_br_3_clicked()',
			'on_btn_areapagina_clicked()',
			'on_btn_areapagina_2_clicked()',
			'on_btn_areapagina_3_clicked()',
			'on_lb_oktl_clicked()',
			'on_lb_oktl_2_clicked()',
			'on_lb_oktl_3_clicked()',
			'on_lb_oktr_clicked()',
			'on_lb_oktr_2_clicked()',
			'on_lb_oktr_3_clicked()',
			'on_lb_okbl_clicked()',
			'on_lb_okbl_2_clicked()',
			'on_lb_okbl_3_clicked()',
			'on_lb_okbr_clicked()',
			'on_lb_okbr_2_clicked()',
			'on_lb_okbr_3_clicked()',
			'on_lb_okareapagina_clicked()',
			'on_lb_okareapagina_2_clicked()',
			'on_lb_okareapagina_3_clicked()',
			'on_tw_codigoestudiante_currentChanged(int)',
			'on_btn_capturarcodigo_clicked()',
			'on_btn_capturarcodigo_2_clicked()',
			'on_btn_capturarcodigo_3_clicked()',
			'on_lb_infoareacod_clicked()',
			'on_lb_infoareacod_2_clicked()',
			'on_lb_infoareacod_3_clicked()',
			'on_le_nrespuestas_editingFinished()',
			'on_cb_respuestas_currentIndexChanged(int)',
			'on_btn_actualizar_respuesta_clicked()',
			'on_btn_insertar_clicked()',
			'on_btn_eliminar_clicked()',
			'on_btn_limpiar_clicked()',
			'on_le_respuesta_correcta_returnPressed()'
			
	
	def initialize(parent = nil)
	    super(parent)
	    
	    linuxCodec = Qt::TextCodec::codecForName("UTF-8")
		Qt::TextCodec::setCodecForTr(linuxCodec);
		Qt::TextCodec::setCodecForCStrings(linuxCodec);
		Qt::TextCodec::setCodecForLocale(linuxCodec);
		
		@ui = Ui_Frm_configuracion_examen.new
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
		
		@countclickpaginacion1 = 0
		@countclickpaginacion2 = 0
		@countclickpaginacion3 = 0

		#@ui.tbl_preguntas.setColumnHidden(2,true)
		#@ui.tbl_preguntas.setColumnHidden(3,true)
		#@ui.tbl_preguntas.setColumnHidden(4,true)
		#@ui.tbl_preguntas.setColumnHidden(5,true)
		#@ui.tbl_preguntas.setColumnHidden(6,true)
		
		@ui.le_npregunta.setValidator(Qt::IntValidator.new(@ui.le_npregunta))
		@ui.le_nrespuestas.setValidator(Qt::IntValidator.new(@ui.le_nrespuestas))
		@ui.le_npaginapregunta.setValidator(Qt::IntValidator.new(@ui.le_npaginapregunta))
		@ui.le_respuesta_correcta.setValidator(Qt::DoubleValidator.new(@ui.le_respuesta_correcta))
		
		@ui.tbl_preguntas.cursor = Qt::Cursor.new(Qt::OpenHandCursor)
		@ui.qgvImageView.cursor = Qt::Cursor.new(Qt::CrossCursor)
		@ui.qgvImageView2.cursor = Qt::Cursor.new(Qt::CrossCursor)
		@ui.qgvImageView3.cursor = Qt::Cursor.new(Qt::CrossCursor)
		
		@ui.tbl_preguntas.horizontalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);");
		@ui.tbl_preguntas.verticalHeader.setStyleSheet("font: 9pt 'Arial'; color: rgb(0, 0, 0);");
	end
	
	def es_numero?(i)
		true if Float(i) rescue false
	end
	
	def	setQImages(imgs) 
		@qimages = imgs
		if !@qimages.empty?
			abrir_imagen 
		end
	end
	
	def	abrir_imagen
	@ui.tw_img.setCurrentIndex 0
	@ui.tw_marcas_img.setCurrentIndex 0
	@ui.tw_codigoestudiante.setCurrentIndex 0
	
		if @qimages.size == 1
			@escena1 = Escena.new @qimages[0]
			@escena1.setTipoCuadro 1
			@ui.qgvImageView.setScene @escena1
			@ui.qgvImageView.centerOn(0.0,0.0)		
			@ui.tw_img.removeTab 1
			@ui.tw_img.removeTab 1
			@ui.tw_marcas_img.removeTab 1
			@ui.tw_marcas_img.removeTab 1
			@ui.tw_codigoestudiante.removeTab 1
			@ui.tw_codigoestudiante.removeTab 1
			#@qgvImageView.rotate 90.0
		elsif @qimages.size == 2
				@escena1 = Escena.new @qimages[0]
				@escena1.setTipoCuadro 1
				@ui.qgvImageView.setScene @escena1
				@ui.qgvImageView.centerOn(0.0,0.0)	
				
				@escena2 = Escena.new @qimages[1]
				@escena2.setTipoCuadro 1
				@ui.qgvImageView2.setScene @escena2
				@ui.qgvImageView2.centerOn(0.0,0.0)
				@ui.tw_img.removeTab 2
				@ui.tw_marcas_img.removeTab 2
				@ui.tw_codigoestudiante.removeTab 2
		elsif @qimages.size >= 3
				@escena1 = Escena.new @qimages[0]
				@escena1.setTipoCuadro 1
				@ui.qgvImageView.setScene @escena1
				@ui.qgvImageView.centerOn(0.0,0.0)	
				
				@escena2 = Escena.new @qimages[1]
				@escena2.setTipoCuadro 1
				@ui.qgvImageView2.setScene @escena2
				@ui.qgvImageView2.centerOn(0.0,0.0)
				
				@escena3 = Escena.new @qimages[2]
				@escena3.setTipoCuadro 1
				@ui.qgvImageView3.setScene @escena3
				@ui.qgvImageView3.centerOn(0.0,0.0)	
		end
    end
	
	def on_toolBox_currentChanged(tabseleccionado)
		if tabseleccionado==0
			if @qimages.size > 0
				@escena1.setTipoCuadro 1
			end
			if @qimages.size > 1
				@escena2.setTipoCuadro 1
			end
			if @qimages.size > 2
				@escena3.setTipoCuadro 1
			end
		elsif tabseleccionado==1
			if @qimages.size > 0
				@escena1.setTipoCuadro 0
			end
			if @qimages.size > 1
				@escena2.setTipoCuadro 0
			end
			if @qimages.size > 2
				@escena3.setTipoCuadro 0
			end
		elsif tabseleccionado==2
			if @qimages.size > 0
				@escena1.setTipoCuadro 2
			end
			if @qimages.size > 1
				@escena2.setTipoCuadro 2
			end
			if @qimages.size > 2
				@escena3.setTipoCuadro 2
			end
		end
	end
	
	#PARAMETROS BASICOS
	
	def on_btn_cambiarimg_clicked()
		u = Dlg_importar_imagen.new
	    
		if(u.result == Qt::Dialog::Accepted)
			@qimage = u.archivo_qimage
	
			if !@qimage.nil?
				
				if @ui.tw_img.currentIndex == 0
					@escena1 = Escena.new @qimage
					@escena1.setTipoCuadro 1
					@ui.qgvImageView.setScene @escena1
					@ui.qgvImageView.centerOn(0.0,0.0)	
					@qimages[0] = @qimage
				elsif @ui.tw_img.currentIndex == 1
					@escena2 = Escena.new @qimage
					@escena2.setTipoCuadro 1
					@ui.qgvImageView2.setScene @escena2
					@ui.qgvImageView2.centerOn(0.0,0.0)
					@qimages[1] = @qimage
				elsif @ui.tw_img.currentIndex == 2
					@escena3 = Escena.new @qimage
					@escena3.setTipoCuadro 1
					@ui.qgvImageView3.setScene @escena3
					@ui.qgvImageView3.centerOn(0.0,0.0)	
					@qimages[2] = @qimage
				end
				@ui.pte_advertencia.setPlainText "Advertencia: Si cambiaste la imagen del examen y has tomado patrones en las preguntas, puede que estos no coincidan. Por favor retomar los datos. "
				limpiar_marcas
			end

		end
	end
	
	def	on_tw_img_currentChanged(tabseleccionado)
		@ui.tw_marcas_img.setCurrentIndex tabseleccionado
		@ui.tw_codigoestudiante.setCurrentIndex tabseleccionado
		@ui.le_npaginapregunta.setText((tabseleccionado+1).to_s)
	end
	
	def on_tw_marcas_img_currentChanged(tabseleccionado)
		@ui.tw_img.setCurrentIndex tabseleccionado
		@ui.tw_codigoestudiante.setCurrentIndex tabseleccionado
		@ui.le_npaginapregunta.setText((tabseleccionado+1).to_s)
	end
	
	def on_btn_tl_clicked()
		@marca_tl1 = @escena1.puntos_seleccionados_marca
		
		if @marca_tl1.width == 0 or @marca_tl1.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktl.setText "OK"
		end
	end
	
	def on_btn_tr_clicked()
		@marca_tr1 = @escena1.puntos_seleccionados_marca
		
		if @marca_tr1.width == 0 or @marca_tr1.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktr.setText "OK"
		end
	end
	
	def on_btn_bl_clicked()
		@marca_bl1 = @escena1.puntos_seleccionados_marca
		
		if @marca_bl1.width == 0 or @marca_bl1.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbl.setText "OK"
		end
	end
	
	def on_btn_br_clicked()
		@marca_br1 = @escena1.puntos_seleccionados_marca

		if @marca_br1.width == 0 or @marca_br1.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbr.setText "OK"
		end
	end
	
	def on_btn_areapagina_clicked()
		if @countclickpaginacion1 == 0
			@escena1.setTipoCuadro 0
			@countclickpaginacion1 += 1
			@ui.lb_okareapagina.setStyleSheet("color: rgb(255, 0, 0);")
		elsif @countclickpaginacion1 == 1
			@countclickpaginacion1 = 0
			@escena1.setTipoCuadro 1
			@ui.lb_okareapagina.setStyleSheet("color: rgb(0, 0, 255);")
			@ui.lb_okareapagina.setText "OK"
			
			@p1,@p2 = @escena1.puntos_seleccionados
			@areapaginacion1 = Qt::RectF.new @p1,@p2
		end
	end
	
	def on_btn_tl_2_clicked()
		@marca_tl2 = @escena2.puntos_seleccionados_marca
		
		if @marca_tl2.width == 0 or @marca_tl2.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktl_2.setText "OK"
		end
	end
	
	def on_btn_tr_2_clicked()
		@marca_tr2 = @escena2.puntos_seleccionados_marca
		
		if @marca_tr2.width == 0 or @marca_tr2.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktr_2.setText "OK"
		end
	end
	
	def on_btn_bl_2_clicked()
		@marca_bl2 = @escena2.puntos_seleccionados_marca
		
		if @marca_bl2.width == 0 or @marca_bl2.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbl_2.setText "OK"
		end
	end
	
	def on_btn_br_2_clicked()
		@marca_br2 = @escena2.puntos_seleccionados_marca
		
		if @marca_br2.width == 0 or @marca_br2.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbr_2.setText "OK"
		end
	end
	
	def on_btn_areapagina_2_clicked()
		if @countclickpaginacion2 == 0
			@escena2.setTipoCuadro 0
			@countclickpaginacion2 += 1
			@ui.lb_okareapagina_2.setStyleSheet("color: rgb(255, 0, 0);")
		elsif @countclickpaginacion2 == 1
			@countclickpaginacion2 = 0
			@escena2.setTipoCuadro 1
			@ui.lb_okareapagina_2.setStyleSheet("color: rgb(0, 0, 255);")
			@ui.lb_okareapagina_2.setText "OK"
			
			@p1,@p2 = @escena2.puntos_seleccionados
			@areapaginacion2 = Qt::RectF.new @p1,@p2
		end
	end
	
	def on_btn_tl_3_clicked()
		@marca_tl3 = @escena3.puntos_seleccionados_marca
		
		if @marca_tl3.width == 0 or @marca_tl3.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktl_3.setText "OK"
		end
	end
	
	def on_btn_tr_3_clicked()
		@marca_tr3 = @escena3.puntos_seleccionados_marca
		
		if @marca_tr3.width == 0 or @marca_tr3.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_oktr_3.setText "OK"
		end
	end
	
	def on_btn_bl_3_clicked()
		@marca_bl3 = @escena3.puntos_seleccionados_marca
		
		if @marca_bl3.width == 0 or @marca_bl3.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbl_3.setText "OK"
		end
	end
	
	def on_btn_br_3_clicked()
		@marca_br3 = @escena3.puntos_seleccionados_marca
		
		if @marca_br3.width == 0 or @marca_br3.height == 0
			Qt::MessageBox.critical(self, "Error capturar marca","Debes capturar alguna marca válida")
		else
			@ui.lb_okbr_3.setText "OK"
		end
	end
	
	def on_btn_areapagina_3_clicked()
		if @countclickpaginacion3 == 0
			@escena3.setTipoCuadro 0
			@countclickpaginacion3 += 1
			@ui.lb_okareapagina_3.setStyleSheet("color: rgb(255, 0, 0);")
		elsif @countclickpaginacion3 == 1
			@countclickpaginacion3 = 0
			@escena3.setTipoCuadro 1
			@ui.lb_okareapagina_3.setStyleSheet("color: rgb(0, 0, 255);")
			@ui.lb_okareapagina_3.setText "OK"
			
			@p1,@p2 = @escena3.puntos_seleccionados
			@areapaginacion3 = Qt::RectF.new @p1,@p2
		end
	end
	
	
	def on_lb_oktl_clicked()
		if @ui.lb_oktl.text == 'OK'
			@escena1.dibujar_seleccion @marca_tl1.topLeft,@marca_tl1.bottomRight,1
		end
	end
	
	def on_lb_oktl_2_clicked()
		if @ui.lb_oktl_2.text == 'OK'
			@escena2.dibujar_seleccion @marca_tl2.topLeft,@marca_tl2.bottomRight,1
		end
	end
	
	def on_lb_oktl_3_clicked()
		if @ui.lb_oktl_3.text == 'OK'
			@escena3.dibujar_seleccion @marca_tl3.topLeft,@marca_tl3.bottomRight,1
		end
	end
	
	def on_lb_oktr_clicked()
		if @ui.lb_oktr.text == 'OK'
			@escena1.dibujar_seleccion @marca_tr1.topLeft,@marca_tr1.bottomRight,1
		end
	end
	
	def on_lb_oktr_2_clicked()
		if @ui.lb_oktr_2.text == 'OK'
			@escena2.dibujar_seleccion @marca_tr2.topLeft,@marca_tr2.bottomRight,1
		end
	end
	
	def on_lb_oktr_3_clicked()
		if @ui.lb_oktr_3.text == 'OK'
			@escena3.dibujar_seleccion @marca_tr3.topLeft,@marca_tr3.bottomRight,1
		end
	end
	
	def on_lb_okbl_clicked()
		if @ui.lb_okbl.text == 'OK'
			@escena1.dibujar_seleccion @marca_bl1.topLeft,@marca_bl1.bottomRight,1
		end
	end
	
	def on_lb_okbl_2_clicked()
		if @ui.lb_okbl_2.text == 'OK'
			@escena2.dibujar_seleccion @marca_bl2.topLeft,@marca_bl2.bottomRight,1
		end
	end
	
	def on_lb_okbl_3_clicked()
		if @ui.lb_okbl_3.text == 'OK'
			@escena3.dibujar_seleccion @marca_bl3.topLeft,@marca_bl3.bottomRight,1
		end
	end
	
	def on_lb_okbr_clicked()
		if @ui.lb_okbr.text == 'OK'
			@escena1.dibujar_seleccion @marca_br1.topLeft,@marca_br1.bottomRight,1
		end
	end
	
	def on_lb_okbr_2_clicked()
		if @ui.lb_okbr_2.text == 'OK'
			@escena2.dibujar_seleccion @marca_br2.topLeft,@marca_br2.bottomRight,1
		end
	end
	
	def on_lb_okbr_3_clicked()
		if @ui.lb_okbr_3.text == 'OK'
			@escena3.dibujar_seleccion @marca_br3.topLeft,@marca_br3.bottomRight,1
		end
	end
	
	def on_lb_okareapagina_clicked()
		if @ui.lb_okareapagina.text == 'OK'
			@escena1.dibujar_seleccion @areapaginacion1.topLeft,@areapaginacion1.bottomRight,1
		end
	end
	
	def on_lb_okareapagina_2_clicked()
		if @ui.lb_okareapagina_2.text == 'OK'
			@escena2.dibujar_seleccion @areapaginacion2.topLeft,@areapaginacion2.bottomRight,1
		end
	end
	
	def on_lb_okareapagina_3_clicked()
		if @ui.lb_okareapagina_3.text == 'OK'
			@escena3.dibujar_seleccion @areapaginacion3.topLeft,@areapaginacion3.bottomRight,1
		end
	end
	
	def limpiar_marcas
		if @ui.tw_marcas_img.currentIndex == 0
			@marca_tl1 = Qt::RectF.new
			@ui.lb_oktl.setText "-"
			@marca_tr1 = Qt::RectF.new
			@ui.lb_oktr.setText "-"
			@marca_bl1 = Qt::RectF.new
			@ui.lb_okbl.setText "-"
			@marca_br1 = Qt::RectF.new
			@ui.lb_okbr.setText "-"
			@areapaginacion1 = Qt::RectF.new
			@ui.lb_okareapagina.setText "-"
		elsif @ui.tw_marcas_img.currentIndex == 1
			@marca_tl2 = Qt::RectF.new
			@ui.lb_oktl_2.setText "-"
			@marca_tr2 = Qt::RectF.new
			@ui.lb_oktr_2.setText "-"
			@marca_bl2 = Qt::RectF.new
			@ui.lb_okbl_2.setText "-"
			@marca_br2 = Qt::RectF.new
			@ui.lb_okbr_2.setText "-"
			@areapaginacion2 = Qt::RectF.new
			@ui.lb_okareapagina_2.setText "-"
		elsif @ui.tw_marcas_img.currentIndex == 2
			@marca_tl3 = Qt::RectF.new
			@ui.lb_oktl_3.setText "-"
			@marca_tr3 = Qt::RectF.new
			@ui.lb_oktr_3.setText "-"
			@marca_bl3 = Qt::RectF.new
			@ui.lb_okbl_3.setText "-"
			@marca_br3 = Qt::RectF.new
			@ui.lb_okbr_3.setText "-"
			@areapaginacion3 = Qt::RectF.new
			@ui.lb_okareapagina_3.setText "-"
		end
	end
	
	#CONFIGURACION ESTUDIANTES
	
	def on_tw_codigoestudiante_currentChanged(tabseleccionado)
		@ui.tw_marcas_img.setCurrentIndex tabseleccionado
		@ui.tw_img.setCurrentIndex tabseleccionado
		@ui.le_npaginapregunta.setText((tabseleccionado+1).to_s)
	end
	
	def	on_btn_capturarcodigo_clicked()
		@p1,@p2 = @escena1.puntos_seleccionados
		@areacodigoest1 = Qt::RectF.new @p1,@p2
			
		@ui.lb_puntoinicio.setText(@areacodigoest1.topLeft.x.to_s+ " _ "+@areacodigoest1.topLeft.y.to_s)
		@ui.lb_puntofin.setText(@areacodigoest1.bottomRight.x.to_s+ " _ "+@areacodigoest1.bottomRight.y.to_s)
    end
    
    def	on_btn_capturarcodigo_2_clicked()
		@p1,@p2 = @escena2.puntos_seleccionados
		@areacodigoest2 = Qt::RectF.new @p1,@p2
			
		@ui.lb_puntoinicio_2.setText(@areacodigoest2.topLeft.x.to_s+ " _ "+@areacodigoest2.topLeft.y.to_s)
		@ui.lb_puntofin_2.setText(@areacodigoest2.bottomRight.x.to_s+ " _ "+@areacodigoest2.bottomRight.y.to_s)
    end
    
    def	on_btn_capturarcodigo_3_clicked()
		@p1,@p2 = @escena3.puntos_seleccionados
		@areacodigoest3 = Qt::RectF.new @p1,@p2
			
		@ui.lb_puntoinicio_3.setText(@areacodigoest3.topLeft.x.to_s+ " _ "+@areacodigoest3.topLeft.y.to_s)
		@ui.lb_puntofin_3.setText(@areacodigoest3.bottomRight.x.to_s+ " _ "+@areacodigoest3.bottomRight.y.to_s)
    end
	
	def on_lb_infoareacod_clicked()
		@escena1.dibujar_seleccion @areacodigoest1.topLeft,@areacodigoest1.bottomRight,1
	end
	
	def on_lb_infoareacod_2_clicked()
		@escena2.dibujar_seleccion @areacodigoest2.topLeft,@areacodigoest2.bottomRight,1
	end
	
	def on_lb_infoareacod_3_clicked()
		@escena3.dibujar_seleccion @areacodigoest3.topLeft,@areacodigoest3.bottomRight,1
	end
	
	#CONFIGURACION PREGUNTAS Y RESPUESTAS
	
	def on_le_nrespuestas_editingFinished()
		if es_numero?(@ui.le_nrespuestas.text.gsub(/\s+/, "")) and @ui.le_nrespuestas.text.to_i > 0 
			if @ui.le_nrespuestas.text.to_i != @respuestas_combo.size
				@ui.cb_respuestas.clear
				#@ui.cb_respuestas_correctas.clear
				
				@ui.le_nrespuestas.text.to_i.times do |item|
					@ui.cb_respuestas.addItem((item+1).to_s)
					#@ui.cb_respuestas_correctas.addItem((item+1).to_s)
				end
				@ui.cb_respuestas.setFocus
				@ui.cb_respuestas.setCurrentIndex 0
				@ui.btn_arearespuesta.setEnabled true
				
				#@ui.cb_respuestas_correctas.setEnabled true
				@ui.le_respuesta_correcta.setEnabled true
				@ui.btn_actualizar_respuesta.setEnabled true
				
				@respuestas_combo = Array.new @ui.le_nrespuestas.text.to_i
				@respuestas_combo_indiceimg = Array.new @ui.le_nrespuestas.text.to_i
				@respuestas_combo_puntaje = Array.new @ui.le_nrespuestas.text.to_i
				
				@respuestas_combo_puntaje.each_index do |indice|
					@respuestas_combo_puntaje[indice] = "0"
				end
				
				@respuestas_combo_indiceimg.each_index do |indice|
					@respuestas_combo_indiceimg[indice] = @ui.tw_img.currentIndex
				end
			end
		elsif es_numero?(@ui.le_nrespuestas.text.gsub(/\s+/, "")) and @ui.le_nrespuestas.text.to_i == 0 
			@ui.cb_respuestas.clear
			#@ui.cb_respuestas_correctas.clear
			@respuestas_combo.clear
			@respuestas_combo_indiceimg.clear
			@respuestas_combo_puntaje.clear
			@ui.btn_arearespuesta.setStyleSheet("color: rgb(255, 0, 0);");
			@ui.btn_arearespuesta.setText 'Capturar'
			@ui.btn_arearespuesta.setEnabled false
			
			#@ui.cb_respuestas_correctas.setEnabled false
			@ui.le_respuesta_correcta.setText "0"
			@ui.le_respuesta_correcta.setEnabled false
			@ui.btn_actualizar_respuesta.setEnabled false
			
		else 
			@ui.le_nrespuestas.setText "0"
			@ui.le_nrespuestas.setFocus
			@ui.le_nrespuestas.selectAll
		end
	end
	
	def on_cb_respuestas_currentIndexChanged(indexchanged)
	
	puts "indexchanged " + indexchanged.to_s
	puts "@ui.cb_respuestas.currentIndex " + @ui.cb_respuestas.currentIndex.to_s
	puts "@respuestas_combo.size " + @respuestas_combo.size.to_s
	puts "@respuestas_combo[indexchanged] " + @respuestas_combo[indexchanged].to_s
	
		if @ui.cb_respuestas.currentIndex != -1 and @respuestas_combo.size > 0
			if @respuestas_combo[indexchanged].nil?
				@ui.btn_arearespuesta.setStyleSheet("color: rgb(255, 0, 0);");
				@ui.btn_arearespuesta.setText 'Capturar'
				@ui.le_respuesta_correcta.setText "0"
			else
				a = @respuestas_combo[indexchanged]
				
				puts "@respuestas_combo_puntaje.size " + @respuestas_combo_puntaje.size.to_s
				
				if @respuestas_combo_puntaje.size > 0
					@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[indexchanged].to_s
				end
				
				if @respuestas_combo_indiceimg[indexchanged] == 0
					@ui.tw_img.setCurrentIndex 0
					@escena1.dibujar_seleccion a.topLeft, a.bottomRight, 1
					@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
					@ui.btn_arearespuesta.setText 'Capturada'
					#@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[indexchanged].to_s
				elsif @respuestas_combo_indiceimg[indexchanged] == 1
					@ui.tw_img.setCurrentIndex 1
					@escena2.dibujar_seleccion a.topLeft, a.bottomRight, 1
					@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
					@ui.btn_arearespuesta.setText 'Capturada'
					#@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[indexchanged].to_s
				elsif @respuestas_combo_indiceimg[indexchanged] == 2
					@ui.tw_img.setCurrentIndex 2
					@escena3.dibujar_seleccion a.topLeft, a.bottomRight, 1
					@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
					@ui.btn_arearespuesta.setText 'Capturada'
					#@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[indexchanged].to_s
				end
				
			end	
		end
	end
	
	def on_btn_arearespuesta_clicked()
		if @ui.tw_img.currentIndex == 0
			@respuestas_combo[@ui.cb_respuestas.currentIndex] = @escena1.puntos_seleccionados_respuesta
			@respuestas_combo_indiceimg[@ui.cb_respuestas.currentIndex] = 0
			@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
			@ui.btn_arearespuesta.setText 'Capturada'
		elsif @ui.tw_img.currentIndex == 1
			@respuestas_combo[@ui.cb_respuestas.currentIndex] = @escena2.puntos_seleccionados_respuesta
			@respuestas_combo_indiceimg[@ui.cb_respuestas.currentIndex] = 1
			@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
			@ui.btn_arearespuesta.setText 'Capturada'
		elsif @ui.tw_img.currentIndex == 2
			@respuestas_combo[@ui.cb_respuestas.currentIndex] = @escena3.puntos_seleccionados_respuesta
			@respuestas_combo_indiceimg[@ui.cb_respuestas.currentIndex] = 2
			@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
			@ui.btn_arearespuesta.setText 'Capturada'
		end	
    end
=begin	
	def on_cb_respuestas_correctas_currentIndexChanged(indexchanged)
		if @ui.cb_respuestas_correctas.currentIndex != -1 and @respuestas_combo_puntaje.size > 0
				@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[indexchanged].to_s
		end
	end
=end	
	def on_btn_actualizar_respuesta_clicked()
		if es_numero?(@ui.le_respuesta_correcta.text.gsub(/\s+/, ""))
			@respuestas_combo_puntaje[@ui.cb_respuestas.currentIndex] = @ui.le_respuesta_correcta.text
		else
			@respuestas_combo_puntaje[@ui.cb_respuestas.currentIndex] = "0"
		end
	end
	
	def buscar_pregunta_tabla numero_pregunta
		dato_encontrado = -1
		
		@ui.tbl_preguntas.rowCount().times do |fila|
			if numero_pregunta == @ui.tbl_preguntas.item(fila,1).text()
				dato_encontrado = 1
				break;
			end
		end		
		
		return dato_encontrado
	end
	
	def	validar_preguntas
		validacion = ''
		if @ui.le_npaginapregunta.text.gsub(/\s+/, "")==""
			@ui.le_npaginapregunta.setText @ui.tw_img.currentIndex.to_s
		end
		
		if @ui.le_npregunta.text.gsub(/\s+/, "")==""
			validacion << '<br/>-El número de pregunta no puede estar vacío'
		elsif buscar_pregunta_tabla(@ui.le_npregunta.text) == 1
			validacion << '<br/>-El número de pregunta ya fue ingresado'
		end

		if @ui.le_nrespuestas.text.gsub(/\s+/, "")=="" or @ui.le_nrespuestas.text.gsub(/\s+/, "")=="0"
			validacion << '<br/> -El número de respuestas no puede estar vacío ni ser cero'
		elsif @respuestas_combo.all? == false
			validacion << '<br/> -Faltan respuestas por capturar'
		elsif @respuestas_combo_indiceimg.any?{|indice| indice != @ui.tw_img.currentIndex} == true
			validacion << '<br/> -Algunas respuestas se encuentran capturadas en otra pestaña. Todas las respuestas deben quedar capturadas en la misma pestaña'
		elsif @respuestas_combo_puntaje.all?{|ptj| ptj == "0"} == true
			validacion << '<br/> -Al menos la puntuación de alguna de las respuestas correctas debe ser distinta a cero'
		end
		
		if validacion==''
			validacion = 'ok'
		end
			
		return validacion
    end

	def	on_btn_insertar_clicked()
    
		validacion = validar_preguntas
		if validacion=='ok'
		
			row = @ui.tbl_preguntas.rowCount()
			@ui.tbl_preguntas.rowCount = row + 1
		
			font_item = Qt::Font.new("Arial",10,1,false)
			item0 = Qt::TableWidgetItem.new(@ui.le_npaginapregunta.text)
			item0.flags &= ~Qt::ItemIsEditable   #esta linea trata de deshabilitar el flag que hace que el item sea editable Qt::ItemIsEditable
			item0.setFont(font_item)
			item0.setTextAlignment Qt::AlignCenter

			item1 = Qt::TableWidgetItem.new(@ui.le_npregunta.text)
			item1.flags &= ~Qt::ItemIsEditable
			item1.setFont(font_item)
			item1.setTextAlignment Qt::AlignCenter
			
			item2 = Qt::TableWidgetItem.new(@ui.le_nrespuestas.text.to_i.to_s)
			item2.flags &= ~Qt::ItemIsEditable
			item2.setFont(font_item)
			item2.setTextAlignment Qt::AlignCenter
			
			linea_indice_respuestas = ""
			
			@ui.cb_respuestas.count.times do |indice|
				linea_indice_respuestas<<(indice+1).to_s<<"%"
			end
			
			item3 = Qt::TableWidgetItem.new(linea_indice_respuestas)
			item3.flags &= ~Qt::ItemIsEditable

			linea_coordenadas_respuestas = ""
			
			@respuestas_combo.each do |item|
				linea_coordenadas_respuestas<<item.topLeft.x.to_s<<"#"<<item.topLeft.y.to_s<<"#"<<item.bottomRight.x.to_s<<"#"<<item.bottomRight.y.to_s<<"%"
			end
			
			item4 = Qt::TableWidgetItem.new(linea_coordenadas_respuestas)
			item4.flags &= ~Qt::ItemIsEditable
			
			linea_puntuacion_respuestas = ""
			
			@respuestas_combo_puntaje.each do |item|
				linea_puntuacion_respuestas<<item.to_s<<"%"
			end
			
			item5 = Qt::TableWidgetItem.new(linea_puntuacion_respuestas)
			item5.flags &= ~Qt::ItemIsEditable
			
			item6 = Qt::TableWidgetItem.new(@ui.cb_tipopregunta.currentIndex.to_s)
			item6.flags &= ~Qt::ItemIsEditable
			item6.setFont(font_item)
			item6.setTextAlignment Qt::AlignCenter
			
			@ui.tbl_preguntas.setItem(row, 0, item0)
			@ui.tbl_preguntas.setItem(row, 1, item1)
			@ui.tbl_preguntas.setItem(row, 2, item2)
			@ui.tbl_preguntas.setItem(row, 3, item3)
			@ui.tbl_preguntas.setItem(row, 4, item4)
			@ui.tbl_preguntas.setItem(row, 5, item5)
			@ui.tbl_preguntas.setItem(row, 6, item6)
			
			limpiar_campos(1)
		else
			Qt::MessageBox.critical(self, "Validar preguntas","Se presentaron los siguientes errores en la validación: "+validacion);
        end
    end
	
	def	on_btn_eliminar_clicked
		ret = Qt::MessageBox.warning(self, "Eliminar pregunta", "¿Desea eliminar esta pregunta?", Qt::MessageBox.Ok | Qt::MessageBox.Cancel);
		
		case ret
			when Qt::MessageBox.Ok:
				fila_actual = @ui.tbl_preguntas.currentRow
				@ui.tbl_preguntas.removeRow fila_actual
				limpiar_campos(2)
			else
				return
		end
    end
	
	def	on_btn_limpiar_clicked()
		limpiar_campos(0)
    end
    
    def on_le_respuesta_correcta_returnPressed()
		if es_numero?(@ui.le_respuesta_correcta.text.gsub(/\s+/, ""))
			@respuestas_combo_puntaje[@ui.cb_respuestas.currentIndex] = @ui.le_respuesta_correcta.text
		else
			@respuestas_combo_puntaje[@ui.cb_respuestas.currentIndex] = "0"
		end
    end
    
    def limpiar_campos(opcion)
		if opcion == 0
			@ui.le_npregunta.setText("")
		elsif opcion == 1
			@ui.le_npregunta.setText((@ui.le_npregunta.text.to_i + 1).to_s)
		end
		
		@ui.le_nrespuestas.setText("0")
		@ui.cb_respuestas.clear
		#@ui.cb_respuestas_correctas.clear
		@ui.cb_tipopregunta.setCurrentIndex 0
		@respuestas_combo.clear
		@respuestas_combo_indiceimg.clear
		@respuestas_combo_puntaje.clear
		@ui.btn_arearespuesta.setStyleSheet("color: rgb(255, 0, 0);");
		@ui.btn_arearespuesta.setText 'Capturar'
		@ui.btn_arearespuesta.setEnabled false
		#@ui.cb_respuestas_correctas.setEnabled false
		@ui.le_respuesta_correcta.setText "0"
		@ui.le_respuesta_correcta.setEnabled false
		@ui.btn_actualizar_respuesta.setEnabled false
    end
	
    def on_tbl_preguntas_clicked(modelIndex)
		fila_actual = @ui.tbl_preguntas.currentRow
		
		item0 = @ui.tbl_preguntas.item(fila_actual,0) 
		@ui.le_npaginapregunta.setText(item0.text)
		@ui.tw_img.setCurrentIndex(item0.text.to_i - 1)
		
		item1 = @ui.tbl_preguntas.item(fila_actual,1) 
		@ui.le_npregunta.setText(item1.text)
		
		item2 = @ui.tbl_preguntas.item(fila_actual,2) 
		@ui.le_nrespuestas.setText(item2.text)
		
		@ui.cb_respuestas.clear
		#@ui.cb_respuestas_correctas.clear
		@respuestas_combo.clear
		@respuestas_combo_indiceimg.clear
		@respuestas_combo_puntaje.clear
		@ui.btn_arearespuesta.setStyleSheet("color: rgb(0, 0, 255);");
		@ui.btn_arearespuesta.setText 'Capturada'
		@ui.btn_arearespuesta.setEnabled true
		#@ui.cb_respuestas_correctas.setEnabled true
		@ui.le_respuesta_correcta.setEnabled true
		@ui.btn_actualizar_respuesta.setEnabled true
		
		if @qimages.size == 1
			@escena1.limpiar_imagen
		elsif @qimages.size == 2
			@escena1.limpiar_imagen
			@escena2.limpiar_imagen
		elsif @qimages.size == 3
			@escena1.limpiar_imagen
			@escena2.limpiar_imagen
			@escena3.limpiar_imagen
		end
		
		item3 = @ui.tbl_preguntas.item(fila_actual,3) 
		
		item3.text.split("%").each do |div|
			@ui.cb_respuestas.addItem div.to_s
			#@ui.cb_respuestas_correctas.addItem div.to_s
			@respuestas_combo_indiceimg<<(item0.text.to_i - 1)
		end
		
		
		item4 = @ui.tbl_preguntas.item(fila_actual,4) 
		
		item4.text.split("%").each do |seccion|
			puntos = seccion.split("#")
			ptl = Qt::PointF.new(puntos[0].to_f, puntos[1].to_f)
			pbr = Qt::PointF.new(puntos[2].to_f, puntos[3].to_f)
			c = Qt::RectF.new(ptl, pbr)
			@respuestas_combo<<c
			
			if item0.text.to_i - 1 == 0
				@escena1.dibujar_seleccion ptl,pbr,0
			elsif item0.text.to_i - 1 == 1
				@escena2.dibujar_seleccion ptl,pbr,0
			elsif item0.text.to_i - 1 == 2
				@escena3.dibujar_seleccion ptl,pbr,0
			end
		end
		
		item5 = @ui.tbl_preguntas.item(fila_actual,5) 
		
		item5.text.split("%").each do |seccion|
			@respuestas_combo_puntaje<<seccion
		end
		
		@ui.le_respuesta_correcta.setText @respuestas_combo_puntaje[0].to_s
		#@ui.cb_respuestas_correctas.setCurrentIndex 0
		
		item6 = @ui.tbl_preguntas.item(fila_actual,6) 
		@ui.cb_tipopregunta.setCurrentIndex(item6.text.to_i)
    end
	
	def validar_marcas_bordes opcion
		validacion = ''
		
		if opcion == 1
			if @marca_tl1.width == 0 or @marca_tl1.height == 0
				validacion << '<br/>-La esquina superior izquierda en imagen #1 no tiene una marca válida'
			end
			if @marca_tr1.width == 0 or @marca_tr1.height == 0
				validacion << '<br/>-La esquina superior derecha en imagen #1 no tiene una marca válida'
			end
			if @marca_bl1.width == 0 and @marca_bl1.height == 0
				validacion << '<br/>-La esquina inferior izquierda en imagen #1 no tiene una marca válida'
			end
			if @marca_br1.width == 0 or @marca_br1.height == 0
				validacion << '<br/>-La esquina inferior derecha en imagen #1 no tiene una marca válida'
			end
			if @areapaginacion1.width == 0 or @areapaginacion1.height == 0
				validacion << '<br/>-La paginación en imagen #1 no tiene una marca válida'
			end
			if @areacodigoest1.width == 0 or @areapaginacion1.height == 0 
				validacion << '<br/>-El área del código de estudiante en imagen #1 no tiene una marca válida'
			end
		elsif opcion == 2
			if @marca_tl2.width == 0 or @marca_tl2.height == 0
				validacion << '<br/>-La esquina superior izquierda en imagen #2 no tiene una marca válida'
			end
			if @marca_tr2.width == 0 or @marca_tr2.height == 0
				validacion << '<br/>-La esquina superior derecha en imagen #2 no tiene una marca válida'
			end
			if @marca_bl2.width == 0 and @marca_bl2.height == 0
				validacion << '<br/>-La esquina inferior izquierda en imagen #2 no tiene una marca válida'
			end
			if @marca_br2.width == 0 or @marca_br2.height == 0
				validacion << '<br/>-La esquina inferior derecha en imagen #2 no tiene una marca válida'
			end
			if @areapaginacion2.width == 0 or @areapaginacion2.height == 0
				validacion << '<br/>-La paginación en imagen #2 no tiene una marca válida'
			end
			if @areacodigoest2.width == 0 or @areapaginacion2.height == 0 
				validacion << '<br/>-El área del código de estudiante en imagen #2 no tiene una marca válida'
			end
		elsif opcion == 3
			if @marca_tl3.width == 0 or @marca_tl3.height == 0
				validacion << '<br/>-La esquina superior izquierda en imagen #3 no tiene una marca válida'
			end
			if @marca_tr3.width == 0 or @marca_tr3.height == 0
				validacion << '<br/>-La esquina superior derecha en imagen #3 no tiene una marca válida'
			end
			if @marca_bl3.width == 0 and @marca_bl3.height == 0
				validacion << '<br/>-La esquina inferior izquierda en imagen #3 no tiene una marca válida'
			end
			if @marca_br3.width == 0 or @marca_br3.height == 0
				validacion << '<br/>-La esquina inferior derecha en imagen #3 no tiene una marca válida'
			end
			if @areapaginacion3.width == 0 or @areapaginacion3.height == 0
				validacion << '<br/>-La paginación en imagen #3 no tiene una marca válida'
			end
			if @areacodigoest3.width == 0 or @areapaginacion3.height == 0 
				validacion << '<br/>-El área del código de estudiante en imagen #3 no tiene una marca válida'
			end
		end
		
		return validacion
	end
	
	def	validar_general
		validacion = ''
		
		if @ui.pte_nombreexamen.plainText.gsub(/\s+/, "")==""
			validacion << '<br/>-El nombre del examen no puede estar vacío'
		end
		
		if @qimages.size > 0
			validacion<<validar_marcas_bordes(1)
		end
		if @qimages.size > 1
			validacion<<validar_marcas_bordes(2)
		end
		if @qimages.size > 2
			validacion<<validar_marcas_bordes(3)
		end
		
		if @ui.tbl_preguntas.rowCount() < 1
			validacion << '<br/> -Debes configurar al menos una pregunta'
		end
		
		return validacion
	end

	def on_btn_guardar_clicked()
		validacion = validar_general

		if validacion == ''
	
			@fileName = Qt::FileDialog.getSaveFileName(self, "Guardar configuracion", Qt::Dir.currentPath, "SICA confg (*.sicacfg)")
			if !@fileName.nil? 
				if !@fileName.empty?
					@filename2 = ""+@fileName
					if @qimages.size > 0
						nombre_archivo = @fileName + "1.bmp"
						@arch_img = Qt::File.new(nombre_archivo)
						if(@arch_img.open(Qt::IODevice::WriteOnly))
							@qimages[0].save(@arch_img, "BMP")
						end
					end
					if @qimages.size > 1
						nombre_archivo = @fileName + "2.bmp"
						@arch_img = Qt::File.new(nombre_archivo)
						if(@arch_img.open(Qt::IODevice::WriteOnly))
							@qimages[1].save(@arch_img, "BMP")
						end
					end
					if @qimages.size > 2
						nombre_archivo = @fileName + "3.bmp"
						@arch_img = Qt::File.new(nombre_archivo)
						if(@arch_img.open(Qt::IODevice::WriteOnly))
							@qimages[2].save(@arch_img, "BMP")
						end
					end
					
					File.open(@fileName<<'.sicacfg', 'w') do |ef|
					
					ef.puts @filename2	#nombre del archivo sin extension
					ef.puts @ui.pte_nombreexamen.toPlainText	#nombre del examen
					ef.puts @qimages.size.to_s	#cantidad de imagenes adjuntas a este examen
					
					if @qimages.size > 0
						marcas_esquinas = ""+@marca_tl1.topLeft.x.to_s+"#"+@marca_tl1.topLeft.y.to_s+"#"+@marca_tl1.bottomRight.x.to_s+"#"+@marca_tl1.bottomRight.y.to_s+"%"
						marcas_esquinas<<@marca_tr1.topLeft.x.to_s<<"#"<<@marca_tr1.topLeft.y.to_s<<"#"<<@marca_tr1.bottomRight.x.to_s<<"#"<<@marca_tr1.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_bl1.topLeft.x.to_s<<"#"<<@marca_bl1.topLeft.y.to_s<<"#"<<@marca_bl1.bottomRight.x.to_s<<"#"<<@marca_bl1.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_br1.topLeft.x.to_s<<"#"<<@marca_br1.topLeft.y.to_s<<"#"<<@marca_br1.bottomRight.x.to_s<<"#"<<@marca_br1.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areapaginacion1.topLeft.x.to_s<<"#"<<@areapaginacion1.topLeft.y.to_s<<"#"<<@areapaginacion1.bottomRight.x.to_s<<"#"<<@areapaginacion1.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areacodigoest1.topLeft.x.to_s<<"#"<<@areacodigoest1.topLeft.y.to_s<<"#"<<@areacodigoest1.bottomRight.x.to_s<<"#"<<@areacodigoest1.bottomRight.y.to_s
						ef.puts marcas_esquinas
					end
					if @qimages.size > 1
						marcas_esquinas = ""+@marca_tl2.topLeft.x.to_s+"#"+@marca_tl2.topLeft.y.to_s+"#"+@marca_tl2.bottomRight.x.to_s+"#"+@marca_tl2.bottomRight.y.to_s+"%"
						marcas_esquinas<<@marca_tr2.topLeft.x.to_s<<"#"<<@marca_tr2.topLeft.y.to_s<<"#"<<@marca_tr2.bottomRight.x.to_s<<"#"<<@marca_tr2.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_bl2.topLeft.x.to_s<<"#"<<@marca_bl2.topLeft.y.to_s<<"#"<<@marca_bl2.bottomRight.x.to_s<<"#"<<@marca_bl2.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_br2.topLeft.x.to_s<<"#"<<@marca_br2.topLeft.y.to_s<<"#"<<@marca_br2.bottomRight.x.to_s<<"#"<<@marca_br2.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areapaginacion2.topLeft.x.to_s<<"#"<<@areapaginacion2.topLeft.y.to_s<<"#"<<@areapaginacion2.bottomRight.x.to_s<<"#"<<@areapaginacion2.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areacodigoest2.topLeft.x.to_s<<"#"<<@areacodigoest2.topLeft.y.to_s<<"#"<<@areacodigoest2.bottomRight.x.to_s<<"#"<<@areacodigoest2.bottomRight.y.to_s
						ef.puts marcas_esquinas
					end
					if @qimages.size > 2
						marcas_esquinas = ""+@marca_tl3.topLeft.x.to_s+"#"+@marca_tl3.topLeft.y.to_s+"#"+@marca_tl3.bottomRight.x.to_s+"#"+@marca_tl3.bottomRight.y.to_s+"%"
						marcas_esquinas<<@marca_tr3.topLeft.x.to_s<<"#"<<@marca_tr3.topLeft.y.to_s<<"#"<<@marca_tr3.bottomRight.x.to_s<<"#"<<@marca_tr3.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_bl3.topLeft.x.to_s<<"#"<<@marca_bl3.topLeft.y.to_s<<"#"<<@marca_bl3.bottomRight.x.to_s<<"#"<<@marca_bl3.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@marca_br3.topLeft.x.to_s<<"#"<<@marca_br3.topLeft.y.to_s<<"#"<<@marca_br3.bottomRight.x.to_s<<"#"<<@marca_br3.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areapaginacion3.topLeft.x.to_s<<"#"<<@areapaginacion3.topLeft.y.to_s<<"#"<<@areapaginacion3.bottomRight.x.to_s<<"#"<<@areapaginacion3.bottomRight.y.to_s<<"%"
						marcas_esquinas<<@areacodigoest3.topLeft.x.to_s<<"#"<<@areacodigoest3.topLeft.y.to_s<<"#"<<@areacodigoest3.bottomRight.x.to_s<<"#"<<@areacodigoest3.bottomRight.y.to_s
						ef.puts marcas_esquinas
					end
					
					#almacena las preguntas
					@ui.tbl_preguntas.rowCount.times do |fila|
						pregunta_tabla = ""
							
						@ui.tbl_preguntas.columnCount.times do |columna|
							pregunta_tabla<<@ui.tbl_preguntas.item(fila,columna).text<<"*" 
						end
						
						ef.puts pregunta_tabla
					end
					
					@ui.btn_guardar.setEnabled false
				end
				else
					Qt::MessageBox.critical(self, "Error guardar configuracion","No se puede guardar archivo ");
					return;
				end
			end
		else
			Qt::MessageBox.critical(self, "Error guardar configuración","Se presentaron los siguientes errores: "+validacion);
		end	
	end
end
