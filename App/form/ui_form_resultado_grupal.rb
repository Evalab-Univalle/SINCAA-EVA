=begin
** Form generated from reading ui file 'form_resultado_grupal.ui'
**
** Created: Sun Feb 3 00:46:40 2013
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frm_resultado_grupal
    attr_reader :lb_info
    attr_reader :lb_escaneados
    attr_reader :layoutWidget
    attr_reader :hl_1
    attr_reader :btn_explorar
    attr_reader :btn_exportar
    attr_reader :tw_calf_exam
    attr_reader :tw_marcas_img_tab1_2
    attr_reader :tbl_estudiantes
    attr_reader :tw_marcas_img_tab2_2
    attr_reader :verticalLayout_4
    attr_reader :te_inconsistencias
    attr_reader :horizontalLayoutWidget
    attr_reader :horizontalLayout
    attr_reader :widget_indicador
    attr_reader :lb_indicador

    def setupUi(frm_resultado_grupal)
    if frm_resultado_grupal.objectName.nil?
        frm_resultado_grupal.objectName = "frm_resultado_grupal"
    end
    frm_resultado_grupal.resize(469, 570)
    @font = Qt::Font.new
    @font.family = "Arial"
    frm_resultado_grupal.font = @font
    @lb_info = Qt::Label.new(frm_resultado_grupal)
    @lb_info.objectName = "lb_info"
    @lb_info.geometry = Qt::Rect.new(30, 10, 171, 21)
    @font1 = Qt::Font.new
    @font1.family = "Arial"
    @font1.pointSize = 10
    @lb_info.font = @font1
    @lb_escaneados = Qt::Label.new(frm_resultado_grupal)
    @lb_escaneados.objectName = "lb_escaneados"
    @lb_escaneados.geometry = Qt::Rect.new(210, 10, 111, 21)
    @lb_escaneados.font = @font
    @lb_escaneados.alignment = Qt::AlignCenter
    @layoutWidget = Qt::Widget.new(frm_resultado_grupal)
    @layoutWidget.objectName = "layoutWidget"
    @layoutWidget.geometry = Qt::Rect.new(80, 530, 293, 30)
    @hl_1 = Qt::HBoxLayout.new(@layoutWidget)
    @hl_1.objectName = "hl_1"
    @hl_1.setContentsMargins(0, 0, 0, 0)
    @btn_explorar = Qt::PushButton.new(@layoutWidget)
    @btn_explorar.objectName = "btn_explorar"
    @btn_explorar.font = @font
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/folder-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_explorar.icon = icon

    @hl_1.addWidget(@btn_explorar)

    @btn_exportar = Qt::PushButton.new(@layoutWidget)
    @btn_exportar.objectName = "btn_exportar"
    @btn_exportar.font = @font
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/excel-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_exportar.icon = icon1

    @hl_1.addWidget(@btn_exportar)

    @tw_calf_exam = Qt::TabWidget.new(frm_resultado_grupal)
    @tw_calf_exam.objectName = "tw_calf_exam"
    @tw_calf_exam.geometry = Qt::Rect.new(10, 40, 451, 441)
    @tw_calf_exam.font = @font1
    @tw_marcas_img_tab1_2 = Qt::Widget.new()
    @tw_marcas_img_tab1_2.objectName = "tw_marcas_img_tab1_2"
    @tbl_estudiantes = Qt::TableWidget.new(@tw_marcas_img_tab1_2)
    @tbl_estudiantes.objectName = "tbl_estudiantes"
    @tbl_estudiantes.enabled = true
    @tbl_estudiantes.geometry = Qt::Rect.new(10, 10, 431, 391)
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Fixed, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @tbl_estudiantes.sizePolicy.hasHeightForWidth
    @tbl_estudiantes.sizePolicy = @sizePolicy
    @tbl_estudiantes.font = @font1
    @tbl_estudiantes.frameShape = Qt::Frame::StyledPanel
    @tbl_estudiantes.frameShadow = Qt::Frame::Sunken
    @tbl_estudiantes.alternatingRowColors = true
    @tbl_estudiantes.selectionMode = Qt::AbstractItemView::SingleSelection
    @tbl_estudiantes.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tbl_estudiantes.textElideMode = Qt::ElideRight
    @tbl_estudiantes.gridStyle = Qt::DotLine
    @tbl_estudiantes.sortingEnabled = true
    @tw_calf_exam.addTab(@tw_marcas_img_tab1_2, Qt::Application.translate("frm_resultado_grupal", "Ex\303\241menes", nil, Qt::Application::UnicodeUTF8))
    @tw_marcas_img_tab2_2 = Qt::Widget.new()
    @tw_marcas_img_tab2_2.objectName = "tw_marcas_img_tab2_2"
    @verticalLayout_4 = Qt::VBoxLayout.new(@tw_marcas_img_tab2_2)
    @verticalLayout_4.objectName = "verticalLayout_4"
    @te_inconsistencias = Qt::TextEdit.new(@tw_marcas_img_tab2_2)
    @te_inconsistencias.objectName = "te_inconsistencias"
    @te_inconsistencias.readOnly = true

    @verticalLayout_4.addWidget(@te_inconsistencias)

    @tw_calf_exam.addTab(@tw_marcas_img_tab2_2, Qt::Application.translate("frm_resultado_grupal", "Inconsistencias", nil, Qt::Application::UnicodeUTF8))
    @horizontalLayoutWidget = Qt::Widget.new(frm_resultado_grupal)
    @horizontalLayoutWidget.objectName = "horizontalLayoutWidget"
    @horizontalLayoutWidget.geometry = Qt::Rect.new(20, 490, 191, 21)
    @horizontalLayout = Qt::HBoxLayout.new(@horizontalLayoutWidget)
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalLayout.setContentsMargins(0, 0, 0, 0)
    @widget_indicador = Qt::Widget.new(@horizontalLayoutWidget)
    @widget_indicador.objectName = "widget_indicador"
    @widget_indicador.styleSheet = "background-color: rgb(255, 0, 0);"

    @horizontalLayout.addWidget(@widget_indicador)

    @lb_indicador = Qt::Label.new(@horizontalLayoutWidget)
    @lb_indicador.objectName = "lb_indicador"

    @horizontalLayout.addWidget(@lb_indicador)


    retranslateUi(frm_resultado_grupal)

    @tw_calf_exam.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(frm_resultado_grupal)
    end # setupUi

    def setup_ui(frm_resultado_grupal)
        setupUi(frm_resultado_grupal)
    end

    def retranslateUi(frm_resultado_grupal)
    frm_resultado_grupal.windowTitle = Qt::Application.translate("frm_resultado_grupal", "Form", nil, Qt::Application::UnicodeUTF8)
    @lb_info.text = Qt::Application.translate("frm_resultado_grupal", "Ex\303\241menes escaneados :", nil, Qt::Application::UnicodeUTF8)
    @lb_escaneados.text = Qt::Application.translate("frm_resultado_grupal", "0", nil, Qt::Application::UnicodeUTF8)
    @btn_explorar.text = Qt::Application.translate("frm_resultado_grupal", "Abrir carpeta", nil, Qt::Application::UnicodeUTF8)
    @btn_exportar.text = Qt::Application.translate("frm_resultado_grupal", "Exportar resultado", nil, Qt::Application::UnicodeUTF8)
    if @tbl_estudiantes.columnCount < 3
        @tbl_estudiantes.columnCount = 3
    end

    __colItem = Qt::TableWidgetItem.new
    __colItem.setText(Qt::Application.translate("frm_resultado_grupal", "Estudiante", nil, Qt::Application::UnicodeUTF8))
    @tbl_estudiantes.setHorizontalHeaderItem(0, __colItem)

    __colItem1 = Qt::TableWidgetItem.new
    __colItem1.setText(Qt::Application.translate("frm_resultado_grupal", "P\303\241ginas calificadas", nil, Qt::Application::UnicodeUTF8))
    @tbl_estudiantes.setHorizontalHeaderItem(1, __colItem1)

    __colItem2 = Qt::TableWidgetItem.new
    __colItem2.setText(Qt::Application.translate("frm_resultado_grupal", "Calificaci\303\263n", nil, Qt::Application::UnicodeUTF8))
    @tbl_estudiantes.setHorizontalHeaderItem(2, __colItem2)
    @tw_calf_exam.setTabText(@tw_calf_exam.indexOf(@tw_marcas_img_tab1_2), Qt::Application.translate("frm_resultado_grupal", "Ex\303\241menes", nil, Qt::Application::UnicodeUTF8))
    @tw_calf_exam.setTabText(@tw_calf_exam.indexOf(@tw_marcas_img_tab2_2), Qt::Application.translate("frm_resultado_grupal", "Inconsistencias", nil, Qt::Application::UnicodeUTF8))
    @lb_indicador.text = Qt::Application.translate("frm_resultado_grupal", "C\303\263digo no existe", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(frm_resultado_grupal)
        retranslateUi(frm_resultado_grupal)
    end

end

module Ui
    class Frm_resultado_grupal < Ui_Frm_resultado_grupal
    end
end  # module Ui

