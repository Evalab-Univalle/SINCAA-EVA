=begin
** Form generated from reading ui file 'ventanaprincipal.ui'
**
** Created: Sun Feb 3 01:34:15 2013
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_VentanaPrincipal
    attr_reader :actionNuevo_proyecto
    attr_reader :actionAbrir_proyecto
    attr_reader :actionSalir
    attr_reader :actionConfiguracion
    attr_reader :actionSubirArchivo
    attr_reader :centralwidget
    attr_reader :graphicsView
    attr_reader :menubar
    attr_reader :menuArchivo
    attr_reader :menuHerramientas

    def setupUi(ventanaPrincipal)
    if ventanaPrincipal.objectName.nil?
        ventanaPrincipal.objectName = "ventanaPrincipal"
    end
    ventanaPrincipal.resize(462, 337)
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/sica-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    ventanaPrincipal.windowIcon = icon
    ventanaPrincipal.styleSheet = "QWidget#centralwidget {\n" \
"   \n" \
"	background-color: rgb(255, 255, 255);\n" \
" }\n" \
"\n" \
"/*QMainWindow#MainWindow{\n" \
"	background-color: rgba(240, 248, 255, 100);\n" \
"}*/\n" \
""
    @actionNuevo_proyecto = Qt::Action.new(ventanaPrincipal)
    @actionNuevo_proyecto.objectName = "actionNuevo_proyecto"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/new-file-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionNuevo_proyecto.icon = icon1
    @font = Qt::Font.new
    @font.family = "Arial"
    @actionNuevo_proyecto.font = @font
    @actionNuevo_proyecto.iconVisibleInMenu = true
    @actionAbrir_proyecto = Qt::Action.new(ventanaPrincipal)
    @actionAbrir_proyecto.objectName = "actionAbrir_proyecto"
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/controles/open-file-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionAbrir_proyecto.icon = icon2
    @actionAbrir_proyecto.font = @font
    @actionAbrir_proyecto.iconVisibleInMenu = true
    @actionSalir = Qt::Action.new(ventanaPrincipal)
    @actionSalir.objectName = "actionSalir"
    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/controles/shutdown-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionSalir.icon = icon3
    @actionSalir.font = @font
    @actionSalir.iconVisibleInMenu = true
    @actionConfiguracion = Qt::Action.new(ventanaPrincipal)
    @actionConfiguracion.objectName = "actionConfiguracion"
    icon4 = Qt::Icon.new
    icon4.addPixmap(Qt::Pixmap.new(":/controles/settings-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionConfiguracion.icon = icon4
    @actionConfiguracion.font = @font
    @actionConfiguracion.iconVisibleInMenu = true
    @actionSubirArchivo = Qt::Action.new(ventanaPrincipal)
    @actionSubirArchivo.objectName = "actionSubirArchivo"
    icon5 = Qt::Icon.new
    icon5.addPixmap(Qt::Pixmap.new(":/controles/upload-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @actionSubirArchivo.icon = icon5
    @actionSubirArchivo.font = @font
    @actionSubirArchivo.iconVisibleInMenu = true
    @centralwidget = Qt::Widget.new(ventanaPrincipal)
    @centralwidget.objectName = "centralwidget"
    @graphicsView = Qt::GraphicsView.new(@centralwidget)
    @graphicsView.objectName = "graphicsView"
    @graphicsView.geometry = Qt::Rect.new(-40, -30, 531, 341)
    @graphicsView.styleSheet = "background-image: url(:/controles/scan-bgimage.jpg);\n" \
"border: none;"
    ventanaPrincipal.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(ventanaPrincipal)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 462, 26)
    @menubar.font = @font
    @menuArchivo = Qt::Menu.new(@menubar)
    @menuArchivo.objectName = "menuArchivo"
    @menuHerramientas = Qt::Menu.new(@menubar)
    @menuHerramientas.objectName = "menuHerramientas"
    @menuHerramientas.enabled = true
    ventanaPrincipal.setMenuBar(@menubar)

    @menubar.addAction(@menuArchivo.menuAction())
    @menubar.addAction(@menuHerramientas.menuAction())
    @menuArchivo.addAction(@actionNuevo_proyecto)
    @menuArchivo.addAction(@actionAbrir_proyecto)
    @menuArchivo.addAction(@actionSalir)
    @menuHerramientas.addAction(@actionConfiguracion)
    @menuHerramientas.addAction(@actionSubirArchivo)

    retranslateUi(ventanaPrincipal)

    Qt::MetaObject.connectSlotsByName(ventanaPrincipal)
    end # setupUi

    def setup_ui(ventanaPrincipal)
        setupUi(ventanaPrincipal)
    end

    def retranslateUi(ventanaPrincipal)
    ventanaPrincipal.windowTitle = Qt::Application.translate("VentanaPrincipal", "SICA", nil, Qt::Application::UnicodeUTF8)
    @actionNuevo_proyecto.text = Qt::Application.translate("VentanaPrincipal", "Configurar examen", nil, Qt::Application::UnicodeUTF8)
    @actionAbrir_proyecto.text = Qt::Application.translate("VentanaPrincipal", "Calificar examen", nil, Qt::Application::UnicodeUTF8)
    @actionSalir.text = Qt::Application.translate("VentanaPrincipal", "Salir", nil, Qt::Application::UnicodeUTF8)
    @actionConfiguracion.text = Qt::Application.translate("VentanaPrincipal", "Configuraci\303\263n General", nil, Qt::Application::UnicodeUTF8)
    @actionSubirArchivo.text = Qt::Application.translate("VentanaPrincipal", "Subir archivo a Google Drive", nil, Qt::Application::UnicodeUTF8)
    @menuArchivo.title = Qt::Application.translate("VentanaPrincipal", "Examen", nil, Qt::Application::UnicodeUTF8)
    @menuHerramientas.title = Qt::Application.translate("VentanaPrincipal", "Herramientas", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(ventanaPrincipal)
        retranslateUi(ventanaPrincipal)
    end

end

module Ui
    class VentanaPrincipal < Ui_VentanaPrincipal
    end
end  # module Ui

