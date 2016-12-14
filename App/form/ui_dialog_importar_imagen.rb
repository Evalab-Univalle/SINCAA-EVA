=begin
** Form generated from reading ui file 'dialog_importar_imagen.ui'
**
** Created: Sat Nov 10 10:20:05 2012
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Dialog_np
    attr_reader :groupBoxMain
    attr_reader :verticalLayoutWidget
    attr_reader :verticalLayout
    attr_reader :hl_1
    attr_reader :rb_import
    attr_reader :le_path
    attr_reader :bt_search
    attr_reader :hl_2
    attr_reader :rb_scan
    attr_reader :groupBoxScan
    attr_reader :verticalLayout_3
    attr_reader :rb_scan_todo
    attr_reader :horizontalLayout
    attr_reader :rb_scan_rango
    attr_reader :le_cantidad_hojas
    attr_reader :bt_scan
    attr_reader :bt_aceptar

    def setupUi(dialog_np)
    if dialog_np.objectName.nil?
        dialog_np.objectName = "dialog_np"
    end
    dialog_np.windowModality = Qt::NonModal
    dialog_np.resize(475, 234)
    dialog_np.minimumSize = Qt::Size.new(475, 234)
    dialog_np.maximumSize = Qt::Size.new(475, 234)
    dialog_np.styleSheet = "QDialog{\n" \
