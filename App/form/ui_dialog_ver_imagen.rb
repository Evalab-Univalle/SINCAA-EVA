=begin
** Form generated from reading ui file 'dialog_ver_imagen.ui'
**
** Created: Sat Nov 10 09:12:12 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Dlg_ver_img
    attr_reader :verticalLayout
    attr_reader :tw_imgs
    attr_reader :tab_1
    attr_reader :horizontalLayout
    attr_reader :qgv_img_1
    attr_reader :tab_2
    attr_reader :horizontalLayout_2
    attr_reader :qgv_img_2
    attr_reader :tab_3
    attr_reader :horizontalLayout_3
    attr_reader :qgv_img_3
    attr_reader :btn_cerrar

    def setupUi(dlg_ver_img)
    if dlg_ver_img.objectName.nil?
        dlg_ver_img.objectName = "dlg_ver_img"
    end
    dlg_ver_img.resize(697, 554)
    dlg_ver_img.styleSheet = "QDialog{\n" \
"background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"QGroupBox {\n" \
"     border: 2px solid gray;\n" \
"     border-radius: 5px;\n" \
"	 color: rgb(0, 0, 255);\n" \
" }\n" \
"\n" \
"QRadioButton{\n" \
"	background-color:  rgb(255, 255, 255);\n" \
"	color: rgb(0, 0, 255);\n" \
"}"
    dlg_ver_img.modal = true
    @verticalLayout = Qt::VBoxLayout.new(dlg_ver_img)
    @verticalLayout.objectName = "verticalLayout"
    @tw_imgs = Qt::TabWidget.new(dlg_ver_img)
    @tw_imgs.objectName = "tw_imgs"
    @tab_1 = Qt::Widget.new()
    @tab_1.objectName = "tab_1"
    @horizontalLayout = Qt::HBoxLayout.new(@tab_1)
    @horizontalLayout.objectName = "horizontalLayout"
    @qgv_img_1 = Qt::GraphicsView.new(@tab_1)
    @qgv_img_1.objectName = "qgv_img_1"

    @horizontalLayout.addWidget(@qgv_img_1)

    @tw_imgs.addTab(@tab_1, Qt::Application.translate("dlg_ver_img", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tab_2 = Qt::Widget.new()
    @tab_2.objectName = "tab_2"
    @horizontalLayout_2 = Qt::HBoxLayout.new(@tab_2)
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @qgv_img_2 = Qt::GraphicsView.new(@tab_2)
    @qgv_img_2.objectName = "qgv_img_2"

    @horizontalLayout_2.addWidget(@qgv_img_2)

    @tw_imgs.addTab(@tab_2, Qt::Application.translate("dlg_ver_img", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tab_3 = Qt::Widget.new()
    @tab_3.objectName = "tab_3"
    @horizontalLayout_3 = Qt::HBoxLayout.new(@tab_3)
    @horizontalLayout_3.objectName = "horizontalLayout_3"
    @qgv_img_3 = Qt::GraphicsView.new(@tab_3)
    @qgv_img_3.objectName = "qgv_img_3"

    @horizontalLayout_3.addWidget(@qgv_img_3)

    @tw_imgs.addTab(@tab_3, Qt::Application.translate("dlg_ver_img", "Imagen 3", nil, Qt::Application::UnicodeUTF8))

    @verticalLayout.addWidget(@tw_imgs)

    @btn_cerrar = Qt::PushButton.new(dlg_ver_img)
    @btn_cerrar.objectName = "btn_cerrar"
    @font = Qt::Font.new
    @font.family = "Arial"
    @font.pointSize = 12
    @font.bold = true
    @font.weight = 75
    @btn_cerrar.font = @font
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/delete-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_cerrar.icon = icon

    @verticalLayout.addWidget(@btn_cerrar)


    retranslateUi(dlg_ver_img)
    Qt::Object.connect(@btn_cerrar, SIGNAL('clicked()'), dlg_ver_img, SLOT('close()'))

    @tw_imgs.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(dlg_ver_img)
    end # setupUi

    def setup_ui(dlg_ver_img)
        setupUi(dlg_ver_img)
    end

    def retranslateUi(dlg_ver_img)
    dlg_ver_img.windowTitle = Qt::Application.translate("dlg_ver_img", "Im\303\241genes examen calificado", nil, Qt::Application::UnicodeUTF8)
    @tw_imgs.setTabText(@tw_imgs.indexOf(@tab_1), Qt::Application.translate("dlg_ver_img", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tw_imgs.setTabText(@tw_imgs.indexOf(@tab_2), Qt::Application.translate("dlg_ver_img", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tw_imgs.setTabText(@tw_imgs.indexOf(@tab_3), Qt::Application.translate("dlg_ver_img", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @btn_cerrar.text = Qt::Application.translate("dlg_ver_img", "Cerrar", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dlg_ver_img)
        retranslateUi(dlg_ver_img)
    end

end

module Ui
    class Dlg_ver_img < Ui_Dlg_ver_img
    end
end  # module Ui

