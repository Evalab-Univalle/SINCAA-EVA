=begin
** Form generated from reading ui file 'dialog_exportar_archivo.ui'
**
** Created: Sun Nov 11 02:37:24 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

require 'Qt4'

class Ui_Dlg_exportar_archivo
    attr_reader :verticalLayout
    attr_reader :btn_exportar_local
    attr_reader :btn_exportar_google

    def setupUi(dlg_exportar_archivo)
    if dlg_exportar_archivo.objectName.nil?
        dlg_exportar_archivo.objectName = "dlg_exportar_archivo"
    end
    dlg_exportar_archivo.resize(429, 124)
    dlg_exportar_archivo.styleSheet = "QDialog{\n" \
"	background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"\n" \
"QPushButton{\n" \
"	color:	rgb(0, 0, 0);\n" \
"	font: 12pt \"Arial\";\n" \
"}\n" \
"\n" \
""
    dlg_exportar_archivo.modal = true
    @verticalLayout = Qt::VBoxLayout.new(dlg_exportar_archivo)
    @verticalLayout.objectName = "verticalLayout"
    @btn_exportar_local = Qt::PushButton.new(dlg_exportar_archivo)
    @btn_exportar_local.objectName = "btn_exportar_local"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/export-excel-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_exportar_local.icon = icon
    @btn_exportar_local.iconSize = Qt::Size.new(32, 32)

    @verticalLayout.addWidget(@btn_exportar_local)

    @btn_exportar_google = Qt::PushButton.new(dlg_exportar_archivo)
    @btn_exportar_google.objectName = "btn_exportar_google"
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/upload-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_exportar_google.icon = icon1
    @btn_exportar_google.iconSize = Qt::Size.new(32, 32)

    @verticalLayout.addWidget(@btn_exportar_google)


    retranslateUi(dlg_exportar_archivo)

    Qt::MetaObject.connectSlotsByName(dlg_exportar_archivo)
    end # setupUi

    def setup_ui(dlg_exportar_archivo)
        setupUi(dlg_exportar_archivo)
    end

    def retranslateUi(dlg_exportar_archivo)
    dlg_exportar_archivo.windowTitle = Qt::Application.translate("Dlg_exportar_archivo", "Exportar informe", nil, Qt::Application::UnicodeUTF8)
    @btn_exportar_local.text = Qt::Application.translate("Dlg_exportar_archivo", "Solo exportar archivo Excel", nil, Qt::Application::UnicodeUTF8)
    @btn_exportar_google.text = Qt::Application.translate("Dlg_exportar_archivo", "Exportar y subir a Google Drive", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dlg_exportar_archivo)
        retranslateUi(dlg_exportar_archivo)
    end

end

module Ui
    class Dlg_exportar_archivo < Ui_Dlg_exportar_archivo
    end
end  # module Ui

if $0 == __FILE__
    a = Qt::Application.new(ARGV)
    u = Ui_Dlg_exportar_archivo.new
    w = Qt::Dialog.new
    u.setupUi(w)
    w.show
    a.exec
end
