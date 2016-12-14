require 'Qt4'
require "rubygems"
require "google_drive"
require "gmail"
require 'spreadsheet'
require 'form/ui_dialog_exportar_archivo.rb'

class Managernube < Qt::Dialog
	
	attr_accessor :user
	attr_accessor :passwd
	attr_accessor :tbl_exportar
	attr_accessor :tipo_archivo 

	slots	'on_btn_exportar_local_clicked()',
			'on_btn_exportar_google_clicked()'
	
	def initialize(parent = nil)
	    super(parent)
	    
	    linuxCodec = Qt::TextCodec::codecForName("UTF-8")
		Qt::TextCodec::setCodecForTr(linuxCodec);
		Qt::TextCodec::setCodecForCStrings(linuxCodec);
		Qt::TextCodec::setCodecForLocale(linuxCodec);
	    
	    @tipo_archivo = 0
	    
		@ui = Ui_Dlg_exportar_archivo.new
	    @ui.setupUi(self)
	    
	    cargar_configuracion
	end
	
	def setTablaExportar tbl_para_exportar
		@tbl_exportar = tbl_para_exportar
	end
	
	def tipoExcel tipo_arch
		@tipo_archivo = tipo_arch
	end
	
	def cargar_configuracion
		@array_infocfg = Array.new
	
		File.open('parametros.cfg', 'r') do |f1|
			while linea = f1.gets
				@array_infocfg<<linea
			end
		end
		
		if @array_infocfg.size < 3
			Qt::MessageBox.critical(self, "Error abriendo configuracion","El archivo de configuración se encuentra corrupto o incompleto.");
		else
			@user = @array_infocfg[3].to_s
			@passwd = @array_infocfg[4].to_s
		end
	end
	
	def	notificacion_correo ruta_archivo
		gmail = Gmail.new(@user.chop, @passwd.chop)
		msj_error = ""
		
		destinatario = @user.to_s
		cuerpo_msj = "Se ha subido satisfactoriamente nuevo archivo a tu Google Drive. Puedes verlo aqui "+ruta_archivo
		
		begin
			email = gmail.generate_message do
			  to destinatario.chop
			  subject "Se ha subido un nuevo archivo a tu Google Drive".chop
			  body cuerpo_msj
			end

			gmail.deliver(email)
			
			rescue => err
				msj_error<<err.message
		end	
		
		gmail.logout
		
		return msj_error
	end
	
	def	crear_excel nombre_archivo
		@book1 = Spreadsheet::Workbook.new
		@sheet1 = @book1.create_worksheet
		@sheet2 = @book1.create_worksheet :name => 'Hoja 2'
		@sheet1.name = 'Calificaciones SICA '+ Time.now.strftime("%Y%m%d")
		
		if @tipo_archivo == 2 #Calificaciones grupales
			(@tbl_exportar.columnCount - 1).times do |columna|
				@sheet1.row(0).push @tbl_exportar.horizontalHeaderItem(columna).text
			end
		else
			@tbl_exportar.columnCount.times do |columna|
				@sheet1.row(0).push @tbl_exportar.horizontalHeaderItem(columna).text
			end
		
		end
		@sheet1.row(0).height = 16
		#@sheet1.row(0).width = 100
		
		format_encabezado = Spreadsheet::Format.new :color => :blue,
                                   :weight => :bold,
                                   :size => 11
                                   
		@sheet1.row(0).default_format = format_encabezado

		indice = 1
		
		if @tipo_archivo == 1
			@tbl_exportar.rowCount.times do |fila|
				@sheet1.row(indice).push @tbl_exportar.item(fila,0).text, @tbl_exportar.item(fila,1).text, @tbl_exportar.item(fila,2).text, @tbl_exportar.item(fila,3).text
				indice += 1
			end
		elsif @tipo_archivo == 2
			@tbl_exportar.rowCount.times do |fila|
				(@tbl_exportar.columnCount - 1).times do |columna|
					@sheet1.row(indice).push @tbl_exportar.item(fila,columna).text
				end
				indice += 1
			end
		end
		@book1.write nombre_archivo
	end
	
	def on_btn_exportar_local_clicked
		@fileName = Qt::FileDialog.getSaveFileName(self, "Exportar archivo", Qt::Dir.currentPath, "Excel (*.xls)")
		if !@fileName.nil? 
			if !@fileName.empty?
				crear_excel @fileName<<".xls"
				self.close
			end
		end
	end
	
	def on_btn_exportar_google_clicked
		msj_error = ""
		@fileName = Qt::FileDialog.getSaveFileName(self, "Exportar archivo", Qt::Dir.currentPath, "Excel (*.xls)")
		if !@fileName.nil? 
			if !@fileName.empty?
				crear_excel @fileName<<".xls"
				
				@dividir_path = @fileName.split("/")
				@url_archivo = ""
				begin
					session = GoogleDrive.login(@user, @passwd)
					session.upload_from_file(@fileName, @dividir_path[@dividir_path.size - 1].to_s, :convert => true)
					archivos = session.files("title" => @dividir_path[@dividir_path.size - 1].to_s, "title-exact" => "true")
					@url_archivo = archivos[0].human_url
					
					rescue => err
						msj_error<<err.message
				end
				
				if msj_error != ""
					Qt::MessageBox.critical(self, "Error exportando a Google Drive","Ha ocurrido el siguiente error: <br/>"+msj_error)
				else
					msj_error = notificacion_correo @url_archivo
					if msj_error != ""
						Qt::MessageBox.critical(self, "Error enviando notificación e-mail","Ha ocurrido el siguiente error: <br/>"+msj_error)
					else
						Qt::MessageBox.information(self, "Operación exitosa","El archivo se ha exportado y cargado a la nube satisfactoriamente")
						self.close
					end
				end
			end
		end
	end
	
	def	subir_archivo_drive
		msj_error = ""
		@fileName = Qt::FileDialog.getOpenFileName(self, "Subir archivo", "", "Todos los archivos (*.*)")
        if @fileName
			@dividir_path = @fileName.split("/")
			url_archivo = ""
			begin
				session = GoogleDrive.login(@user, @passwd)
				session.upload_from_file(@fileName, @dividir_path[@dividir_path.size - 1].to_s, :convert => true)
				archivos = session.files("title" => @dividir_path[@dividir_path.size - 1].to_s, "title-exact" => "true")
				url_archivo = archivos[0].human_url	
			rescue => err
				msj_error<<err.message
			end
			
			if msj_error != ""
				Qt::MessageBox.critical(self, "Error exportando a Google Drive","Ha ocurrido el siguiente error: <br/>"+msj_error)
			else
				msj_error = notificacion_correo url_archivo
				if msj_error != ""
					Qt::MessageBox.critical(self, "Error enviando notificación e-mail","Ha ocurrido el siguiente error: <br/>"+msj_error)
				else
					Qt::MessageBox.information(self, "Operación exitosa","El archivo se ha exportado y cargado a la nube satisfactoriamente")
					self.close
				end
			end
        end
	end
end
