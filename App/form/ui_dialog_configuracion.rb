=begin
** Form generated from reading ui file 'dialog_configuracion.ui'
**
** Created: Sat Nov 10 23:20:38 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Dlg_configuracion
    attr_reader :horizontalLayout
    attr_reader :groupBoxC
    attr_reader :gv_me
    attr_reader :gv_cr
    attr_reader :horizontalLayoutWidget_3
    attr_reader :hl_3
    attr_reader :lb_info3
    attr_reader :le_mep
    attr_reader :cbox_modeloescaner
    attr_reader :btn_guardar
    attr_reader :btn_reloadme
    attr_reader :btn_reloadcr
    attr_reader :formLayoutWidget
    attr_reader :formLayout
    attr_reader :lb_mail
    attr_reader :le_mail
    attr_reader :le_passw
    attr_reader :lb_passw
    attr_reader :lb_conf_nube
    attr_reader :lb_conf_scan
    attr_reader :lb_conf_marcas
    attr_reader :formLayoutWidget_2
    attr_reader :fl_2
    attr_reader :lb_info1
    attr_reader :fl_3
    attr_reader :lb_ancho_esquinas
    attr_reader :le_me1
    attr_reader :le_me2
    attr_reader :lb_alto_esquinas
    attr_reader :formLayoutWidget_5
    attr_reader :fl_4
    attr_reader :lb_info2
    attr_reader :fl_5
    attr_reader :lb_ancho_respuestas
    attr_reader :lb_alto_respuestas
    attr_reader :le_cr1
    attr_reader :le_cr2

    def setupUi(dlg_configuracion)
    if dlg_configuracion.objectName.nil?
        dlg_configuracion.objectName = "dlg_configuracion"
    end
    dlg_configuracion.resize(683, 400)
    dlg_configuracion.minimumSize = Qt::Size.new(683, 400)
    dlg_configuracion.maximumSize = Qt::Size.new(683, 400)
    dlg_configuracion.styleSheet = "QDialog{\n" \
