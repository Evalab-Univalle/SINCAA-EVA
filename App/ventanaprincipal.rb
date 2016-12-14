require 'Qt4'
require 'qtuitools'
require 'managernube.rb'
require 'dialog_importar_imagen.rb'
require 'dialog_configuracion.rb'
require 'form_configuracion_examen.rb'
require 'form_calificar_examen.rb'
require 'form/ui_ventanaprincipal.rb'
require 'form/img/qrc_fuente_imagenes.rb'
 
class VentanaPrincipal < Qt::MainWindow

	slots	'on_actionNuevo_proyecto_triggered()',
			'on_actionAbrir_proyecto_triggered()',
			'on_actionConfiguracion_triggered()',
			'on_actionSalir_triggered()',
			'on_actionSubirArchivo_triggered()'
    		
	def initialize(parent = nil)
	    super(parent)
	    
	    #para aceptar acentos en la aplicacion de linux
	    linuxCodec = Qt::TextCodec::codecForName("UTF-8")
		Qt::TextCodec::setCodecForTr(linuxCodec);
		Qt::TextCodec::setCodecForCStrings(linuxCodec);
		Qt::TextCodec::setCodecForLocale(linuxCodec);
	    
		@ui = Ui_VentanaPrincipal.new
	    @ui.setupUi(self)
	    
	    @ui.actionNuevo_proyecto.shortcut = Qt::KeySequence.new Qt::Object.tr("Ctrl+N")
	    @ui.actionAbrir_proyecto.shortcut = Qt::KeySequence.new Qt::Object.tr("Ctrl+A")
	    @ui.actionSalir.shortcut = Qt::KeySequence.new Qt::Object.tr("Ctrl+Q")
	end
	
	def on_actionNuevo_proyecto_triggered()
	    u = Dlg_abrir_imagenes.new
	    
		if(u.result == Qt::Dialog::Accepted)		
			@qimages = u.archivos_qimage
			if !@qimages.empty?
				if @qimages.size>3
					Qt::MessageBox.critical(self, "Error imagenes","No debes elegir más de 3 imagenes")
				else
					u = Frm_configuracion_examen.new
					u.setQImages @qimages
					self.setCentralWidget(u)
					self.resize(1024, 664)
				end
			end

		end
	end
	
	def on_actionAbrir_proyecto_triggered()
	    @fileName = Qt::FileDialog.getOpenFileName(self, "Abrir archivo de configuracion SICA", "", "SICA confg (*.sicacfg)")
         if @fileName
            u = Frm_calificar_examen.new
            u.setPathCfg @fileName
			self.setCentralWidget(u)
			self.resize(1024, 664)
         end
	end
	
	def on_actionConfiguracion_triggered()
		u = Dlg_configuracion.new self
	end
	
	def on_actionSubirArchivo_triggered()
		u = Managernube.new
		u.subir_archivo_drive
		u.close
	end
	
	def on_actionSalir_triggered()
		self.close
	end
end
#a = Qt::Application.new(ARGV)
#window = VentanaPrincipal.new
#window.show
#a.exec
