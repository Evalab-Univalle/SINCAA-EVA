require 'Qt4'
require 'qtuitools'
require 'form/ui_dialog_ver_imagen.rb'
require 'escena.rb'

class Dlg_ver_imagen < Qt::Dialog

	attr_accessor :qimages
	attr_accessor :escena1
	attr_accessor :escena2
	attr_accessor :escena3
	attr_accessor :tbl_preguntas

	def initialize(parent)
	    super(parent)
	    
	    @qimages = Array.new
	    
		@ui = Ui_Dlg_ver_img.new
	    @ui.setupUi(self)
		
		br = Qt::Brush.new(Qt::white, Qt::SolidPattern)
	    @ui.qgv_img_1.setBackgroundBrush br
	end
  
    def setQImage imgs
		@qimages = imgs
		
		if !@qimages.nil?
			if @qimages.size == 1
				@escena1 = Escena.new @qimages[0]
				@ui.qgv_img_1.setScene @escena1
				@ui.qgv_img_1.centerOn(0.0,0.0)	
				@ui.tw_imgs.removeTab 1
				@ui.tw_imgs.removeTab 1
			elsif @qimages.size == 2
				@escena1 = Escena.new @qimages[0]
				@ui.qgv_img_1.setScene @escena1
				@ui.qgv_img_1.centerOn(0.0,0.0)	
				
				@escena2 = Escena.new @qimages[1]
				@ui.qgv_img_2.setScene @escena2
				@ui.qgv_img_2.centerOn(0.0,0.0)
				@ui.tw_imgs.removeTab 2
			elsif @qimages.size >= 3
				@escena1 = Escena.new @qimages[0]
				@ui.qgv_img_1.setScene @escena1
				@ui.qgv_img_1.centerOn(0.0,0.0)	
				
				@escena2 = Escena.new @qimages[1]
				@ui.qgv_img_2.setScene @escena2
				@ui.qgv_img_2.centerOn(0.0,0.0)
				
				@escena3 = Escena.new @qimages[2]
				@ui.qgv_img_3.setScene @escena3
				@ui.qgv_img_3.centerOn(0.0,0.0)	
			end
		end
			
    end
	
	def	dibujar_marcas	contenedor_marcas

		if contenedor_marcas.size > 0
			marcas_hoja_n = contenedor_marcas[0]
			@escena1.dibujar_rectangulo marcas_hoja_n[0],0
			@escena1.dibujar_rectangulo marcas_hoja_n[1],0
			@escena1.dibujar_rectangulo marcas_hoja_n[2],0
			@escena1.dibujar_rectangulo marcas_hoja_n[3],0
			@escena1.dibujar_rectangulo marcas_hoja_n[4],0
			@escena1.dibujar_rectangulo marcas_hoja_n[5],0
		end
		if contenedor_marcas.size > 1
			marcas_hoja_n = contenedor_marcas[1]
			@escena2.dibujar_rectangulo marcas_hoja_n[0],0
			@escena2.dibujar_rectangulo marcas_hoja_n[1],0
			@escena2.dibujar_rectangulo marcas_hoja_n[2],0
			@escena2.dibujar_rectangulo marcas_hoja_n[3],0
			@escena2.dibujar_rectangulo marcas_hoja_n[4],0
			@escena2.dibujar_rectangulo marcas_hoja_n[5],0
		end
		if contenedor_marcas.size > 2
			marcas_hoja_n = contenedor_marcas[2]
			@escena3.dibujar_rectangulo marcas_hoja_n[0],0
			@escena3.dibujar_rectangulo marcas_hoja_n[1],0
			@escena3.dibujar_rectangulo marcas_hoja_n[2],0
			@escena3.dibujar_rectangulo marcas_hoja_n[3],0
			@escena3.dibujar_rectangulo marcas_hoja_n[4],0
			@escena3.dibujar_rectangulo marcas_hoja_n[5],0
		end	
		
		if @qimages.size > 0
			@tbl_preguntas.rowCount.times do |fila|
				pregunta_tabla = ""
				
				coordenadas = @tbl_preguntas.item(fila,4).text.split("%")
					
				coordenadas.each do |cuadrado|
					puntos_coordenadas = cuadrado.split("#")
					ptl = Qt::PointF.new(puntos_coordenadas[0].to_f, puntos_coordenadas[1].to_f)
					pbr = Qt::PointF.new(puntos_coordenadas[2].to_f, puntos_coordenadas[3].to_f)
					marca = Qt::RectF.new(ptl, pbr)
					
					if @tbl_preguntas.item(fila,0).text == "1"	
						@escena1.dibujar_rectangulo marca,0
					elsif @tbl_preguntas.item(fila,0).text == "2"	
						@escena2.dibujar_rectangulo marca,0
					elsif @tbl_preguntas.item(fila,0).text == "3"	
						@escena3.dibujar_rectangulo marca,0	
					end		
				end
			end			
		end
	end

    def setTablaPreguntas tbl
		@tbl_preguntas = tbl
    end  
    
end