"	background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"QGroupBox#groupBoxC {\n" \
"     border: 2px solid gray;\n" \
"     border-radius: 5px;\n" \
" }\n" \
"\n" \
"QGraphicsView{\n" \
"		 border: 2px solid rgb(215, 222, 222);\n" \
"		border-radius: 5px;\n" \
"}\n" \
"\n" \
"QLabel{\n" \
"	font: 10pt \"Arial\";\n" \
"	color: rgb(0, 0, 0);\n" \
"}\n" \
""
    dlg_configuracion.modal = true
    @horizontalLayout = Qt::HBoxLayout.new(dlg_configuracion)
    @horizontalLayout.objectName = "horizontalLayout"
    @groupBoxC = Qt::GroupBox.new(dlg_configuracion)
    @groupBoxC.objectName = "groupBoxC"
    @groupBoxC.styleSheet = ""
    @groupBoxC.flat = false
    @gv_me = Qt::GraphicsView.new(@groupBoxC)
    @gv_me.objectName = "gv_me"
    @gv_me.geometry = Qt::Rect.new(410, 30, 231, 61)
    @gv_me.verticalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @gv_me.horizontalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @gv_cr = Qt::GraphicsView.new(@groupBoxC)
    @gv_cr.objectName = "gv_cr"
    @gv_cr.geometry = Qt::Rect.new(410, 100, 231, 61)
    @gv_cr.verticalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @gv_cr.horizontalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @horizontalLayoutWidget_3 = Qt::Widget.new(@groupBoxC)
    @horizontalLayoutWidget_3.objectName = "horizontalLayoutWidget_3"
    @horizontalLayoutWidget_3.geometry = Qt::Rect.new(20, 190, 401, 51)
    @hl_3 = Qt::HBoxLayout.new(@horizontalLayoutWidget_3)
    @hl_3.objectName = "hl_3"
    @hl_3.setContentsMargins(0, 0, 0, 0)
    @lb_info3 = Qt::Label.new(@horizontalLayoutWidget_3)
    @lb_info3.objectName = "lb_info3"
    @font = Qt::Font.new
    @font.family = "Arial"
    @font.pointSize = 10
    @font.bold = false
    @font.italic = false
    @font.weight = 50
    @lb_info3.font = @font

    @hl_3.addWidget(@lb_info3)

    @le_mep = Qt::LineEdit.new(@horizontalLayoutWidget_3)
    @le_mep.objectName = "le_mep"
    @font1 = Qt::Font.new
    @font1.family = "Arial"
    @font1.pointSize = 10
    @le_mep.font = @font1
    @le_mep.readOnly = true

    @hl_3.addWidget(@le_mep)

    @cbox_modeloescaner = Qt::ComboBox.new(@groupBoxC)
    @cbox_modeloescaner.objectName = "cbox_modeloescaner"
    @cbox_modeloescaner.geometry = Qt::Rect.new(440, 200, 201, 30)
    @font2 = Qt::Font.new
    @font2.family = "Arial"
    @cbox_modeloescaner.font = @font2
    @btn_guardar = Qt::PushButton.new(@groupBoxC)
    @btn_guardar.objectName = "btn_guardar"
    @btn_guardar.geometry = Qt::Rect.new(260, 340, 98, 27)
    @font3 = Qt::Font.new
    @font3.family = "Arial"
    @font3.bold = true
    @font3.weight = 75
    @btn_guardar.font = @font3
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/save-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_guardar.icon = icon
    @btn_reloadme = Qt::PushButton.new(@groupBoxC)
    @btn_reloadme.objectName = "btn_reloadme"
    @btn_reloadme.geometry = Qt::Rect.new(340, 50, 51, 31)
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/refresh-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_reloadme.icon = icon1
    @btn_reloadcr = Qt::PushButton.new(@groupBoxC)
    @btn_reloadcr.objectName = "btn_reloadcr"
    @btn_reloadcr.geometry = Qt::Rect.new(340, 115, 51, 31)
    @btn_reloadcr.icon = icon1
    @formLayoutWidget = Qt::Widget.new(@groupBoxC)
    @formLayoutWidget.objectName = "formLayoutWidget"
    @formLayoutWidget.geometry = Qt::Rect.new(20, 270, 621, 62)
    @formLayout = Qt::FormLayout.new(@formLayoutWidget)
    @formLayout.objectName = "formLayout"
    @formLayout.setContentsMargins(0, 0, 0, 0)
    @lb_mail = Qt::Label.new(@formLayoutWidget)
    @lb_mail.objectName = "lb_mail"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @lb_mail)

    @le_mail = Qt::LineEdit.new(@formLayoutWidget)
    @le_mail.objectName = "le_mail"

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @le_mail)

    @le_passw = Qt::LineEdit.new(@formLayoutWidget)
    @le_passw.objectName = "le_passw"
    @le_passw.inputMethodHints = Qt::ImhHiddenText|Qt::ImhNoAutoUppercase|Qt::ImhNoPredictiveText
    @le_passw.echoMode = Qt::LineEdit::Password

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @le_passw)

    @lb_passw = Qt::Label.new(@formLayoutWidget)
    @lb_passw.objectName = "lb_passw"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @lb_passw)

    @lb_conf_nube = Qt::Label.new(@groupBoxC)
    @lb_conf_nube.objectName = "lb_conf_nube"
    @lb_conf_nube.geometry = Qt::Rect.new(20, 250, 621, 17)
    @lb_conf_nube.styleSheet = "background-color: rgb(0, 0, 255);\n" \
"color: rgb(255, 255, 255);\n" \
"font: 75 13pt \"Arial\";"
    @lb_conf_scan = Qt::Label.new(@groupBoxC)
    @lb_conf_scan.objectName = "lb_conf_scan"
    @lb_conf_scan.geometry = Qt::Rect.new(20, 170, 621, 17)
    @lb_conf_scan.styleSheet = "background-color: rgb(0, 0, 255);\n" \
"color: rgb(255, 255, 255);\n" \
"font: 75 13pt \"Arial\";"
    @lb_conf_marcas = Qt::Label.new(@groupBoxC)
    @lb_conf_marcas.objectName = "lb_conf_marcas"
    @lb_conf_marcas.geometry = Qt::Rect.new(20, 10, 621, 17)
    @lb_conf_marcas.styleSheet = "background-color: rgb(0, 0, 255);\n" \
