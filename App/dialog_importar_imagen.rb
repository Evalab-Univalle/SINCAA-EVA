require 'Qt4'
require 'qtuitools'
require 'rubygems' 
require 'ffi'
require 'sane'
require 'form/ui_dialog_importar_imagen.rb'

class Dlg_importar_imagen < Qt::Dialog

attr_accessor :image

slots	'on_bt_search_clicked()',
		'on_bt_scan_clicked()',
		'on_rb_import_clicked()',
		'on_rb_scan_clicked()',
		'on_rb_scan_rango_clicked()',
		'on_rb_scan_todo_clicked()'
		
    		
	def initialize(parent = nil)
	    super(parent)
		@ui = Ui_Dialog_np.new
	    @ui.setupUi(self)
	    
	    @escaner_marcamodelo = ""
	    cargar_configuracion
	    
	    if (self.exec == Qt::Dialog::Accepted) 
			self.setResult 1
		else
			self.setResult 0
		end	
	end
	
	def on_bt_search_clicked()
	    @fileName = Qt::FileDialog.getOpenFileName(self, "Abrir imagen", "", "PNM image (*.pnm);; PNG image(*.png);; JPEG image(*.jpeg);; BMP image(*.bmp)")
         if @fileName
            @image = Qt::Image.new(@fileName);
             if (@image.isNull())
                 Qt::MessageBox.information(self, "Cargar Imagen","No puede cargar archivo "+@fileName);
                 return;
             else
				 @ui.le_path.setText(@fileName);
				 @ui.bt_scan.show
             end  
         end
	end
	
	def	on_bt_scan_clicked()
		buscar_dispositivo
		
		if !@scan.nil?
			parametersinline = ""
			@scan.each do |i|
				parametersinline += i + " "
			end

			namefile = "filescan_" + Time.now.strftime("%Y%m%d%H%M%S")
			comm = "scanimage " + parametersinline + " > " + namefile + ".pnm" 
			
			system(comm)
			#system("convert", namefile + ".pnm", namefile + ".png")
				
			@image = Qt::Image.new(namefile + ".pnm");
			 if @image.nil?
				 Qt::MessageBox.critical(self, "Importar imagen","No se pudo importar imagen")
				 system("rm "+namefile+".pnm")
				 #system("rm "+namefile+".png")
				 return;
			 elsif @image.width <= 0 or @image.height <= 0
				 Qt::MessageBox.critical(self, "Importar imagen","No se pudo importar imagen")
				 system("rm "+namefile+".pnm")
				 #system("rm "+namefile+".png")
				 return;
			 else
				self.accept
			 end
		else
			Qt::MessageBox.critical(self, "Error importar imagen","No se han podido cargar los parametros para escanear. Revisa que el escaner se encuentre conectado");
		end
	end
	
	def buscar_dispositivo()
        @scan = nil
			begin 
				Sane.open do |@sane|
					@device = @sane.devices.find do |@device|
						@escaner_marcamodelo == @device.vendor + " " +@device.model
					end
					if @device
						@device.open do
							while @scan.nil?
								@scan = ["--device", @device.name, "--mode", "'Black & White'", "--resolution", "150", "--Size", "'A4'", "-l", "216", "-t", "355"] #Se establecen parametros para escanear, solo se puede escoger dos formatos de imagen TIFF y PNM, por defecto tiene PNM si no se especifica
								sleep(0.2)
							end
						end
					else
						Qt::MessageBox.warning(self, "Dispositivo no encontrado","No se ha encontrado un dispositivo que coincida con el predeterminado. Por favor revise la configuración y el dispositivo por defecto.")
					end
				end
			rescue Sane::Error => exception	
				Qt::MessageBox.critical(self, "Error importar imagen",exception.to_s)
			end
    end
	
	def cargar_configuracion
		contador_lineas = 0
		begin
			File.open('parametros.cfg', 'r') do |f1|
				while linea = f1.gets
					if contador_lineas == 2
						@escaner_marcamodelo = linea.chop
					end
					contador_lineas += 1
				end
			end
		rescue => err
				Qt::MessageBox.critical(self, "Error cargando configuración",err.message)
		end
	end
	
	
	def on_rb_import_clicked()
		deshabilitar_componentes 'importar'
	end
	
	def on_rb_scan_clicked()
		deshabilitar_componentes 'escanear'
	end
	
	def on_rb_scan_todo_clicked()
		@ui.le_cantidad_hojas.setEnabled(false)
		@scan_todo = true
	end
	
	def on_rb_scan_rango_clicked()
		@ui.le_cantidad_hojas.setEnabled(true)
		@scan_todo = false
	end
	
	def deshabilitar_componentes(opciones)
		if opciones == 'importar'
			@ui.bt_scan.setEnabled(false)
			@ui.rb_scan_todo.setEnabled(false)
			@ui.rb_scan_rango.setEnabled(false)
			@ui.le_cantidad_hojas.setEnabled(false)
			@ui.le_path.setEnabled(true)
			@ui.bt_search.setEnabled(true)
		else 
			if opciones == 'escanear'
				@ui.le_path.setEnabled(false)
				@ui.bt_search.setEnabled(false)
				@ui.bt_scan.setEnabled(true)
				@ui.rb_scan_todo.setEnabled(true)
				@ui.rb_scan_rango.setEnabled(true)
			end
		end
    end
    
    def archivo_qimage()
		return	@image 
    end 
	
end
