=begin
** Form generated from reading ui file 'form_calificar_examen.ui'
**
** Created: Sun Feb 3 13:07:17 2013
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frm_calificar_examen
    attr_reader :groupBoxC
    attr_reader :lb_nombreexamen
    attr_reader :pte_nombreexamen
    attr_reader :tw_config_exam
    attr_reader :tw_marcas_img_tab1
    attr_reader :horizontalLayout
    attr_reader :tbl_preguntas_mostrar
    attr_reader :tbl_preguntas
    attr_reader :tw_marcas_img_tab2
    attr_reader :verticalLayout_3
    attr_reader :btn_img_exm_1
    attr_reader :btn_img_exm_2
    attr_reader :btn_img_exm_3
    attr_reader :vs_img_3
    attr_reader :groupBoxR
    attr_reader :verticalLayout_2
    attr_reader :vl_resultados
    attr_reader :lb_datosexamen
    attr_reader :lb_datosresultados
    attr_reader :verticalLayoutWidget
    attr_reader :verticalLayout_4
    attr_reader :btn_cargarlista
    attr_reader :btn_caluno
    attr_reader :btn_caltodos
    attr_reader :pushButton

    def setupUi(frm_calificar_examen)
    if frm_calificar_examen.objectName.nil?
        frm_calificar_examen.objectName = "frm_calificar_examen"
    end
    frm_calificar_examen.resize(991, 654)
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Fixed, Qt::SizePolicy::Preferred)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = frm_calificar_examen.sizePolicy.hasHeightForWidth
    frm_calificar_examen.sizePolicy = @sizePolicy
    @font = Qt::Font.new
    @font.family = "Arial"
    frm_calificar_examen.font = @font
    frm_calificar_examen.styleSheet = "QWidget#frm_calificar_examen{\n" \
"	background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"QGroupBox#groupBoxC,  QGroupBox#groupBoxR{\n" \
"     border: 2px solid gray;\n" \
"     border-radius: 5px;\n" \
" }\n" \
"\n" \
"QLabel{\n" \
"	color:	rgb(0, 0, 0);\n" \
"	font: 10pt \"Arial\";\n" \
"}\n" \
"\n" \
"QLabel#lb_datosexamen, #lb_datosresultados{\n" \
"	font: 12pt \"Arial\";\n" \
"	color: rgb(0, 0, 255);\n" \
"}\n" \
"\n" \
"QTabBar::tab {\n" \
"	background-color: rgb(0, 0, 255);\n" \
"	color: rgb(255, 255, 255);\n" \
"     border: 1px solid rgb(255,255, 255);\n" \
"     min-width: 8ex;\n" \
"     padding: 2px;\n" \
" }\n" \
"\n" \
" QTabBar::tab:selected {\n" \
"	background-color: rgb(255, 255, 255);\n" \
"	border: 1px solid rgb(0, 0, 255);\n" \
"	color: rgb(0, 0, 255);\n" \
" }\n" \
"\n" \
"QTableWidget{\n" \
"font: bold 10pt \"Arial\";\n" \
"}\n" \
"\n" \
"QPushButton#btn_cargarlista, #btn_caluno, #btn_caltodos, #pushButton\n" \
"{\n" \
"	text-align: left;\n" \
"	margin: 0;\n" \
"	padding: 4;\n" \
""
        "}\n" \
