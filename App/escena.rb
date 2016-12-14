require 'Qt4'

class Escena < Qt::GraphicsScene 

	attr_accessor :qimage
	attr_accessor :startPoint
	attr_accessor :endPoint
	attr_accessor :marcaRect
	attr_accessor :respuestaRect
	attr_accessor :selectedRect
	attr_accessor :tipo_cuadro
	attr_accessor :cuadro_marcas_ancho
	attr_accessor :cuadro_marcas_alto
	attr_accessor :cuadro_respuesta_ancho
	attr_accessor :cuadro_respuesta_alto
	
	def initialize(img) 
		super() 
		
		@marcaRect = Qt::RectF.new
		@respuestaRect = Qt::RectF.new
		@selectedRect = Qt::RectF.new
		
		@startPoint = Qt::PointF.new
		@endPoint = Qt::PointF.new
		#@qimage = img.scaled(1240,1753,Qt::IgnoreAspectRatio,Qt::FastTransformation).convertToFormat(Qt::Image::Format_Mono) #para escalarla y dejar un tamaño fijo y no tener problemas despues
		#@qimage = img.scaled(1240,1753,Qt::IgnoreAspectRatio,Qt::FastTransformation)
		@qimage = img.convertToFormat(Qt::Image::Format_Mono)
		#@qimage = img
		@tipo_cuadro = 0
		
		br = Qt::Brush.new(Qt::white, Qt::SolidPattern)
	    self.setBackgroundBrush br
	    
		abrir_imagen()
	end 
	
	def abrir_imagen() 
		clear()
		backgroundPixmap = Qt::Pixmap.new(Qt::Pixmap.fromImage(@qimage))		
		addPixmap(backgroundPixmap)
		#setSceneRect(0.0,0.0,@qimage.width(),@qimage.height())
		cargar_configuracion
	end 
	
	def cargar_configuracion
		contador_lineas = 0
	
		File.open('parametros.cfg', 'r') do |f1|
			while linea = f1.gets
				if contador_lineas == 0
					conf_cuadro = linea.split("%")
					@cuadro_marcas_ancho = conf_cuadro[0].to_i
					@cuadro_marcas_alto = conf_cuadro[1].to_i
				elsif contador_lineas == 1
					conf_cuadro = linea.split("%")
					@cuadro_respuesta_ancho = conf_cuadro[0].to_i
					@cuadro_respuesta_alto = conf_cuadro[1].to_i
				end
				contador_lineas += 1
			end
		end
	end

	def setTipoCuadro tipo
		@tipo_cuadro = tipo
	end
	
	def	puntos_seleccionados_marca
		return @marcaRect
	end
	
	def	puntos_seleccionados_respuesta
		return @respuestaRect
	end
	
	def puntos_seleccionados
		 punt_temp1 = @startPoint
		 punt_temp2 = @endPoint
		 
		if (@startPoint.x() > @endPoint.x()) and (@startPoint.y() < @endPoint.y())  #top-right to left-bottom
			ptx = @endPoint.x
			@endPoint.setX punt_temp1.x
			@startPoint.setX ptx
		elsif 	(@startPoint.x() > @endPoint.x()) and (@startPoint.y() > @endPoint.y()) #bottom-right to left-top
			@startPoint = punt_temp2
			@endPoint = punt_temp1
		elsif 	(@startPoint.x() < @endPoint.x()) and (@startPoint.y() > @endPoint.y()) #bottom-left to right-top
			pty = @startPoint.y
			@startPoint.setY punt_temp2.y
			@endPoint.setY pty
		end
		
		return @startPoint,@endPoint
	end
	
	def dibujar_seleccion punto_tl,punto_br,reset
		if reset == 1
			abrir_imagen()
		end
		
		@selectedRect.setTopLeft punto_tl
		@selectedRect.setBottomRight punto_br
		addRect(@selectedRect, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
	end
	
	def dibujar_rectangulo rectangulo_t,reset
		if reset == 1
			abrir_imagen()
		end

		addRect(rectangulo_t, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
	end
	
	
	def	limpiar_imagen
		clear
		abrir_imagen()
	end
	#EVENTOS MOUSE
	
	def mousePressEvent(e)
		if e.button() == Qt::LeftButton
			if @tipo_cuadro == 1 #marcas
				abrir_imagen()
				@marcaRect = Qt::RectF.new((e.scenePos().x - (@cuadro_marcas_ancho/2)) , (e.scenePos().y  - (@cuadro_marcas_alto/2)), @cuadro_marcas_ancho, @cuadro_marcas_alto)
				addRect(@marcaRect, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
				update();
			elsif @tipo_cuadro == 2 #para las respuestas
				abrir_imagen()
				@respuestaRect = Qt::RectF.new((e.scenePos().x - (@cuadro_respuesta_ancho/2)) , (e.scenePos().y  - (@cuadro_respuesta_alto/2)), @cuadro_respuesta_ancho, @cuadro_respuesta_alto)
				addRect(@respuestaRect, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
				update();
			else 
				abrir_imagen()
				@selectedRect.setTopLeft(e.scenePos())
				@startPoint = @endPoint = e.scenePos()
			end
		end
	end


	def mouseReleaseEvent(e)

		if(e.button() == Qt::LeftButton and @tipo_cuadro!=1 and @tipo_cuadro!=2)
			@endPoint = e.scenePos()
			@selectedRect.setBottomRight(e.scenePos())
			
			addRect(@selectedRect, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
			update();
		end
	end
	
	
	def mouseMoveEvent(e)
		if(e.button() == Qt::LeftButton and @tipo_cuadro!=1 and @tipo_cuadro!=2)
			@endPoint = e.scenePos();
		end
	end
end 
