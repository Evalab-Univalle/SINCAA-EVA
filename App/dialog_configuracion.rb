require 'Qt4'
require 'qtuitools'
require 'form/ui_dialog_configuracion.rb'
require 'escena_configuracion.rb'
require 'rubygems' 
require 'ffi'
require 'sane'

class Dlg_configuracion < Qt::Dialog

attr_accessor :array_infocfg
attr_accessor :escena1
attr_accessor :escena2

slots	'on_btn_reloadme_clicked()',
		'on_btn_reloadcr_clicked()',
		'on_btn_guardar_clicked()',
		'on_cbox_modeloescaner_currentIndexChanged(int)'
		
    		
	def initialize(parent)
	    super(parent)
	    
	    linuxCodec = Qt::TextCodec::codecForName("UTF-8")
		Qt::TextCodec::setCodecForTr(linuxCodec);
		Qt::TextCodec::setCodecForCStrings(linuxCodec);
		Qt::TextCodec::setCodecForLocale(linuxCodec);
	    
		@ui = Ui_Dlg_configuracion.new
	    @ui.setupUi(self)
	    
	    @ui.le_me1.setValidator(Qt::IntValidator.new(@ui.le_me1))
	    @ui.le_me2.setValidator(Qt::IntValidator.new(@ui.le_me2))
	    
	    @ui.le_cr1.setValidator(Qt::IntValidator.new(@ui.le_cr1))
	    @ui.le_cr2.setValidator(Qt::IntValidator.new(@ui.le_cr2))
	    
	    @escena1 = EscenaConfiguracion.new
	    @escena2 = EscenaConfiguracion.new
	    
	    abrir_configuracion
	    
	    if (self.exec == Qt::Dialog::Accepted) 
			self.setResult 1
		else
			self.setResult 0
		end	
	end
	
	def abrir_configuracion
		@array_infocfg = Array.new
	
		File.open('parametros.cfg', 'r') do |f1|
			while linea = f1.gets
				@array_infocfg<<linea
			end
		end
		
		if @array_infocfg.size < 3
			Qt::MessageBox.critical(self, "Error abriendo configuracion","El archivo de configuración se encuentra corrupto o incompleto.");
		else
			cargar_configuracion
		end
	end
	
	def	cargar_configuracion
		contador_lineas = 0
		
		@array_infocfg.each do |linea|
			if contador_lineas == 0
				conf_pregunta = linea.split("%")
				@ui.le_me1.setText conf_pregunta[0].to_s
				@ui.le_me2.setText conf_pregunta[1].to_s
				
				@escena1.dibujar_cuadro conf_pregunta[0].to_i, conf_pregunta[1].to_i
				@ui.gv_me.setScene @escena1
				@ui.gv_me.centerOn(0.0,0.0)	
			elsif contador_lineas == 1
				conf_pregunta = linea.split("%")
				@ui.le_cr1.setText conf_pregunta[0].to_s
				@ui.le_cr2.setText conf_pregunta[1].to_s
				
				@escena2.dibujar_cuadro conf_pregunta[0].to_i, conf_pregunta[1].to_i
				@ui.gv_cr.setScene @escena2
				@ui.gv_cr.centerOn(0.0,0.0)	
			elsif contador_lineas == 2
				@ui.le_mep.setText linea.to_s
			elsif contador_lineas == 3
				@ui.le_mail.setText linea.to_s
			elsif contador_lineas == 4
				@ui.le_passw.setText linea.to_s
			end
			
			contador_lineas += 1
		end
		#puts "buscando dispositivos"
		buscar_dispositivos
	end
	
	def buscar_dispositivos
        @scan = nil
        @ui.cbox_modeloescaner.clear
        
		begin 
			Sane.open do |@sane|
				@device = @sane.devices.find do |@device|
					@ui.cbox_modeloescaner.addItem(@device.vendor + " " +@device.model)
					#puts "Dispositivo encontrado :" + @device.model + " - " + @device.vendor
				end
			end

			rescue Sane::Error => exception	
				Qt::MessageBox.critical(self, "Error buscando dispositivos",exception.to_s)
		end
		
		if @ui.cbox_modeloescaner.count == 0
			@ui.cbox_modeloescaner.setEnabled false
		end
		
    end
	
	def on_cbox_modeloescaner_currentIndexChanged(indexchanged)
		if @ui.cbox_modeloescaner.currentIndex != -1
				@ui.le_mep.setText @ui.cbox_modeloescaner.currentText
		end
	end
	
	def	on_btn_reloadme_clicked()
		if @ui.le_me1.text.gsub(/\s+/, "") != "" and @ui.le_me2.text.gsub(/\s+/, "") != ""
			@escena1.dibujar_cuadro @ui.le_me1.text.to_i, @ui.le_me2.text.to_i
			@ui.gv_me.setScene @escena1
			@ui.gv_me.centerOn(0.0,0.0)	
		else
			Qt::MessageBox.critical(self, "Error parametros","No puede estar en blanco ningún parámetro");
		end
	end
	
	def	on_btn_reloadcr_clicked()
		if @ui.le_cr1.text.gsub(/\s+/, "") != "" and @ui.le_cr2.text.gsub(/\s+/, "") != ""
			@escena2.dibujar_cuadro @ui.le_cr1.text.to_i, @ui.le_cr2.text.to_i
			@ui.gv_cr.setScene @escena2
			@ui.gv_cr.centerOn(0.0,0.0)	
		else
			Qt::MessageBox.critical(self, "Error parametros","No puede estar en blanco ningún parámetro");
		end
	end
	
	def	on_btn_guardar_clicked()
		if @ui.le_me1.text.gsub(/\s+/, "") != "" and @ui.le_me2.text.gsub(/\s+/, "") != "" and @ui.le_cr1.text.gsub(/\s+/, "") != "" and @ui.le_cr2.text.gsub(/\s+/, "") != ""
	
			File.open('parametros.cfg', 'w') do |ef|
				ef.puts @ui.le_me1.text+"%"+@ui.le_me2.text
				ef.puts @ui.le_cr1.text+"%"+@ui.le_cr2.text
				ef.puts @ui.le_mep.text
				ef.puts @ui.le_mail.text
				ef.puts @ui.le_passw.text
			end
			
			self.close
		else
			Qt::MessageBox.critical(self, "Error parametros","No puede estar en blanco ningún parámetro");
		end	
	end
end