"\n" \
""
    @groupBoxC = Qt::GroupBox.new(frm_calificar_examen)
    @groupBoxC.objectName = "groupBoxC"
    @groupBoxC.geometry = Qt::Rect.new(10, 40, 341, 591)
    @lb_nombreexamen = Qt::Label.new(@groupBoxC)
    @lb_nombreexamen.objectName = "lb_nombreexamen"
    @lb_nombreexamen.geometry = Qt::Rect.new(20, 17, 58, 21)
    @font1 = Qt::Font.new
    @font1.family = "Arial"
    @font1.pointSize = 10
    @font1.bold = false
    @font1.italic = false
    @font1.weight = 50
    @lb_nombreexamen.font = @font1
    @pte_nombreexamen = Qt::PlainTextEdit.new(@groupBoxC)
    @pte_nombreexamen.objectName = "pte_nombreexamen"
    @pte_nombreexamen.geometry = Qt::Rect.new(91, 15, 241, 61)
    @font2 = Qt::Font.new
    @font2.family = "Arial"
    @font2.pointSize = 10
    @pte_nombreexamen.font = @font2
    @pte_nombreexamen.readOnly = true
    @tw_config_exam = Qt::TabWidget.new(@groupBoxC)
    @tw_config_exam.objectName = "tw_config_exam"
    @tw_config_exam.geometry = Qt::Rect.new(10, 100, 321, 481)
    @tw_config_exam.font = @font2
    @tw_marcas_img_tab1 = Qt::Widget.new()
    @tw_marcas_img_tab1.objectName = "tw_marcas_img_tab1"
    @horizontalLayout = Qt::HBoxLayout.new(@tw_marcas_img_tab1)
    @horizontalLayout.objectName = "horizontalLayout"
    @tbl_preguntas_mostrar = Qt::TableWidget.new(@tw_marcas_img_tab1)
    @tbl_preguntas_mostrar.objectName = "tbl_preguntas_mostrar"
    @tbl_preguntas_mostrar.selectionMode = Qt::AbstractItemView::SingleSelection
    @tbl_preguntas_mostrar.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tbl_preguntas_mostrar.gridStyle = Qt::DotLine

    @horizontalLayout.addWidget(@tbl_preguntas_mostrar)

    @tbl_preguntas = Qt::TableWidget.new(@tw_marcas_img_tab1)
    @tbl_preguntas.objectName = "tbl_preguntas"
    @tbl_preguntas.enabled = true
    @font3 = Qt::Font.new
    @font3.family = "Arial"
    @font3.pointSize = 10
    @font3.bold = true
    @font3.italic = false
    @font3.weight = 75
    @tbl_preguntas.font = @font3
    @tbl_preguntas.selectionMode = Qt::AbstractItemView::SingleSelection
    @tbl_preguntas.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tbl_preguntas.gridStyle = Qt::DotLine
    @tbl_preguntas.sortingEnabled = false

    @horizontalLayout.addWidget(@tbl_preguntas)

    @tw_config_exam.addTab(@tw_marcas_img_tab1, Qt::Application.translate("frm_calificar_examen", "Preguntas / Respuestas", nil, Qt::Application::UnicodeUTF8))
    @tw_marcas_img_tab2 = Qt::Widget.new()
    @tw_marcas_img_tab2.objectName = "tw_marcas_img_tab2"
    @verticalLayout_3 = Qt::VBoxLayout.new(@tw_marcas_img_tab2)
    @verticalLayout_3.objectName = "verticalLayout_3"
    @btn_img_exm_1 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_img_exm_1.objectName = "btn_img_exm_1"
    @btn_img_exm_1.font = @font2
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/picture-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_img_exm_1.icon = icon

    @verticalLayout_3.addWidget(@btn_img_exm_1)

    @btn_img_exm_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_img_exm_2.objectName = "btn_img_exm_2"
    @btn_img_exm_2.font = @font2
    @btn_img_exm_2.icon = icon

    @verticalLayout_3.addWidget(@btn_img_exm_2)

    @btn_img_exm_3 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_img_exm_3.objectName = "btn_img_exm_3"
    @btn_img_exm_3.font = @font2
    @btn_img_exm_3.icon = icon

    @verticalLayout_3.addWidget(@btn_img_exm_3)

    @vs_img_3 = Qt::SpacerItem.new(500, 500, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout_3.addItem(@vs_img_3)

    @tw_config_exam.addTab(@tw_marcas_img_tab2, Qt::Application.translate("frm_calificar_examen", "Imagenes", nil, Qt::Application::UnicodeUTF8))
    @groupBoxR = Qt::GroupBox.new(frm_calificar_examen)
    @groupBoxR.objectName = "groupBoxR"
    @groupBoxR.geometry = Qt::Rect.new(360, 40, 491, 591)
    @verticalLayout_2 = Qt::VBoxLayout.new(@groupBoxR)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @vl_resultados = Qt::VBoxLayout.new()
    @vl_resultados.objectName = "vl_resultados"

    @verticalLayout_2.addLayout(@vl_resultados)

    @lb_datosexamen = Qt::Label.new(frm_calificar_examen)
    @lb_datosexamen.objectName = "lb_datosexamen"
    @lb_datosexamen.geometry = Qt::Rect.new(10, 10, 211, 20)
    @font4 = Qt::Font.new
    @font4.family = "Arial"
    @font4.pointSize = 12
    @font4.bold = false
    @font4.italic = false
    @font4.weight = 50
    @lb_datosexamen.font = @font4
    @lb_datosresultados = Qt::Label.new(frm_calificar_examen)
    @lb_datosresultados.objectName = "lb_datosresultados"
    @lb_datosresultados.geometry = Qt::Rect.new(370, 10, 401, 20)
    @lb_datosresultados.font = @font4
    @verticalLayoutWidget = Qt::Widget.new(frm_calificar_examen)
    @verticalLayoutWidget.objectName = "verticalLayoutWidget"
    @verticalLayoutWidget.geometry = Qt::Rect.new(860, 40, 153, 174)
    @verticalLayout_4 = Qt::VBoxLayout.new(@verticalLayoutWidget)
    @verticalLayout_4.objectName = "verticalLayout_4"
    @verticalLayout_4.setContentsMargins(0, 0, 0, 0)
    @btn_cargarlista = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_cargarlista.objectName = "btn_cargarlista"
    @btn_cargarlista.font = @font
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/list-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_cargarlista.icon = icon1

    @verticalLayout_4.addWidget(@btn_cargarlista)

    @btn_caluno = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_caluno.objectName = "btn_caluno"
    @btn_caluno.font = @font
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/controles/test-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_caluno.icon = icon2

    @verticalLayout_4.addWidget(@btn_caluno)

    @btn_caltodos = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_caltodos.objectName = "btn_caltodos"
    @btn_caltodos.font = @font
    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/controles/testmultiple-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_caltodos.icon = icon3

    @verticalLayout_4.addWidget(@btn_caltodos)

    @pushButton = Qt::PushButton.new(@verticalLayoutWidget)
    @pushButton.objectName = "pushButton"
    @pushButton.font = @font
    icon4 = Qt::Icon.new
    icon4.addPixmap(Qt::Pixmap.new(":/controles/delete-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @pushButton.icon = icon4

    @verticalLayout_4.addWidget(@pushButton)


    retranslateUi(frm_calificar_examen)
    Qt::Object.connect(@pushButton, SIGNAL('clicked()'), frm_calificar_examen, SLOT('close()'))

    @tw_config_exam.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(frm_calificar_examen)
    end # setupUi

    def setup_ui(frm_calificar_examen)
        setupUi(frm_calificar_examen)
    end

    def retranslateUi(frm_calificar_examen)
    frm_calificar_examen.windowTitle = Qt::Application.translate("frm_calificar_examen", "Form", nil, Qt::Application::UnicodeUTF8)
    @groupBoxC.title = ''
    @lb_nombreexamen.text = Qt::Application.translate("frm_calificar_examen", "Examen:", nil, Qt::Application::UnicodeUTF8)
    if @tbl_preguntas_mostrar.columnCount < 5
        @tbl_preguntas_mostrar.columnCount = 5
    end

    __colItem = Qt::TableWidgetItem.new
    __colItem.setText(Qt::Application.translate("frm_calificar_examen", "Pag #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas_mostrar.setHorizontalHeaderItem(0, __colItem)

    __colItem1 = Qt::TableWidgetItem.new
    __colItem1.setText(Qt::Application.translate("frm_calificar_examen", "Preg #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas_mostrar.setHorizontalHeaderItem(1, __colItem1)

    __colItem2 = Qt::TableWidgetItem.new
    __colItem2.setText(Qt::Application.translate("frm_calificar_examen", "# Resp", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas_mostrar.setHorizontalHeaderItem(2, __colItem2)

    __colItem3 = Qt::TableWidgetItem.new
    __colItem3.setText(Qt::Application.translate("frm_calificar_examen", "Puntuaci\303\263n", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas_mostrar.setHorizontalHeaderItem(3, __colItem3)

    __colItem4 = Qt::TableWidgetItem.new
    __colItem4.setText(Qt::Application.translate("frm_calificar_examen", "Tipo pregunta", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas_mostrar.setHorizontalHeaderItem(4, __colItem4)
    if @tbl_preguntas.columnCount < 7
        @tbl_preguntas.columnCount = 7
    end

    __colItem5 = Qt::TableWidgetItem.new
    __colItem5.setText(Qt::Application.translate("frm_calificar_examen", "Pag #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(0, __colItem5)

    __colItem6 = Qt::TableWidgetItem.new
    __colItem6.setText(Qt::Application.translate("frm_calificar_examen", "Preg #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(1, __colItem6)

    __colItem7 = Qt::TableWidgetItem.new
    __colItem7.setText(Qt::Application.translate("frm_calificar_examen", "# Resp", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(2, __colItem7)

    __colItem8 = Qt::TableWidgetItem.new
    __colItem8.setText(Qt::Application.translate("frm_calificar_examen", "RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(3, __colItem8)

    __colItem9 = Qt::TableWidgetItem.new
    __colItem9.setText(Qt::Application.translate("frm_calificar_examen", "Coordenadas RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(4, __colItem9)

    __colItem10 = Qt::TableWidgetItem.new
    __colItem10.setText(Qt::Application.translate("frm_calificar_examen", "Puntuacion RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(5, __colItem10)

    __colItem11 = Qt::TableWidgetItem.new
    __colItem11.setText(Qt::Application.translate("frm_calificar_examen", "Tipo Preg", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(6, __colItem11)
    @tw_config_exam.setTabText(@tw_config_exam.indexOf(@tw_marcas_img_tab1), Qt::Application.translate("frm_calificar_examen", "Preguntas / Respuestas", nil, Qt::Application::UnicodeUTF8))
    @btn_img_exm_1.text = Qt::Application.translate("frm_calificar_examen", "Ver imagen completa 1", nil, Qt::Application::UnicodeUTF8)
    @btn_img_exm_2.text = Qt::Application.translate("frm_calificar_examen", "Ver imagen completa 2", nil, Qt::Application::UnicodeUTF8)
    @btn_img_exm_3.text = Qt::Application.translate("frm_calificar_examen", "Ver imagen completa 3", nil, Qt::Application::UnicodeUTF8)
    @tw_config_exam.setTabText(@tw_config_exam.indexOf(@tw_marcas_img_tab2), Qt::Application.translate("frm_calificar_examen", "Imagenes", nil, Qt::Application::UnicodeUTF8))
    @groupBoxR.title = ''
    @lb_datosexamen.text = Qt::Application.translate("frm_calificar_examen", "<html><head/><body><p>Configuraci\303\263n del examen</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @lb_datosresultados.text = Qt::Application.translate("frm_calificar_examen", "Resultados evaluaci\303\263n", nil, Qt::Application::UnicodeUTF8)
    @btn_cargarlista.text = Qt::Application.translate("frm_calificar_examen", "Cargar lista de \n" \
"estudiantes", nil, Qt::Application::UnicodeUTF8)
    @btn_caluno.text = Qt::Application.translate("frm_calificar_examen", "Evaluar un \n" \
"examen", nil, Qt::Application::UnicodeUTF8)
    @btn_caltodos.text = Qt::Application.translate("frm_calificar_examen", "Evaluar todos", nil, Qt::Application::UnicodeUTF8)
    @pushButton.text = Qt::Application.translate("frm_calificar_examen", "Cerrar", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(frm_calificar_examen)
        retranslateUi(frm_calificar_examen)
    end

end

module Ui
    class Frm_calificar_examen < Ui_Frm_calificar_examen
    end
end  # module Ui