"background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"QGroupBox#groupBoxMain {\n" \
"     border: 2px solid gray;\n" \
"     border-radius: 5px;\n" \
"	 color: rgb(0, 0, 255);\n" \
" }\n" \
"\n" \
"QRadioButton{\n" \
"	background-color:  rgb(255, 255, 255);\n" \
"	color: rgb(0, 0, 255);\n" \
"}"
    dialog_np.modal = true
    @groupBoxMain = Qt::GroupBox.new(dialog_np)
    @groupBoxMain.objectName = "groupBoxMain"
    @groupBoxMain.geometry = Qt::Rect.new(10, 10, 451, 191)
    @groupBoxMain.styleSheet = ""
    @groupBoxMain.checkable = false
    @verticalLayoutWidget = Qt::Widget.new(@groupBoxMain)
    @verticalLayoutWidget.objectName = "verticalLayoutWidget"
    @verticalLayoutWidget.geometry = Qt::Rect.new(10, 10, 421, 169)
    @verticalLayout = Qt::VBoxLayout.new(@verticalLayoutWidget)
    @verticalLayout.objectName = "verticalLayout"
    @verticalLayout.setContentsMargins(0, 0, 0, 0)
    @hl_1 = Qt::HBoxLayout.new()
    @hl_1.objectName = "hl_1"
    @rb_import = Qt::RadioButton.new(@verticalLayoutWidget)
    @rb_import.objectName = "rb_import"
    @font = Qt::Font.new
    @font.family = "Arial"
    @rb_import.font = @font
    @rb_import.checked = true

    @hl_1.addWidget(@rb_import)

    @le_path = Qt::LineEdit.new(@verticalLayoutWidget)
    @le_path.objectName = "le_path"
    @le_path.font = @font
    @le_path.readOnly = true

    @hl_1.addWidget(@le_path)

    @bt_search = Qt::PushButton.new(@verticalLayoutWidget)
    @bt_search.objectName = "bt_search"
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/search-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @bt_search.icon = icon

    @hl_1.addWidget(@bt_search)


    @verticalLayout.addLayout(@hl_1)

    @hl_2 = Qt::HBoxLayout.new()
    @hl_2.objectName = "hl_2"
    @rb_scan = Qt::RadioButton.new(@verticalLayoutWidget)
    @rb_scan.objectName = "rb_scan"
    @rb_scan.font = @font

    @hl_2.addWidget(@rb_scan)

    @groupBoxScan = Qt::GroupBox.new(@verticalLayoutWidget)
    @groupBoxScan.objectName = "groupBoxScan"
    @groupBoxScan.font = @font
    @groupBoxScan.alignment = Qt::AlignLeading|Qt::AlignLeft|Qt::AlignTop
    @verticalLayout_3 = Qt::VBoxLayout.new(@groupBoxScan)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @verticalLayout_3.setContentsMargins(0, 0, -1, 0)
    @rb_scan_todo = Qt::RadioButton.new(@groupBoxScan)
    @rb_scan_todo.objectName = "rb_scan_todo"
    @rb_scan_todo.enabled = false
    @rb_scan_todo.font = @font
    @rb_scan_todo.checked = true

    @verticalLayout_3.addWidget(@rb_scan_todo)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @rb_scan_rango = Qt::RadioButton.new(@groupBoxScan)
    @rb_scan_rango.objectName = "rb_scan_rango"
    @rb_scan_rango.enabled = false
    @rb_scan_rango.minimumSize = Qt::Size.new(200, 0)
    @rb_scan_rango.font = @font

    @horizontalLayout.addWidget(@rb_scan_rango)

    @le_cantidad_hojas = Qt::LineEdit.new(@groupBoxScan)
    @le_cantidad_hojas.objectName = "le_cantidad_hojas"
    @le_cantidad_hojas.enabled = false
    @le_cantidad_hojas.minimumSize = Qt::Size.new(100, 0)
    @le_cantidad_hojas.maximumSize = Qt::Size.new(100, 16777215)
    @le_cantidad_hojas.font = @font
    @le_cantidad_hojas.maxLength = 4

    @horizontalLayout.addWidget(@le_cantidad_hojas)


    @verticalLayout_3.addLayout(@horizontalLayout)

    @bt_scan = Qt::PushButton.new(@groupBoxScan)
    @bt_scan.objectName = "bt_scan"
    @bt_scan.enabled = false
    @bt_scan.font = @font
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/scanner-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @bt_scan.icon = icon1

    @verticalLayout_3.addWidget(@bt_scan)


    @hl_2.addWidget(@groupBoxScan)


    @verticalLayout.addLayout(@hl_2)

    @bt_aceptar = Qt::PushButton.new(dialog_np)
    @bt_aceptar.objectName = "bt_aceptar"
    @bt_aceptar.geometry = Qt::Rect.new(200, 205, 85, 27)
    @bt_aceptar.font = @font
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/controles/accept-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @bt_aceptar.icon = icon2

    retranslateUi(dialog_np)
    Qt::Object.connect(@bt_aceptar, SIGNAL('clicked()'), dialog_np, SLOT('accept()'))

    Qt::MetaObject.connectSlotsByName(dialog_np)
    end # setupUi

    def setup_ui(dialog_np)
        setupUi(dialog_np)
    end

    def retranslateUi(dialog_np)
    dialog_np.windowTitle = Qt::Application.translate("dialog_np", "Importar imagen", nil, Qt::Application::UnicodeUTF8)
    @groupBoxMain.title = ''
    @rb_import.text = Qt::Application.translate("dialog_np", "Importar imagen", nil, Qt::Application::UnicodeUTF8)
    @bt_search.text = ''
    @rb_scan.text = Qt::Application.translate("dialog_np", "Escanear imagen", nil, Qt::Application::UnicodeUTF8)
    @groupBoxScan.title = ''
    @rb_scan_todo.text = Qt::Application.translate("dialog_np", "Todo", nil, Qt::Application::UnicodeUTF8)
    @rb_scan_rango.text = Qt::Application.translate("dialog_np", "Cantidad", nil, Qt::Application::UnicodeUTF8)
    @bt_scan.text = Qt::Application.translate("dialog_np", "Iniciar escaner", nil, Qt::Application::UnicodeUTF8)
    @bt_aceptar.text = Qt::Application.translate("dialog_np", "Aceptar", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dialog_np)
        retranslateUi(dialog_np)
    end

end

module Ui
    class Dialog_np < Ui_Dialog_np
    end
end  # module Ui