"color: rgb(255, 255, 255);\n" \
"font: 75 13pt \"Arial\";"
    @formLayoutWidget_2 = Qt::Widget.new(@groupBoxC)
    @formLayoutWidget_2.objectName = "formLayoutWidget_2"
    @formLayoutWidget_2.geometry = Qt::Rect.new(20, 30, 311, 62)
    @fl_2 = Qt::FormLayout.new(@formLayoutWidget_2)
    @fl_2.objectName = "fl_2"
    @fl_2.setContentsMargins(0, 0, 0, 0)
    @lb_info1 = Qt::Label.new(@formLayoutWidget_2)
    @lb_info1.objectName = "lb_info1"
    @lb_info1.font = @font
    @lb_info1.wordWrap = false

    @fl_2.setWidget(0, Qt::FormLayout::LabelRole, @lb_info1)

    @fl_3 = Qt::FormLayout.new()
    @fl_3.objectName = "fl_3"
    @lb_ancho_esquinas = Qt::Label.new(@formLayoutWidget_2)
    @lb_ancho_esquinas.objectName = "lb_ancho_esquinas"
    @lb_ancho_esquinas.minimumSize = Qt::Size.new(60, 0)
    @lb_ancho_esquinas.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @fl_3.setWidget(0, Qt::FormLayout::LabelRole, @lb_ancho_esquinas)

    @le_me1 = Qt::LineEdit.new(@formLayoutWidget_2)
    @le_me1.objectName = "le_me1"
    @le_me1.minimumSize = Qt::Size.new(70, 0)
    @le_me1.maximumSize = Qt::Size.new(70, 16777215)
    @le_me1.font = @font1
    @le_me1.inputMethodHints = Qt::ImhDigitsOnly
    @le_me1.maxLength = 3

    @fl_3.setWidget(0, Qt::FormLayout::FieldRole, @le_me1)

    @le_me2 = Qt::LineEdit.new(@formLayoutWidget_2)
    @le_me2.objectName = "le_me2"
    @le_me2.minimumSize = Qt::Size.new(70, 0)
    @le_me2.maximumSize = Qt::Size.new(70, 16777215)
    @le_me2.font = @font1
    @le_me2.maxLength = 3

    @fl_3.setWidget(1, Qt::FormLayout::FieldRole, @le_me2)

    @lb_alto_esquinas = Qt::Label.new(@formLayoutWidget_2)
    @lb_alto_esquinas.objectName = "lb_alto_esquinas"
    @lb_alto_esquinas.minimumSize = Qt::Size.new(60, 0)
    @lb_alto_esquinas.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @fl_3.setWidget(1, Qt::FormLayout::LabelRole, @lb_alto_esquinas)


    @fl_2.setLayout(0, Qt::FormLayout::FieldRole, @fl_3)

    @formLayoutWidget_5 = Qt::Widget.new(@groupBoxC)
    @formLayoutWidget_5.objectName = "formLayoutWidget_5"
    @formLayoutWidget_5.geometry = Qt::Rect.new(20, 100, 311, 62)
    @fl_4 = Qt::FormLayout.new(@formLayoutWidget_5)
    @fl_4.objectName = "fl_4"
    @fl_4.setContentsMargins(0, 0, 0, 0)
    @lb_info2 = Qt::Label.new(@formLayoutWidget_5)
    @lb_info2.objectName = "lb_info2"
    @lb_info2.font = @font

    @fl_4.setWidget(0, Qt::FormLayout::LabelRole, @lb_info2)

    @fl_5 = Qt::FormLayout.new()
    @fl_5.objectName = "fl_5"
    @lb_ancho_respuestas = Qt::Label.new(@formLayoutWidget_5)
    @lb_ancho_respuestas.objectName = "lb_ancho_respuestas"
    @lb_ancho_respuestas.minimumSize = Qt::Size.new(60, 0)
    @lb_ancho_respuestas.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @fl_5.setWidget(0, Qt::FormLayout::LabelRole, @lb_ancho_respuestas)

    @lb_alto_respuestas = Qt::Label.new(@formLayoutWidget_5)
    @lb_alto_respuestas.objectName = "lb_alto_respuestas"
    @lb_alto_respuestas.minimumSize = Qt::Size.new(60, 0)
    @lb_alto_respuestas.alignment = Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter

    @fl_5.setWidget(1, Qt::FormLayout::LabelRole, @lb_alto_respuestas)

    @le_cr1 = Qt::LineEdit.new(@formLayoutWidget_5)
    @le_cr1.objectName = "le_cr1"
    @le_cr1.minimumSize = Qt::Size.new(70, 0)
    @le_cr1.maximumSize = Qt::Size.new(70, 16777215)
    @le_cr1.font = @font1
    @le_cr1.maxLength = 3

    @fl_5.setWidget(0, Qt::FormLayout::FieldRole, @le_cr1)

    @le_cr2 = Qt::LineEdit.new(@formLayoutWidget_5)
    @le_cr2.objectName = "le_cr2"
    @le_cr2.maximumSize = Qt::Size.new(70, 16777215)
    @le_cr2.font = @font1
    @le_cr2.maxLength = 3

    @fl_5.setWidget(1, Qt::FormLayout::FieldRole, @le_cr2)


    @fl_4.setLayout(0, Qt::FormLayout::FieldRole, @fl_5)

    gv_me.raise()
    gv_cr.raise()
    horizontalLayoutWidget_3.raise()
    cbox_modeloescaner.raise()
    btn_guardar.raise()
    btn_reloadme.raise()
    btn_reloadcr.raise()
    formLayoutWidget.raise()
    lb_conf_nube.raise()
    lb_conf_scan.raise()
    lb_info3.raise()
    lb_conf_marcas.raise()
    formLayoutWidget_2.raise()
    formLayoutWidget_5.raise()

    @horizontalLayout.addWidget(@groupBoxC)


    retranslateUi(dlg_configuracion)

    Qt::MetaObject.connectSlotsByName(dlg_configuracion)
    end # setupUi

    def setup_ui(dlg_configuracion)
        setupUi(dlg_configuracion)
    end

    def retranslateUi(dlg_configuracion)
    dlg_configuracion.windowTitle = Qt::Application.translate("Dlg_configuracion", "Configuraci\303\263n SICA", nil, Qt::Application::UnicodeUTF8)
    @groupBoxC.title = ''
    @lb_info3.text = Qt::Application.translate("Dlg_configuracion", "Modelo escaner predeterminado", nil, Qt::Application::UnicodeUTF8)
    @btn_guardar.text = Qt::Application.translate("Dlg_configuracion", "Guardar", nil, Qt::Application::UnicodeUTF8)
    @btn_reloadme.text = ''
    @btn_reloadcr.text = ''
    @lb_mail.text = Qt::Application.translate("Dlg_configuracion", "Correo electr\303\263nico (para subir archivos a google)", nil, Qt::Application::UnicodeUTF8)
    @lb_passw.text = Qt::Application.translate("Dlg_configuracion", "Contrase\303\261a", nil, Qt::Application::UnicodeUTF8)
    @lb_conf_nube.text = Qt::Application.translate("Dlg_configuracion", "Configuraci\303\263n para la nube", nil, Qt::Application::UnicodeUTF8)
    @lb_conf_scan.text = Qt::Application.translate("Dlg_configuracion", "Configuraci\303\263n dispositivo escaner", nil, Qt::Application::UnicodeUTF8)
    @lb_conf_marcas.text = Qt::Application.translate("Dlg_configuracion", "Configuraci\303\263n marcas predeterminadas", nil, Qt::Application::UnicodeUTF8)
    @lb_info1.text = Qt::Application.translate("Dlg_configuracion", "Tama\303\261o marcas esquinas:  ", nil, Qt::Application::UnicodeUTF8)
    @lb_ancho_esquinas.text = Qt::Application.translate("Dlg_configuracion", "Ancho(px)", nil, Qt::Application::UnicodeUTF8)
    @lb_alto_esquinas.text = Qt::Application.translate("Dlg_configuracion", "Alto(px)", nil, Qt::Application::UnicodeUTF8)
    @lb_info2.text = Qt::Application.translate("Dlg_configuracion", "Tama\303\261o cuadro respuestas:", nil, Qt::Application::UnicodeUTF8)
    @lb_ancho_respuestas.text = Qt::Application.translate("Dlg_configuracion", "Ancho(px)", nil, Qt::Application::UnicodeUTF8)
    @lb_alto_respuestas.text = Qt::Application.translate("Dlg_configuracion", "Alto(px)", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dlg_configuracion)
        retranslateUi(dlg_configuracion)
    end

end

module Ui
    class Dlg_configuracion < Ui_Dlg_configuracion
    end
end  # module Ui

