require 'Qt4'

class EscenaConfiguracion < Qt::GraphicsScene 
	
	def initialize() 
		super() 

	end 

	def dibujar_cuadro ancho,alto
		clear
		addRect(0,0,ancho, alto, Qt::Pen.new(Qt::Color.new("red")), Qt::Brush.new(Qt::transparent))
	end
	
end 
