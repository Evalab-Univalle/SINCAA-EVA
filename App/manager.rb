require 'Qt4'
require 'escena.rb'

class Manager 

	def	evaluar_cuadricula imagen_cuadricula
		porcentaje_marcado = 0
		
		p_negros=0	
		p_total= imagen_cuadricula.width * imagen_cuadricula.height
		
		c = Qt::Color.new
		
			imagen_cuadricula.height.times do |y|
				imagen_cuadricula.width .times do |x|

					c.setRgb(imagen_cuadricula.pixel x,y) 
					if c.value.to_s == "0"
						p_negros+=1
					end
				end
			end
			
		porcentaje_marcado = (p_negros*100/p_total)
		return porcentaje_marcado
	end

	def orientar_img qimage, all_marcas
		pctj_traslacion_temp = 0
		pctj_rotacion_temp = 0
		qimage_nueva = qimage
		
		all_marcas.each do |marcas|
			qimg_temp, pt, pr = identificar_marcas qimage, marcas
			
			if pt > 70 and pr > 70 and pt > pctj_traslacion_temp and pr > pctj_rotacion_temp
				pctj_traslacion_temp = pt
				pctj_rotacion_temp = pr
				qimage_nueva = qimg_temp
			end
			
		end
		
		return qimage_nueva
	end
	
	
	def identificar_marcas qimage, lista_marcas_hojan 
		mtl = lista_marcas_hojan [0]
		mtr = lista_marcas_hojan [1]
		
		qdx, qdy = 0.0, 0.0
		grados = 0.0
		
		imagenes_trasladadas = Array.new
		imagenes_rotadas = Array.new
		
		qimage_original = qimage.copy(0,0, qimage.width/4, qimage.height/4)
		#qimage_nueva = Qt::Image.new(qimage.width, qimage.height, Qt::Image::Format_RGB32)
		#qimage_nueva.fill(Qt::Color.new(Qt::white))
		
		qimage_nueva = qimage
		
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 0, 0, 10) #DERECHA EJE X
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 1, 0, -10) #IZQUIERDA EJE X
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 2, 0, 10) #ABAJO EJE Y
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 3, 0, -10) #ARRIBA EJE Y
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 4, 0, 7) #DIAGONAL X+,y+
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 5, 0, 7) #DIAGONAL X-,y+
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 6, 0, 7) #DIAGONAL X-,y-
		imagenes_trasladadas<<(trasladar_img qimage_original, mtl, 7, 0, 7) #DIAGONAL X+,y-
		
		porcentaje_detectado_traslado = 0
		
		imagenes_trasladadas.each do |resultado|
			
			if resultado[2] > porcentaje_detectado_traslado
				qdx, qdy = resultado[0],resultado[1]
				porcentaje_detectado_traslado = resultado[2]
			end
		end
		
		porcentaje_detectado_rotacion = 0
		
		qimage_original = qimage.copy(0,0, qimage.width, qimage.height/6)
		
		if porcentaje_detectado_traslado > 70
			grados,porcentaje_detectado_rotacion = rotar_img qimage_original, mtr, qdx, qdy
			
			if porcentaje_detectado_rotacion > 70
				qimage_nueva = Qt::Image.new(qimage.width, qimage.height, Qt::Image::Format_RGB32)
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(qdx, qdy)
				qtransf.rotate(grados)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
			end
		end

		return qimage_nueva, porcentaje_detectado_traslado, porcentaje_detectado_rotacion
	end
		
	def trasladar_img qimage, marca, opcion, p_inicial, p_final
		qimage_nueva = Qt::Image.new(qimage.width, qimage.height, Qt::Image::Format_RGB32)
		qimage_retorno = Qt::Image.new
		qdx,qdy = 0.0, 0.0
		porcentaje_detectado_traslacion = 0
		
		# OPCION = 0, MOVER DE PUNTO INICIAL AL PUNTO FINAL SOBRE EJE X POSITIVO
		if opcion == 0
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(r, p_inicial)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = r, p_inicial
				end
			end
		# OPCION = 1, MOVER DE PUNTO INICIAL AL PUNTO FINAL SOBRE EJE X NEGATIVO
		elsif opcion == 1
			(p_inicial).step(p_final, -1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(r, p_inicial)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = r, p_inicial
				end
			end
		# OPCION = 2, MOVER DE PUNTO INICIAL AL PUNTO FINAL SOBRE EJE Y POSITIVO
		elsif opcion == 2
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(p_inicial, r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = p_inicial, r
				end
			end
		# OPCION = 3, MOVER DE PUNTO INICIAL AL PUNTO FINAL SOBRE EJE Y NEGATIVO
		elsif opcion == 3
			(p_inicial).step(p_final, -1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(p_inicial, r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = p_inicial, r
				end
			end
		# OPCION = 4, MOVER DE PUNTO INICIAL AL PUNTO FINAL EN DIAGONAL X+, Y+
		elsif opcion == 4
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(r, r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = r, r
				end
			end
		# OPCION = 5, MOVER DE PUNTO INICIAL AL PUNTO FINAL EN DIAGONAL X-, Y+
		elsif opcion == 5
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(-r, r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = -r, r
				end
			end
		# OPCION = 6, MOVER DE PUNTO INICIAL AL PUNTO FINAL EN DIAGONAL X-, Y-
		elsif opcion == 6
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(-r, -r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = -r, -r
				end
			end
		# OPCION = 7, MOVER DE PUNTO INICIAL AL PUNTO FINAL EN DIAGONAL X+, Y-
		elsif opcion == 7
			(p_inicial).step(p_final, 1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new 
				qtransf.translate(r, -r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_traslacion
					porcentaje_detectado_traslacion = porcentaje_cuadricula
					qdx,qdy = r, -r
				end
			end
		end
		
		#return [qimage_nueva, qdx, qdy, porcentaje_detectado_traslacion]
		return [qdx, qdy, porcentaje_detectado_traslacion]
	end

	def rotar_img qimage, marca, pdx, pdy
		qimage_nueva = Qt::Image.new(qimage.width, qimage.height, Qt::Image::Format_RGB32)
		qimage_retorno = Qt::Image.new
		grados_temp = -4.0
		porcentaje_detectado_rotacion = 0
				
		(-4.0).step(4.0, 0.1) do |r|
				qimage_nueva.fill(Qt::Color.new(Qt::white))
				qpt = Qt::Painter.new qimage_nueva
				qtransf = Qt::Transform.new
				qtransf.translate(pdx, pdy) 
				if r > -0.08 and r < 0.1
					r = 0
				end
				qtransf.rotate(r)
				qpt.setTransform qtransf
				qpt.drawImage(0,0,qimage)
				qpt.end #IMPORTANTE FINALIZAR PAINTER
				
				porcentaje_cuadricula = evaluar_cuadricula qimage_nueva.copy(marca.toRect)
				
				if porcentaje_cuadricula > porcentaje_detectado_rotacion
					porcentaje_detectado_rotacion = porcentaje_cuadricula
					grados_temp = r
					#puts "GRADOS: "+r.to_s + " PORCENTAJE %"+porcentaje_detectado_rotacion.to_s
					#qimage_retorno = qimage_nueva
				end
			end

		return grados_temp, porcentaje_detectado_rotacion
	end
	
	def identificar_paginacion qimage, marca_paginacion
		
		pagina_identificada = -1
		porc_detectado = 0
		
		marca_paginacion.each_index do |indice_marcas|
			pag_temp = -1
			pctj_temp = 0
			
			@qimage_pagina = qimage.copy((marca_paginacion[indice_marcas])[4].toRect)
			
			3.times do |npagina|
			
				punto_x_tl =  0   
				punto_y_tl =  ((@qimage_pagina.height/3)*npagina).to_i
					
				punto_x_br =  @qimage_pagina.width   #punto x bottom right
				punto_y_br =  ((@qimage_pagina.height/3)*(npagina+1)).to_i   #punto y bottom right
					
				@startPoint_sub = Qt::Point.new punto_x_tl,punto_y_tl
				@endPoint_sub = Qt::Point.new punto_x_br,punto_y_br
					
				@selectedRect = Qt::Rect.new @startPoint_sub, @endPoint_sub
				porcentaje_cuadricula = evaluar_cuadricula @qimage_pagina.copy @selectedRect 
				
				if porcentaje_cuadricula > pctj_temp and porcentaje_cuadricula > 70
					pctj_temp = porcentaje_cuadricula
					pag_temp = npagina
				end
			end
			
			if pctj_temp > porc_detectado
				porc_detectado = pctj_temp
				pagina_identificada = pag_temp
			end
		end
		
		return pagina_identificada
	end
	
	def identificar_codigo qimage, mcodest
		@qimage_cod = qimage.copy(mcodest.toRect)
		
		codigo_est = ""
		
		p_total= @qimage_cod.width * @qimage_cod.height

			7.times do |ancho| #comienza en 0
				pctj_temp = 0
				digito_cod_temp = ""
				
				10.times do |alto|
					
					punto_x_tl =  ((@qimage_cod.width/7)*ancho).to_i   #punto x top left
					punto_y_tl =  ((@qimage_cod.height/10)*alto).to_i   #punto y top left
					
					punto_x_br =  ((@qimage_cod.width/7)*(ancho+1)).to_i   #punto x bottom right
					punto_y_br =  ((@qimage_cod.height/10)*(alto+1)).to_i   #punto y bottom right
					
					@startPoint_sub = Qt::Point.new punto_x_tl,punto_y_tl
					@endPoint_sub = Qt::Point.new punto_x_br,punto_y_br
					
					@selectedRect = Qt::Rect.new @startPoint_sub, @endPoint_sub
					porcentaje_cuadricula = evaluar_cuadricula @qimage_cod.copy @selectedRect 
					
					if porcentaje_cuadricula > pctj_temp
						pctj_temp = porcentaje_cuadricula
						digito_cod_temp = alto.to_s
					end
				end
				
				
				if pctj_temp > 40
					codigo_est<<digito_cod_temp
				else
					codigo_est<<"-"
					digito_cod_temp = ""
				end
			end

		return codigo_est
	end

	def evaluar_respuesta puntuacion_respuestas_pregunta,marcas_respuestas_pregunta, qimage, tipo_pregunta
		
		pctj_temp = 0
		resp_temp = "0"
		puntuacion = 0.0
		contador_respuesta_temp = 0
		
		marcas_respuestas_pregunta.each do |marca_respuesta|
			@qimage_resp = qimage.copy(marca_respuesta.toRect)
			
			porcentaje_cuadricula = evaluar_cuadricula @qimage_resp
			#puts contador_respuesta_temp.to_s + " - %"+porcentaje_cuadricula.to_s
			
			if porcentaje_cuadricula > pctj_temp and porcentaje_cuadricula > 55 # si la respuesta fue marcada
					pctj_temp = porcentaje_cuadricula
					resp_temp = (contador_respuesta_temp+1).to_s
					if tipo_pregunta == "1" #si es de tipo multiple
						puntuacion += puntuacion_respuestas_pregunta[contador_respuesta_temp].to_f
					else
						puntuacion = puntuacion_respuestas_pregunta[contador_respuesta_temp].to_f
					end
			end
			
			contador_respuesta_temp += 1
		end

		if pctj_temp < 55
				resp_temp = "0"
				puntuacion = 0.0
		end
		
		return resp_temp, puntuacion
	end
end
