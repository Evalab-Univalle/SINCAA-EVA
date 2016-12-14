=begin
** Form generated from reading ui file 'form_resultado_individual.ui'
**
** Created: Sun Feb 3 00:46:42 2013
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frm_resultado_individual
    attr_reader :lb_info_cal
    attr_reader :lb_calificacion
    attr_reader :layoutWidget
    attr_reader :hl_1
    attr_reader :lb_codest
    attr_reader :le_codest
    attr_reader :tbl_respuestas_est
    attr_reader :btn_exportar
    attr_reader :btn_verimg
    attr_reader :btn_infoerror

    def setupUi(frm_resultado_individual)
    if frm_resultado_individual.objectName.nil?
        frm_resultado_individual.objectName = "frm_resultado_individual"
    end
    frm_resultado_individual.resize(469, 570)
    @font = Qt::Font.new
    @font.family = "Arial"
    frm_resultado_individual.font = @font
    frm_resultado_individual.styleSheet = ""
    @lb_info_cal = Qt::Label.new(frm_resultado_individual)
    @lb_info_cal.objectName = "lb_info_cal"
    @lb_info_cal.geometry = Qt::Rect.new(10, 50, 121, 21)
    @lb_calificacion = Qt::Label.new(frm_resultado_individual)
    @lb_calificacion.objectName = "lb_calificacion"
    @lb_calificacion.geometry = Qt::Rect.new(150, 50, 231, 20)
    @font1 = Qt::Font.new
    @font1.family = "Arial"
    @font1.pointSize = 14
    @font1.bold = true
    @font1.italic = false
    @font1.weight = 75
    @lb_calificacion.font = @font1
    @lb_calificacion.styleSheet = "font: bold 14pt \"Arial\";"
    @layoutWidget = Qt::Widget.new(frm_resultado_individual)
    @layoutWidget.objectName = "layoutWidget"
    @layoutWidget.geometry = Qt::Rect.new(10, 10, 401, 30)
    @hl_1 = Qt::HBoxLayout.new(@layoutWidget)
    @hl_1.objectName = "hl_1"
    @hl_1.setContentsMargins(0, 0, 0, 0)
    @lb_codest = Qt::Label.new(@layoutWidget)
    @lb_codest.objectName = "lb_codest"
    @lb_codest.font = @font

    @hl_1.addWidget(@lb_codest)

    @le_codest = Qt::LineEdit.new(@layoutWidget)
    @le_codest.objectName = "le_codest"
    @le_codest.font = @font
    @le_codest.readOnly = true

    @hl_1.addWidget(@le_codest)

    @tbl_respuestas_est = Qt::TableWidget.new(frm_resultado_individual)
    @tbl_respuestas_est.objectName = "tbl_respuestas_est"
    @tbl_respuestas_est.enabled = true
    @tbl_respuestas_est.geometry = Qt::Rect.new(10, 90, 451, 431)
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @tbl_respuestas_est.sizePolicy.hasHeightForWidth
    @tbl_respuestas_est.sizePolicy = @sizePolicy
    @font2 = Qt::Font.new
    @font2.family = "Arial"
    @font2.pointSize = 10
    @tbl_respuestas_est.font = @font2
    @tbl_respuestas_est.frameShape = Qt::Frame::StyledPanel
    @tbl_respuestas_est.frameShadow = Qt::Frame::Sunken
    @tbl_respuestas_est.alternatingRowColors = true
    @tbl_respuestas_est.selectionMode = Qt::AbstractItemView::SingleSelection
    @tbl_respuestas_est.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tbl_respuestas_est.gridStyle = Qt::DotLine
    @tbl_respuestas_est.sortingEnabled = true
    @btn_exportar = Qt::PushButton.new(frm_resultado_individual)
    @btn_exportar.objectName = "btn_exportar"
    @btn_exportar.geometry = Qt::Rect.new(150, 530, 151, 27)
    @btn_exportar.font = @font2
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/excel-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_exportar.icon = icon
    @btn_verimg = Qt::PushButton.new(frm_resultado_individual)
    @btn_verimg.objectName = "btn_verimg"
    @btn_verimg.geometry = Qt::Rect.new(20, 530, 124, 27)
    @btn_verimg.font = @font2
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/picture-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_verimg.icon = icon1
    @btn_infoerror = Qt::PushButton.new(frm_resultado_individual)
    @btn_infoerror.objectName = "btn_infoerror"
    @btn_infoerror.geometry = Qt::Rect.new(310, 530, 141, 27)
    @font3 = Qt::Font.new
    @font3.pointSize = 10
    @btn_infoerror.font = @font3
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/controles/error-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_infoerror.icon = icon2

    retranslateUi(frm_resultado_individual)

    Qt::MetaObject.connectSlotsByName(frm_resultado_individual)
    end # setupUi

    def setup_ui(frm_resultado_individual)
        setupUi(frm_resultado_individual)
    end

    def retranslateUi(frm_resultado_individual)
    frm_resultado_individual.windowTitle = Qt::Application.translate("frm_resultado_individual", "Form", nil, Qt::Application::UnicodeUTF8)
    @lb_info_cal.text = Qt::Application.translate("frm_resultado_individual", "Calificaci\303\263n:", nil, Qt::Application::UnicodeUTF8)
    @lb_calificacion.text = Qt::Application.translate("frm_resultado_individual", "0.0", nil, Qt::Application::UnicodeUTF8)
    @lb_codest.text = Qt::Application.translate("frm_resultado_individual", "C\303\263digo estudiante :", nil, Qt::Application::UnicodeUTF8)
    if @tbl_respuestas_est.columnCount < 4
        @tbl_respuestas_est.columnCount = 4
    end

    __colItem = Qt::TableWidgetItem.new
    __colItem.setText(Qt::Application.translate("frm_resultado_individual", "Pag #", nil, Qt::Application::UnicodeUTF8))
    @tbl_respuestas_est.setHorizontalHeaderItem(0, __colItem)

    __colItem1 = Qt::TableWidgetItem.new
    __colItem1.setText(Qt::Application.translate("frm_resultado_individual", "Preg #", nil, Qt::Application::UnicodeUTF8))
    @tbl_respuestas_est.setHorizontalHeaderItem(1, __colItem1)

    __colItem2 = Qt::TableWidgetItem.new
    __colItem2.setText(Qt::Application.translate("frm_resultado_individual", "Resp", nil, Qt::Application::UnicodeUTF8))
    @tbl_respuestas_est.setHorizontalHeaderItem(2, __colItem2)

    __colItem3 = Qt::TableWidgetItem.new
    __colItem3.setText(Qt::Application.translate("frm_resultado_individual", "Puntuaci\303\263n", nil, Qt::Application::UnicodeUTF8))
    @tbl_respuestas_est.setHorizontalHeaderItem(3, __colItem3)
    @btn_exportar.text = Qt::Application.translate("frm_resultado_individual", "Exportar resultado", nil, Qt::Application::UnicodeUTF8)
    @btn_verimg.text = Qt::Application.translate("frm_resultado_individual", "Ver imagen", nil, Qt::Application::UnicodeUTF8)
    @btn_infoerror.text = Qt::Application.translate("frm_resultado_individual", "Informe de error", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(frm_resultado_individual)
        retranslateUi(frm_resultado_individual)
    end

end

module Ui
    class Frm_resultado_individual < Ui_Frm_resultado_individual
    end
end  # module Ui

