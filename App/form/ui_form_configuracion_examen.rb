=begin
** Form generated from reading ui file 'form_configuracion_examen.ui'
**
** Created: Fri Feb 1 10:09:43 2013
**      by: Qt User Interface Compiler version 4.8.1
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Frm_configuracion_examen
    attr_reader :gridLayout
    attr_reader :lb_datosexamen
    attr_reader :lb_panel
    attr_reader :groupBoxP
    attr_reader :horizontalLayout
    attr_reader :toolBox
    attr_reader :qwg_nombre_examen
    attr_reader :nombreExamenLb
    attr_reader :pte_nombreexamen
    attr_reader :lb_cambiarimg
    attr_reader :btn_cambiarimg
    attr_reader :pte_advertencia
    attr_reader :tw_marcas_img
    attr_reader :tw_marcas_img_tab1
    attr_reader :lb_infobr
    attr_reader :lb_infotl
    attr_reader :btn_tr
    attr_reader :btn_bl
    attr_reader :btn_br
    attr_reader :btn_tl
    attr_reader :lb_infobl
    attr_reader :lb_infotr
    attr_reader :lb_infoareapagina
    attr_reader :btn_areapagina
    attr_reader :lb_oktl
    attr_reader :lb_oktr
    attr_reader :lb_okbl
    attr_reader :lb_okbr
    attr_reader :lb_okareapagina
    attr_reader :tw_marcas_img_tab2
    attr_reader :btn_tr_2
    attr_reader :lb_infotl_2
    attr_reader :btn_bl_2
    attr_reader :btn_br_2
    attr_reader :lb_infobr_2
    attr_reader :btn_tl_2
    attr_reader :lb_infobl_2
    attr_reader :lb_infotr_2
    attr_reader :lb_infoareapagina_2
    attr_reader :btn_areapagina_2
    attr_reader :lb_okareapagina_2
    attr_reader :lb_okbr_2
    attr_reader :lb_oktl_2
    attr_reader :lb_oktr_2
    attr_reader :lb_okbl_2
    attr_reader :tw_marcas_img_tab3
    attr_reader :btn_br_3
    attr_reader :lb_infobl_3
    attr_reader :lb_infobr_3
    attr_reader :lb_infotr_3
    attr_reader :btn_bl_3
    attr_reader :btn_tr_3
    attr_reader :btn_tl_3
    attr_reader :lb_infotl_3
    attr_reader :lb_infoareapagina_3
    attr_reader :btn_areapagina_3
    attr_reader :lb_okareapagina_3
    attr_reader :lb_okbr_3
    attr_reader :lb_oktl_3
    attr_reader :lb_oktr_3
    attr_reader :lb_okbl_3
    attr_reader :qwg_select_codigo
    attr_reader :tw_codigoestudiante
    attr_reader :tw_codigoestudiante_tab1
    attr_reader :lb_puntoinicio
    attr_reader :lb_puntofin
    attr_reader :lb_selectcodigo
    attr_reader :btn_capturarcodigo
    attr_reader :lb_infoareacod
    attr_reader :tw_codigoestudiante_tab2
    attr_reader :lb_selectcodigo_2
    attr_reader :lb_puntoinicio_2
    attr_reader :btn_capturarcodigo_2
    attr_reader :lb_puntofin_2
    attr_reader :lb_infoareacod_2
    attr_reader :tw_codigoestudiante_tab3
    attr_reader :lb_selectcodigo_3
    attr_reader :lb_puntoinicio_3
    attr_reader :btn_capturarcodigo_3
    attr_reader :lb_puntofin_3
    attr_reader :lb_infoareacod_3
    attr_reader :qwg_preg_resp
    attr_reader :verticalLayoutWidget
    attr_reader :vl_1
    attr_reader :formLayout
    attr_reader :lb_infopagina
    attr_reader :le_npaginapregunta
    attr_reader :lb_npregunta
    attr_reader :le_npregunta
    attr_reader :lb_tipopregunta
    attr_reader :cb_tipopregunta
    attr_reader :lb_nrespuestas
    attr_reader :le_nrespuestas
    attr_reader :lb_arearespuestas
    attr_reader :cb_respuestas
    attr_reader :btn_arearespuesta
    attr_reader :lb_respuestascorrectas
    attr_reader :hl_5
    attr_reader :le_respuesta_correcta
    attr_reader :btn_actualizar_respuesta
    attr_reader :hl_2
    attr_reader :btn_insertar
    attr_reader :btn_eliminar
    attr_reader :btn_limpiar
    attr_reader :tbl_preguntas
    attr_reader :tw_img
    attr_reader :tw_img_tab1
    attr_reader :horizontalLayout_3
    attr_reader :qgvImageView
    attr_reader :tw_img_tab2
    attr_reader :horizontalLayout_2
    attr_reader :qgvImageView2
    attr_reader :tw_img_tab3
    attr_reader :horizontalLayout_4
    attr_reader :qgvImageView3
    attr_reader :btn_guardar
    attr_reader :btn_cancelar

    def setupUi(frm_configuracion_examen)
    if frm_configuracion_examen.objectName.nil?
        frm_configuracion_examen.objectName = "frm_configuracion_examen"
    end
    frm_configuracion_examen.resize(1024, 654)
    frm_configuracion_examen.styleSheet = "QWidget#frm_configuracion_examen{\n" \
"	background-color: rgb(255, 255, 255);\n" \
"}\n" \
"\n" \
"QGroupBox#groupBoxP {\n" \
"     border: 2px solid gray;\n" \
"     border-radius: 5px;\n" \
" }\n" \
"\n" \
"QGraphicsView{\n" \
"		 border: 2px solid gray;\n" \
"		border-radius: 5px;\n" \
"}\n" \
"\n" \
"QLabel{\n" \
"	font: 10pt \"Arial\";\n" \
"	color: rgb(0, 0, 0);\n" \
"}\n" \
"\n" \
"QLabel#lb_datosexamen{\n" \
"	font: 12pt \"Arial\";\n" \
"	color: rgb(0, 0, 255);\n" \
"}\n" \
"\n" \
"QLabel#lb_panel{\n" \
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
""
    @gridLayout = Qt::GridLayout.new(frm_configuracion_examen)
    @gridLayout.objectName = "gridLayout"
    @lb_datosexamen = Qt::Label.new(frm_configuracion_examen)
    @lb_datosexamen.objectName = "lb_datosexamen"
    @font = Qt::Font.new
    @font.family = "Arial"
    @font.pointSize = 12
    @font.bold = false
    @font.italic = false
    @font.weight = 50
    @lb_datosexamen.font = @font

    @gridLayout.addWidget(@lb_datosexamen, 0, 0, 1, 2)

    @lb_panel = Qt::Label.new(frm_configuracion_examen)
    @lb_panel.objectName = "lb_panel"
    @lb_panel.font = @font

    @gridLayout.addWidget(@lb_panel, 0, 2, 1, 1)

    @groupBoxP = Qt::GroupBox.new(frm_configuracion_examen)
    @groupBoxP.objectName = "groupBoxP"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Minimum, Qt::SizePolicy::Minimum)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = @groupBoxP.sizePolicy.hasHeightForWidth
    @groupBoxP.sizePolicy = @sizePolicy
    @groupBoxP.styleSheet = ""
    @groupBoxP.flat = false
    @horizontalLayout = Qt::HBoxLayout.new(@groupBoxP)
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalLayout.setContentsMargins(5, 5, 7, 5)
    @toolBox = Qt::ToolBox.new(@groupBoxP)
    @toolBox.objectName = "toolBox"
    @font1 = Qt::Font.new
    @font1.family = "Arial"
    @font1.bold = true
    @font1.weight = 75
    @toolBox.font = @font1
    @toolBox.cursor = Qt::Cursor.new(Qt::PointingHandCursor)
    @toolBox.styleSheet = "QToolBox::tab { \n" \
"border-radius: 5px;\n" \
"background-color: rgb(0, 0, 255);\n" \
"color: rgb(255, 255, 255);\n" \
"font: 75 12pt \"Arial\";\n" \
"  border: 1px solid rgb(0, 0, 255);\n" \
"     border-top-left-radius: 4px;\n" \
"     border-top-right-radius: 4px;\n" \
"}\n" \
"\n" \
" QToolBox::tab:selected {\n" \
"	background-color: qlineargradient(spread:pad, x1:1, y1:0.92, x2:1, y2:0, stop:0 rgba(0, 0, 255, 255), stop:0.104265 rgba(255, 255, 255, 255));\n" \
"font: italic;\n" \
"color: rgb(0, 0, 255);\n" \
"}\n" \
"\n" \
"QPlainTextEdit#pte_advertencia{\n" \
"	color: rgb(255, 0, 0);\n" \
"	font: italic 9.5pt \"Arial\";\n" \
"	border:none;\n" \
"	background-color: rgb(242, 241, 240)\n" \
"}\n" \
"\n" \
"QPushButton#lb_infoareacod, QPushButton#lb_infoareacod_2, QPushButton#lb_infoareacod_3{\n" \
"	color:  rgb(0, 0, 0) ;\n" \
"}"
    @qwg_nombre_examen = Qt::Widget.new()
    @qwg_nombre_examen.objectName = "qwg_nombre_examen"
    @qwg_nombre_examen.enabled = true
    @qwg_nombre_examen.geometry = Qt::Rect.new(0, 0, 277, 467)
    @nombreExamenLb = Qt::Label.new(@qwg_nombre_examen)
    @nombreExamenLb.objectName = "nombreExamenLb"
    @nombreExamenLb.geometry = Qt::Rect.new(10, 10, 111, 21)
    @font2 = Qt::Font.new
    @font2.family = "Arial"
    @font2.pointSize = 10
    @font2.bold = false
    @font2.italic = false
    @font2.weight = 50
    @nombreExamenLb.font = @font2
    @pte_nombreexamen = Qt::PlainTextEdit.new(@qwg_nombre_examen)
    @pte_nombreexamen.objectName = "pte_nombreexamen"
    @pte_nombreexamen.geometry = Qt::Rect.new(130, 10, 141, 61)
    @font3 = Qt::Font.new
    @font3.family = "Arial"
    @font3.pointSize = 10
    @pte_nombreexamen.font = @font3
    @lb_cambiarimg = Qt::Label.new(@qwg_nombre_examen)
    @lb_cambiarimg.objectName = "lb_cambiarimg"
    @lb_cambiarimg.geometry = Qt::Rect.new(10, 90, 121, 31)
    @btn_cambiarimg = Qt::PushButton.new(@qwg_nombre_examen)
    @btn_cambiarimg.objectName = "btn_cambiarimg"
    @btn_cambiarimg.geometry = Qt::Rect.new(130, 90, 141, 27)
    @btn_cambiarimg.font = @font3
    icon = Qt::Icon.new
    icon.addPixmap(Qt::Pixmap.new(":/controles/picture-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_cambiarimg.icon = icon
    @pte_advertencia = Qt::PlainTextEdit.new(@qwg_nombre_examen)
    @pte_advertencia.objectName = "pte_advertencia"
    @pte_advertencia.enabled = false
    @pte_advertencia.geometry = Qt::Rect.new(10, 380, 261, 71)
    @pte_advertencia.verticalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @pte_advertencia.horizontalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @tw_marcas_img = Qt::TabWidget.new(@qwg_nombre_examen)
    @tw_marcas_img.objectName = "tw_marcas_img"
    @tw_marcas_img.geometry = Qt::Rect.new(10, 140, 261, 231)
    @tw_marcas_img.font = @font3
    @tw_marcas_img_tab1 = Qt::Widget.new()
    @tw_marcas_img_tab1.objectName = "tw_marcas_img_tab1"
    @lb_infobr = Qt::Label.new(@tw_marcas_img_tab1)
    @lb_infobr.objectName = "lb_infobr"
    @lb_infobr.geometry = Qt::Rect.new(10, 130, 131, 31)
    @lb_infobr.wordWrap = true
    @lb_infotl = Qt::Label.new(@tw_marcas_img_tab1)
    @lb_infotl.objectName = "lb_infotl"
    @lb_infotl.geometry = Qt::Rect.new(10, 10, 131, 31)
    @lb_infotl.wordWrap = true
    @btn_tr = Qt::PushButton.new(@tw_marcas_img_tab1)
    @btn_tr.objectName = "btn_tr"
    @btn_tr.geometry = Qt::Rect.new(170, 50, 41, 31)
    @btn_tr.font = @font3
    icon1 = Qt::Icon.new
    icon1.addPixmap(Qt::Pixmap.new(":/controles/top-right-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_tr.icon = icon1
    @btn_tr.iconSize = Qt::Size.new(48, 48)
    @btn_bl = Qt::PushButton.new(@tw_marcas_img_tab1)
    @btn_bl.objectName = "btn_bl"
    @btn_bl.geometry = Qt::Rect.new(170, 90, 41, 31)
    @btn_bl.font = @font3
    icon2 = Qt::Icon.new
    icon2.addPixmap(Qt::Pixmap.new(":/controles/bottom-left-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_bl.icon = icon2
    @btn_bl.iconSize = Qt::Size.new(48, 48)
    @btn_br = Qt::PushButton.new(@tw_marcas_img_tab1)
    @btn_br.objectName = "btn_br"
    @btn_br.geometry = Qt::Rect.new(170, 130, 41, 31)
    @btn_br.font = @font3
    icon3 = Qt::Icon.new
    icon3.addPixmap(Qt::Pixmap.new(":/controles/bottom-right-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_br.icon = icon3
    @btn_br.iconSize = Qt::Size.new(48, 48)
    @btn_tl = Qt::PushButton.new(@tw_marcas_img_tab1)
    @btn_tl.objectName = "btn_tl"
    @btn_tl.geometry = Qt::Rect.new(170, 10, 41, 31)
    @btn_tl.font = @font3
    icon4 = Qt::Icon.new
    icon4.addPixmap(Qt::Pixmap.new(":/controles/top-left-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_tl.icon = icon4
    @btn_tl.iconSize = Qt::Size.new(48, 48)
    @lb_infobl = Qt::Label.new(@tw_marcas_img_tab1)
    @lb_infobl.objectName = "lb_infobl"
    @lb_infobl.geometry = Qt::Rect.new(10, 90, 131, 31)
    @lb_infobl.wordWrap = true
    @lb_infotr = Qt::Label.new(@tw_marcas_img_tab1)
    @lb_infotr.objectName = "lb_infotr"
    @lb_infotr.geometry = Qt::Rect.new(10, 50, 131, 31)
    @lb_infotr.wordWrap = true
    @lb_infoareapagina = Qt::Label.new(@tw_marcas_img_tab1)
    @lb_infoareapagina.objectName = "lb_infoareapagina"
    @lb_infoareapagina.geometry = Qt::Rect.new(10, 170, 131, 31)
    @btn_areapagina = Qt::PushButton.new(@tw_marcas_img_tab1)
    @btn_areapagina.objectName = "btn_areapagina"
    @btn_areapagina.geometry = Qt::Rect.new(170, 170, 41, 31)
    @btn_areapagina.font = @font3
    icon5 = Qt::Icon.new
    icon5.addPixmap(Qt::Pixmap.new(":/controles/pagination-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_areapagina.icon = icon5
    @btn_areapagina.iconSize = Qt::Size.new(48, 48)
    @lb_oktl = Qt::PushButton.new(@tw_marcas_img_tab1)
    @lb_oktl.objectName = "lb_oktl"
    @lb_oktl.geometry = Qt::Rect.new(210, 10, 51, 31)
    @font4 = Qt::Font.new
    @font4.family = "Arial"
    @font4.pointSize = 10
    @font4.bold = true
    @font4.weight = 75
    @lb_oktl.font = @font4
    @lb_oktl.flat = true
    @lb_oktr = Qt::PushButton.new(@tw_marcas_img_tab1)
    @lb_oktr.objectName = "lb_oktr"
    @lb_oktr.geometry = Qt::Rect.new(210, 50, 51, 31)
    @lb_oktr.font = @font4
    @lb_oktr.flat = true
    @lb_okbl = Qt::PushButton.new(@tw_marcas_img_tab1)
    @lb_okbl.objectName = "lb_okbl"
    @lb_okbl.geometry = Qt::Rect.new(210, 90, 51, 31)
    @lb_okbl.font = @font4
    @lb_okbl.flat = true
    @lb_okbr = Qt::PushButton.new(@tw_marcas_img_tab1)
    @lb_okbr.objectName = "lb_okbr"
    @lb_okbr.geometry = Qt::Rect.new(210, 130, 51, 31)
    @lb_okbr.font = @font4
    @lb_okbr.flat = true
    @lb_okareapagina = Qt::PushButton.new(@tw_marcas_img_tab1)
    @lb_okareapagina.objectName = "lb_okareapagina"
    @lb_okareapagina.geometry = Qt::Rect.new(210, 170, 51, 31)
    @lb_okareapagina.font = @font4
    @lb_okareapagina.flat = true
    @tw_marcas_img.addTab(@tw_marcas_img_tab1, Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tw_marcas_img_tab2 = Qt::Widget.new()
    @tw_marcas_img_tab2.objectName = "tw_marcas_img_tab2"
    @btn_tr_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_tr_2.objectName = "btn_tr_2"
    @btn_tr_2.geometry = Qt::Rect.new(170, 50, 41, 31)
    @btn_tr_2.font = @font3
    @btn_tr_2.icon = icon1
    @btn_tr_2.iconSize = Qt::Size.new(48, 48)
    @lb_infotl_2 = Qt::Label.new(@tw_marcas_img_tab2)
    @lb_infotl_2.objectName = "lb_infotl_2"
    @lb_infotl_2.geometry = Qt::Rect.new(10, 10, 131, 31)
    @lb_infotl_2.wordWrap = true
    @btn_bl_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_bl_2.objectName = "btn_bl_2"
    @btn_bl_2.geometry = Qt::Rect.new(170, 90, 41, 31)
    @btn_bl_2.font = @font3
    @btn_bl_2.icon = icon2
    @btn_bl_2.iconSize = Qt::Size.new(48, 48)
    @btn_br_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_br_2.objectName = "btn_br_2"
    @btn_br_2.geometry = Qt::Rect.new(170, 130, 41, 31)
    @btn_br_2.font = @font3
    @btn_br_2.icon = icon3
    @btn_br_2.iconSize = Qt::Size.new(48, 48)
    @lb_infobr_2 = Qt::Label.new(@tw_marcas_img_tab2)
    @lb_infobr_2.objectName = "lb_infobr_2"
    @lb_infobr_2.geometry = Qt::Rect.new(10, 130, 131, 31)
    @lb_infobr_2.wordWrap = true
    @btn_tl_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_tl_2.objectName = "btn_tl_2"
    @btn_tl_2.geometry = Qt::Rect.new(170, 10, 41, 31)
    @btn_tl_2.font = @font3
    @btn_tl_2.icon = icon4
    @btn_tl_2.iconSize = Qt::Size.new(48, 48)
    @lb_infobl_2 = Qt::Label.new(@tw_marcas_img_tab2)
    @lb_infobl_2.objectName = "lb_infobl_2"
    @lb_infobl_2.geometry = Qt::Rect.new(10, 90, 131, 31)
    @lb_infobl_2.wordWrap = true
    @lb_infotr_2 = Qt::Label.new(@tw_marcas_img_tab2)
    @lb_infotr_2.objectName = "lb_infotr_2"
    @lb_infotr_2.geometry = Qt::Rect.new(10, 50, 131, 31)
    @lb_infotr_2.wordWrap = true
    @lb_infoareapagina_2 = Qt::Label.new(@tw_marcas_img_tab2)
    @lb_infoareapagina_2.objectName = "lb_infoareapagina_2"
    @lb_infoareapagina_2.geometry = Qt::Rect.new(10, 170, 131, 31)
    @btn_areapagina_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @btn_areapagina_2.objectName = "btn_areapagina_2"
    @btn_areapagina_2.geometry = Qt::Rect.new(170, 170, 41, 31)
    @btn_areapagina_2.font = @font3
    @btn_areapagina_2.icon = icon5
    @btn_areapagina_2.iconSize = Qt::Size.new(48, 48)
    @lb_okareapagina_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @lb_okareapagina_2.objectName = "lb_okareapagina_2"
    @lb_okareapagina_2.geometry = Qt::Rect.new(230, 170, 51, 31)
    @lb_okareapagina_2.font = @font4
    @lb_okareapagina_2.flat = true
    @lb_okbr_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @lb_okbr_2.objectName = "lb_okbr_2"
    @lb_okbr_2.geometry = Qt::Rect.new(230, 130, 51, 31)
    @lb_okbr_2.font = @font4
    @lb_okbr_2.flat = true
    @lb_oktl_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @lb_oktl_2.objectName = "lb_oktl_2"
    @lb_oktl_2.geometry = Qt::Rect.new(230, 10, 51, 31)
    @lb_oktl_2.font = @font4
    @lb_oktl_2.flat = true
    @lb_oktr_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @lb_oktr_2.objectName = "lb_oktr_2"
    @lb_oktr_2.geometry = Qt::Rect.new(230, 50, 51, 31)
    @lb_oktr_2.font = @font4
    @lb_oktr_2.flat = true
    @lb_okbl_2 = Qt::PushButton.new(@tw_marcas_img_tab2)
    @lb_okbl_2.objectName = "lb_okbl_2"
    @lb_okbl_2.geometry = Qt::Rect.new(230, 90, 51, 31)
    @lb_okbl_2.font = @font4
    @lb_okbl_2.flat = true
    @tw_marcas_img.addTab(@tw_marcas_img_tab2, Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tw_marcas_img_tab3 = Qt::Widget.new()
    @tw_marcas_img_tab3.objectName = "tw_marcas_img_tab3"
    @btn_br_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @btn_br_3.objectName = "btn_br_3"
    @btn_br_3.geometry = Qt::Rect.new(170, 130, 41, 31)
    @btn_br_3.font = @font3
    @btn_br_3.icon = icon3
    @btn_br_3.iconSize = Qt::Size.new(48, 48)
    @lb_infobl_3 = Qt::Label.new(@tw_marcas_img_tab3)
    @lb_infobl_3.objectName = "lb_infobl_3"
    @lb_infobl_3.geometry = Qt::Rect.new(10, 90, 131, 31)
    @lb_infobl_3.wordWrap = true
    @lb_infobr_3 = Qt::Label.new(@tw_marcas_img_tab3)
    @lb_infobr_3.objectName = "lb_infobr_3"
    @lb_infobr_3.geometry = Qt::Rect.new(10, 130, 131, 31)
    @lb_infobr_3.wordWrap = true
    @lb_infotr_3 = Qt::Label.new(@tw_marcas_img_tab3)
    @lb_infotr_3.objectName = "lb_infotr_3"
    @lb_infotr_3.geometry = Qt::Rect.new(10, 50, 131, 31)
    @lb_infotr_3.wordWrap = true
    @btn_bl_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @btn_bl_3.objectName = "btn_bl_3"
    @btn_bl_3.geometry = Qt::Rect.new(170, 90, 41, 31)
    @btn_bl_3.font = @font3
    @btn_bl_3.icon = icon2
    @btn_bl_3.iconSize = Qt::Size.new(48, 48)
    @btn_tr_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @btn_tr_3.objectName = "btn_tr_3"
    @btn_tr_3.geometry = Qt::Rect.new(170, 50, 41, 31)
    @btn_tr_3.font = @font3
    @btn_tr_3.icon = icon1
    @btn_tr_3.iconSize = Qt::Size.new(48, 48)
    @btn_tl_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @btn_tl_3.objectName = "btn_tl_3"
    @btn_tl_3.geometry = Qt::Rect.new(170, 10, 41, 31)
    @btn_tl_3.font = @font3
    @btn_tl_3.icon = icon4
    @btn_tl_3.iconSize = Qt::Size.new(48, 48)
    @lb_infotl_3 = Qt::Label.new(@tw_marcas_img_tab3)
    @lb_infotl_3.objectName = "lb_infotl_3"
    @lb_infotl_3.geometry = Qt::Rect.new(10, 10, 131, 31)
    @lb_infotl_3.wordWrap = true
    @lb_infoareapagina_3 = Qt::Label.new(@tw_marcas_img_tab3)
    @lb_infoareapagina_3.objectName = "lb_infoareapagina_3"
    @lb_infoareapagina_3.geometry = Qt::Rect.new(10, 170, 131, 31)
    @btn_areapagina_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @btn_areapagina_3.objectName = "btn_areapagina_3"
    @btn_areapagina_3.geometry = Qt::Rect.new(170, 170, 41, 31)
    @btn_areapagina_3.font = @font3
    @btn_areapagina_3.icon = icon5
    @btn_areapagina_3.iconSize = Qt::Size.new(48, 48)
    @lb_okareapagina_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @lb_okareapagina_3.objectName = "lb_okareapagina_3"
    @lb_okareapagina_3.geometry = Qt::Rect.new(230, 170, 51, 31)
    @lb_okareapagina_3.font = @font4
    @lb_okareapagina_3.flat = true
    @lb_okbr_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @lb_okbr_3.objectName = "lb_okbr_3"
    @lb_okbr_3.geometry = Qt::Rect.new(230, 130, 51, 31)
    @lb_okbr_3.font = @font4
    @lb_okbr_3.flat = true
    @lb_oktl_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @lb_oktl_3.objectName = "lb_oktl_3"
    @lb_oktl_3.geometry = Qt::Rect.new(230, 10, 51, 31)
    @lb_oktl_3.font = @font4
    @lb_oktl_3.flat = true
    @lb_oktr_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @lb_oktr_3.objectName = "lb_oktr_3"
    @lb_oktr_3.geometry = Qt::Rect.new(230, 50, 51, 31)
    @lb_oktr_3.font = @font4
    @lb_oktr_3.flat = true
    @lb_okbl_3 = Qt::PushButton.new(@tw_marcas_img_tab3)
    @lb_okbl_3.objectName = "lb_okbl_3"
    @lb_okbl_3.geometry = Qt::Rect.new(230, 90, 51, 31)
    @lb_okbl_3.font = @font4
    @lb_okbl_3.flat = true
    @tw_marcas_img.addTab(@tw_marcas_img_tab3, Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @toolBox.addItem(@qwg_nombre_examen, Qt::Application.translate("frm_configuracion_examen", "Par\303\241metros b\303\241sicos", nil, Qt::Application::UnicodeUTF8))
    @qwg_select_codigo = Qt::Widget.new()
    @qwg_select_codigo.objectName = "qwg_select_codigo"
    @qwg_select_codigo.geometry = Qt::Rect.new(0, 0, 277, 467)
    @tw_codigoestudiante = Qt::TabWidget.new(@qwg_select_codigo)
    @tw_codigoestudiante.objectName = "tw_codigoestudiante"
    @tw_codigoestudiante.geometry = Qt::Rect.new(10, 10, 261, 441)
    @tw_codigoestudiante.font = @font3
    @tw_codigoestudiante_tab1 = Qt::Widget.new()
    @tw_codigoestudiante_tab1.objectName = "tw_codigoestudiante_tab1"
    @lb_puntoinicio = Qt::Label.new(@tw_codigoestudiante_tab1)
    @lb_puntoinicio.objectName = "lb_puntoinicio"
    @lb_puntoinicio.geometry = Qt::Rect.new(110, 110, 141, 21)
    @lb_puntoinicio.alignment = Qt::AlignCenter
    @lb_puntofin = Qt::Label.new(@tw_codigoestudiante_tab1)
    @lb_puntofin.objectName = "lb_puntofin"
    @lb_puntofin.geometry = Qt::Rect.new(110, 140, 141, 21)
    @lb_puntofin.alignment = Qt::AlignCenter
    @lb_selectcodigo = Qt::Label.new(@tw_codigoestudiante_tab1)
    @lb_selectcodigo.objectName = "lb_selectcodigo"
    @lb_selectcodigo.geometry = Qt::Rect.new(10, 20, 121, 41)
    @lb_selectcodigo.frameShadow = Qt::Frame::Plain
    @btn_capturarcodigo = Qt::PushButton.new(@tw_codigoestudiante_tab1)
    @btn_capturarcodigo.objectName = "btn_capturarcodigo"
    @btn_capturarcodigo.geometry = Qt::Rect.new(140, 25, 101, 27)
    @btn_capturarcodigo.font = @font3
    icon6 = Qt::Icon.new
    icon6.addPixmap(Qt::Pixmap.new(":/controles/blackboard-drawing-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_capturarcodigo.icon = icon6
    @lb_infoareacod = Qt::PushButton.new(@tw_codigoestudiante_tab1)
    @lb_infoareacod.objectName = "lb_infoareacod"
    @lb_infoareacod.geometry = Qt::Rect.new(10, 110, 98, 51)
    @font5 = Qt::Font.new
    @font5.family = "Arial"
    @font5.pointSize = 10
    @font5.bold = false
    @font5.weight = 50
    @lb_infoareacod.font = @font5
    @lb_infoareacod.flat = true
    @tw_codigoestudiante.addTab(@tw_codigoestudiante_tab1, Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tw_codigoestudiante_tab2 = Qt::Widget.new()
    @tw_codigoestudiante_tab2.objectName = "tw_codigoestudiante_tab2"
    @lb_selectcodigo_2 = Qt::Label.new(@tw_codigoestudiante_tab2)
    @lb_selectcodigo_2.objectName = "lb_selectcodigo_2"
    @lb_selectcodigo_2.geometry = Qt::Rect.new(10, 20, 121, 41)
    @lb_selectcodigo_2.frameShadow = Qt::Frame::Plain
    @lb_puntoinicio_2 = Qt::Label.new(@tw_codigoestudiante_tab2)
    @lb_puntoinicio_2.objectName = "lb_puntoinicio_2"
    @lb_puntoinicio_2.geometry = Qt::Rect.new(130, 110, 141, 21)
    @lb_puntoinicio_2.alignment = Qt::AlignCenter
    @btn_capturarcodigo_2 = Qt::PushButton.new(@tw_codigoestudiante_tab2)
    @btn_capturarcodigo_2.objectName = "btn_capturarcodigo_2"
    @btn_capturarcodigo_2.geometry = Qt::Rect.new(160, 25, 101, 27)
    @btn_capturarcodigo_2.font = @font3
    @btn_capturarcodigo_2.icon = icon6
    @lb_puntofin_2 = Qt::Label.new(@tw_codigoestudiante_tab2)
    @lb_puntofin_2.objectName = "lb_puntofin_2"
    @lb_puntofin_2.geometry = Qt::Rect.new(130, 140, 141, 21)
    @lb_puntofin_2.alignment = Qt::AlignCenter
    @lb_infoareacod_2 = Qt::PushButton.new(@tw_codigoestudiante_tab2)
    @lb_infoareacod_2.objectName = "lb_infoareacod_2"
    @lb_infoareacod_2.geometry = Qt::Rect.new(20, 110, 98, 51)
    @lb_infoareacod_2.font = @font5
    @lb_infoareacod_2.flat = true
    @tw_codigoestudiante.addTab(@tw_codigoestudiante_tab2, Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tw_codigoestudiante_tab3 = Qt::Widget.new()
    @tw_codigoestudiante_tab3.objectName = "tw_codigoestudiante_tab3"
    @lb_selectcodigo_3 = Qt::Label.new(@tw_codigoestudiante_tab3)
    @lb_selectcodigo_3.objectName = "lb_selectcodigo_3"
    @lb_selectcodigo_3.geometry = Qt::Rect.new(10, 20, 121, 41)
    @lb_selectcodigo_3.frameShadow = Qt::Frame::Plain
    @lb_puntoinicio_3 = Qt::Label.new(@tw_codigoestudiante_tab3)
    @lb_puntoinicio_3.objectName = "lb_puntoinicio_3"
    @lb_puntoinicio_3.geometry = Qt::Rect.new(130, 110, 141, 21)
    @lb_puntoinicio_3.alignment = Qt::AlignCenter
    @btn_capturarcodigo_3 = Qt::PushButton.new(@tw_codigoestudiante_tab3)
    @btn_capturarcodigo_3.objectName = "btn_capturarcodigo_3"
    @btn_capturarcodigo_3.geometry = Qt::Rect.new(160, 25, 101, 27)
    @btn_capturarcodigo_3.font = @font3
    @btn_capturarcodigo_3.icon = icon6
    @lb_puntofin_3 = Qt::Label.new(@tw_codigoestudiante_tab3)
    @lb_puntofin_3.objectName = "lb_puntofin_3"
    @lb_puntofin_3.geometry = Qt::Rect.new(130, 140, 141, 21)
    @lb_puntofin_3.alignment = Qt::AlignCenter
    @lb_infoareacod_3 = Qt::PushButton.new(@tw_codigoestudiante_tab3)
    @lb_infoareacod_3.objectName = "lb_infoareacod_3"
    @lb_infoareacod_3.geometry = Qt::Rect.new(20, 110, 98, 51)
    @lb_infoareacod_3.font = @font5
    @lb_infoareacod_3.flat = true
    @tw_codigoestudiante.addTab(@tw_codigoestudiante_tab3, Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @toolBox.addItem(@qwg_select_codigo, Qt::Application.translate("frm_configuracion_examen", "Configuraci\303\263n estudiante", nil, Qt::Application::UnicodeUTF8))
    @qwg_preg_resp = Qt::Widget.new()
    @qwg_preg_resp.objectName = "qwg_preg_resp"
    @qwg_preg_resp.geometry = Qt::Rect.new(0, 0, 277, 467)
    @verticalLayoutWidget = Qt::Widget.new(@qwg_preg_resp)
    @verticalLayoutWidget.objectName = "verticalLayoutWidget"
    @verticalLayoutWidget.geometry = Qt::Rect.new(0, 0, 271, 461)
    @vl_1 = Qt::VBoxLayout.new(@verticalLayoutWidget)
    @vl_1.objectName = "vl_1"
    @vl_1.setContentsMargins(0, 0, 1, 0)
    @formLayout = Qt::FormLayout.new()
    @formLayout.objectName = "formLayout"
    @formLayout.fieldGrowthPolicy = Qt::FormLayout::AllNonFixedFieldsGrow
    @lb_infopagina = Qt::Label.new(@verticalLayoutWidget)
    @lb_infopagina.objectName = "lb_infopagina"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @lb_infopagina)

    @le_npaginapregunta = Qt::LineEdit.new(@verticalLayoutWidget)
    @le_npaginapregunta.objectName = "le_npaginapregunta"
    @le_npaginapregunta.font = @font3
    @le_npaginapregunta.maxLength = 1
    @le_npaginapregunta.alignment = Qt::AlignCenter
    @le_npaginapregunta.readOnly = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @le_npaginapregunta)

    @lb_npregunta = Qt::Label.new(@verticalLayoutWidget)
    @lb_npregunta.objectName = "lb_npregunta"

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @lb_npregunta)

    @le_npregunta = Qt::LineEdit.new(@verticalLayoutWidget)
    @le_npregunta.objectName = "le_npregunta"
    @le_npregunta.font = @font3
    @le_npregunta.inputMethodHints = Qt::ImhNone
    @le_npregunta.alignment = Qt::AlignCenter

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @le_npregunta)

    @lb_tipopregunta = Qt::Label.new(@verticalLayoutWidget)
    @lb_tipopregunta.objectName = "lb_tipopregunta"

    @formLayout.setWidget(2, Qt::FormLayout::LabelRole, @lb_tipopregunta)

    @cb_tipopregunta = Qt::ComboBox.new(@verticalLayoutWidget)
    @cb_tipopregunta.objectName = "cb_tipopregunta"
    @cb_tipopregunta.font = @font3

    @formLayout.setWidget(2, Qt::FormLayout::FieldRole, @cb_tipopregunta)

    @lb_nrespuestas = Qt::Label.new(@verticalLayoutWidget)
    @lb_nrespuestas.objectName = "lb_nrespuestas"

    @formLayout.setWidget(3, Qt::FormLayout::LabelRole, @lb_nrespuestas)

    @le_nrespuestas = Qt::LineEdit.new(@verticalLayoutWidget)
    @le_nrespuestas.objectName = "le_nrespuestas"
    @le_nrespuestas.font = @font3
    @le_nrespuestas.maxLength = 2
    @le_nrespuestas.alignment = Qt::AlignCenter

    @formLayout.setWidget(3, Qt::FormLayout::FieldRole, @le_nrespuestas)

    @lb_arearespuestas = Qt::Label.new(@verticalLayoutWidget)
    @lb_arearespuestas.objectName = "lb_arearespuestas"

    @formLayout.setWidget(4, Qt::FormLayout::LabelRole, @lb_arearespuestas)

    @cb_respuestas = Qt::ComboBox.new(@verticalLayoutWidget)
    @cb_respuestas.objectName = "cb_respuestas"
    @cb_respuestas.font = @font3
    @cb_respuestas.styleSheet = "QComboBox{\n" \
"text-align: center;\n" \
"	font: 10pt \"Arial\";\n" \
"	color: rgb(0, 0, 0);\n" \
"}"
    @cb_respuestas.maxCount = 100

    @formLayout.setWidget(4, Qt::FormLayout::FieldRole, @cb_respuestas)

    @btn_arearespuesta = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_arearespuesta.objectName = "btn_arearespuesta"
    @btn_arearespuesta.enabled = false
    @btn_arearespuesta.font = @font3
    @btn_arearespuesta.styleSheet = "color: rgb(255, 0, 0);"
    @btn_arearespuesta.icon = icon6

    @formLayout.setWidget(5, Qt::FormLayout::FieldRole, @btn_arearespuesta)

    @lb_respuestascorrectas = Qt::Label.new(@verticalLayoutWidget)
    @lb_respuestascorrectas.objectName = "lb_respuestascorrectas"

    @formLayout.setWidget(6, Qt::FormLayout::LabelRole, @lb_respuestascorrectas)

    @hl_5 = Qt::HBoxLayout.new()
    @hl_5.objectName = "hl_5"
    @le_respuesta_correcta = Qt::LineEdit.new(@verticalLayoutWidget)
    @le_respuesta_correcta.objectName = "le_respuesta_correcta"
    @le_respuesta_correcta.enabled = false
    @font6 = Qt::Font.new
    @font6.family = "Arial"
    @font6.pointSize = 9
    @le_respuesta_correcta.font = @font6
    @le_respuesta_correcta.maxLength = 8

    @hl_5.addWidget(@le_respuesta_correcta)

    @btn_actualizar_respuesta = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_actualizar_respuesta.objectName = "btn_actualizar_respuesta"
    @btn_actualizar_respuesta.enabled = false
    @btn_actualizar_respuesta.minimumSize = Qt::Size.new(32, 24)
    icon7 = Qt::Icon.new
    icon7.addPixmap(Qt::Pixmap.new(":/controles/accept-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_actualizar_respuesta.icon = icon7

    @hl_5.addWidget(@btn_actualizar_respuesta)


    @formLayout.setLayout(6, Qt::FormLayout::FieldRole, @hl_5)


    @vl_1.addLayout(@formLayout)

    @hl_2 = Qt::HBoxLayout.new()
    @hl_2.objectName = "hl_2"
    @btn_insertar = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_insertar.objectName = "btn_insertar"
    @btn_insertar.font = @font3
    icon8 = Qt::Icon.new
    icon8.addPixmap(Qt::Pixmap.new(":/controles/insert-table-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_insertar.icon = icon8
    @btn_insertar.iconSize = Qt::Size.new(16, 16)

    @hl_2.addWidget(@btn_insertar)

    @btn_eliminar = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_eliminar.objectName = "btn_eliminar"
    @btn_eliminar.enabled = true
    @btn_eliminar.font = @font3
    icon9 = Qt::Icon.new
    icon9.addPixmap(Qt::Pixmap.new(":/controles/delete-table-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_eliminar.icon = icon9

    @hl_2.addWidget(@btn_eliminar)

    @btn_limpiar = Qt::PushButton.new(@verticalLayoutWidget)
    @btn_limpiar.objectName = "btn_limpiar"
    @btn_limpiar.enabled = true
    @btn_limpiar.font = @font3
    icon10 = Qt::Icon.new
    icon10.addPixmap(Qt::Pixmap.new(":/controles/broom-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_limpiar.icon = icon10

    @hl_2.addWidget(@btn_limpiar)


    @vl_1.addLayout(@hl_2)

    @tbl_preguntas = Qt::TableWidget.new(@verticalLayoutWidget)
    @tbl_preguntas.objectName = "tbl_preguntas"
    @tbl_preguntas.enabled = true
    @font7 = Qt::Font.new
    @font7.family = "Arial"
    @font7.pointSize = 10
    @font7.bold = true
    @font7.italic = false
    @font7.weight = 75
    @tbl_preguntas.font = @font7
    @tbl_preguntas.selectionMode = Qt::AbstractItemView::SingleSelection
    @tbl_preguntas.selectionBehavior = Qt::AbstractItemView::SelectRows
    @tbl_preguntas.gridStyle = Qt::DotLine
    @tbl_preguntas.sortingEnabled = true

    @vl_1.addWidget(@tbl_preguntas)

    @toolBox.addItem(@qwg_preg_resp, Qt::Application.translate("frm_configuracion_examen", "Configuraci\303\263n preguntas y respuestas", nil, Qt::Application::UnicodeUTF8))

    @horizontalLayout.addWidget(@toolBox)


    @gridLayout.addWidget(@groupBoxP, 1, 0, 1, 2)

    @tw_img = Qt::TabWidget.new(frm_configuracion_examen)
    @tw_img.objectName = "tw_img"
    @tw_img.enabled = true
    @font8 = Qt::Font.new
    @font8.family = "Arial"
    @font8.pointSize = 11
    @tw_img.font = @font8
    @tw_img_tab1 = Qt::Widget.new()
    @tw_img_tab1.objectName = "tw_img_tab1"
    @horizontalLayout_3 = Qt::HBoxLayout.new(@tw_img_tab1)
    @horizontalLayout_3.objectName = "horizontalLayout_3"
    @qgvImageView = Qt::GraphicsView.new(@tw_img_tab1)
    @qgvImageView.objectName = "qgvImageView"
    @qgvImageView.mouseTracking = true
    @qgvImageView.viewportUpdateMode = Qt::GraphicsView::BoundingRectViewportUpdate

    @horizontalLayout_3.addWidget(@qgvImageView)

    @tw_img.addTab(@tw_img_tab1, Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tw_img_tab2 = Qt::Widget.new()
    @tw_img_tab2.objectName = "tw_img_tab2"
    @horizontalLayout_2 = Qt::HBoxLayout.new(@tw_img_tab2)
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @qgvImageView2 = Qt::GraphicsView.new(@tw_img_tab2)
    @qgvImageView2.objectName = "qgvImageView2"
    @qgvImageView2.mouseTracking = true
    @qgvImageView2.viewportUpdateMode = Qt::GraphicsView::BoundingRectViewportUpdate

    @horizontalLayout_2.addWidget(@qgvImageView2)

    @tw_img.addTab(@tw_img_tab2, Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tw_img_tab3 = Qt::Widget.new()
    @tw_img_tab3.objectName = "tw_img_tab3"
    @horizontalLayout_4 = Qt::HBoxLayout.new(@tw_img_tab3)
    @horizontalLayout_4.objectName = "horizontalLayout_4"
    @qgvImageView3 = Qt::GraphicsView.new(@tw_img_tab3)
    @qgvImageView3.objectName = "qgvImageView3"
    @qgvImageView3.mouseTracking = true
    @qgvImageView3.viewportUpdateMode = Qt::GraphicsView::BoundingRectViewportUpdate

    @horizontalLayout_4.addWidget(@qgvImageView3)

    @tw_img.addTab(@tw_img_tab3, Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))

    @gridLayout.addWidget(@tw_img, 1, 2, 2, 1)

    @btn_guardar = Qt::PushButton.new(frm_configuracion_examen)
    @btn_guardar.objectName = "btn_guardar"
    @btn_guardar.font = @font1
    icon11 = Qt::Icon.new
    icon11.addPixmap(Qt::Pixmap.new(":/controles/save-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_guardar.icon = icon11

    @gridLayout.addWidget(@btn_guardar, 2, 0, 1, 1)

    @btn_cancelar = Qt::PushButton.new(frm_configuracion_examen)
    @btn_cancelar.objectName = "btn_cancelar"
    @btn_cancelar.font = @font1
    icon12 = Qt::Icon.new
    icon12.addPixmap(Qt::Pixmap.new(":/controles/delete-icon.png"), Qt::Icon::Normal, Qt::Icon::Off)
    @btn_cancelar.icon = icon12

    @gridLayout.addWidget(@btn_cancelar, 2, 1, 1, 1)


    retranslateUi(frm_configuracion_examen)
    Qt::Object.connect(@btn_cancelar, SIGNAL('clicked()'), frm_configuracion_examen, SLOT('close()'))

    @toolBox.setCurrentIndex(0)
    @tw_marcas_img.setCurrentIndex(0)
    @tw_codigoestudiante.setCurrentIndex(0)
    @tw_img.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(frm_configuracion_examen)
    end # setupUi

    def setup_ui(frm_configuracion_examen)
        setupUi(frm_configuracion_examen)
    end

    def retranslateUi(frm_configuracion_examen)
    frm_configuracion_examen.windowTitle = Qt::Application.translate("frm_configuracion_examen", "Form", nil, Qt::Application::UnicodeUTF8)
    @lb_datosexamen.text = Qt::Application.translate("frm_configuracion_examen", "Par\303\241metros del examen", nil, Qt::Application::UnicodeUTF8)
    @lb_panel.text = Qt::Application.translate("frm_configuracion_examen", "Panel central de imagen", nil, Qt::Application::UnicodeUTF8)
    @groupBoxP.title = ''
    @nombreExamenLb.text = Qt::Application.translate("frm_configuracion_examen", "Nombre examen:", nil, Qt::Application::UnicodeUTF8)
    @lb_cambiarimg.text = Qt::Application.translate("frm_configuracion_examen", "Cambiar imagen :", nil, Qt::Application::UnicodeUTF8)
    @btn_cambiarimg.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Se cambiar\303\241 la imagen de acuerdo a la pesta\303\261a seleccionada</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_cambiarimg.text = Qt::Application.translate("frm_configuracion_examen", "Seleccionar", nil, Qt::Application::UnicodeUTF8)
    @lb_infobr.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior der:", nil, Qt::Application::UnicodeUTF8)
    @lb_infotl.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior izq:", nil, Qt::Application::UnicodeUTF8)
    @btn_tr.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tr.text = ''
    @btn_bl.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_bl.text = ''
    @btn_br.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_br.text = ''
    @btn_tl.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tl.text = ''
    @lb_infobl.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior izq:", nil, Qt::Application::UnicodeUTF8)
    @lb_infotr.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior der:", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareapagina.text = Qt::Application.translate("frm_configuracion_examen", "Indicador p\303\241gina:", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n de la numeraci\303\263n de la p\303\241gina</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina.text = ''
    @lb_oktl.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_oktr.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbl.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbr.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okareapagina.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @tw_marcas_img.setTabText(@tw_marcas_img.indexOf(@tw_marcas_img_tab1), Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @btn_tr_2.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tr_2.text = ''
    @lb_infotl_2.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior izq:", nil, Qt::Application::UnicodeUTF8)
    @btn_bl_2.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_bl_2.text = ''
    @btn_br_2.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_br_2.text = ''
    @lb_infobr_2.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior der:", nil, Qt::Application::UnicodeUTF8)
    @btn_tl_2.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tl_2.text = ''
    @lb_infobl_2.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior izq:", nil, Qt::Application::UnicodeUTF8)
    @lb_infotr_2.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior der:", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareapagina_2.text = Qt::Application.translate("frm_configuracion_examen", "Indicador p\303\241gina:", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina_2.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina_2.text = ''
    @lb_okareapagina_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbr_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_oktl_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_oktr_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbl_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @tw_marcas_img.setTabText(@tw_marcas_img.indexOf(@tw_marcas_img_tab2), Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @btn_br_3.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_br_3.text = ''
    @lb_infobl_3.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior izq:", nil, Qt::Application::UnicodeUTF8)
    @lb_infobr_3.text = Qt::Application.translate("frm_configuracion_examen", "Esquina inferior der:", nil, Qt::Application::UnicodeUTF8)
    @lb_infotr_3.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior der:", nil, Qt::Application::UnicodeUTF8)
    @btn_bl_3.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_bl_3.text = ''
    @btn_tr_3.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tr_3.text = ''
    @btn_tl_3.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina superior izquierda</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_tl_3.text = ''
    @lb_infotl_3.text = Qt::Application.translate("frm_configuracion_examen", "Esquina superior izq:", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareapagina_3.text = Qt::Application.translate("frm_configuracion_examen", "Indicador p\303\241gina:", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina_3.toolTip = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p>Captura la selecci\303\263n del marco en su esquina inferior derecha</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_areapagina_3.text = ''
    @lb_okareapagina_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbr_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_oktl_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_oktr_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_okbl_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @tw_marcas_img.setTabText(@tw_marcas_img.indexOf(@tw_marcas_img_tab3), Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @toolBox.setItemText(@toolBox.indexOf(@qwg_nombre_examen), Qt::Application.translate("frm_configuracion_examen", "Par\303\241metros b\303\241sicos", nil, Qt::Application::UnicodeUTF8))
    @lb_puntoinicio.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_puntofin.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_selectcodigo.text = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p align=\"center\">Seleccionar c\303\263digo<br/>estudiante</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @btn_capturarcodigo.text = Qt::Application.translate("frm_configuracion_examen", "Capturar", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareacod.text = Qt::Application.translate("frm_configuracion_examen", "Area \n" \
" seleccionada:", nil, Qt::Application::UnicodeUTF8)
    @tw_codigoestudiante.setTabText(@tw_codigoestudiante.indexOf(@tw_codigoestudiante_tab1), Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @lb_selectcodigo_2.text = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p align=\"center\">Seleccionar c\303\263digo<br/>estudiante</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @lb_puntoinicio_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @btn_capturarcodigo_2.text = Qt::Application.translate("frm_configuracion_examen", "Capturar", nil, Qt::Application::UnicodeUTF8)
    @lb_puntofin_2.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareacod_2.text = Qt::Application.translate("frm_configuracion_examen", "Area \n" \
" seleccionada:", nil, Qt::Application::UnicodeUTF8)
    @tw_codigoestudiante.setTabText(@tw_codigoestudiante.indexOf(@tw_codigoestudiante_tab2), Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @lb_selectcodigo_3.text = Qt::Application.translate("frm_configuracion_examen", "<html><head/><body><p align=\"center\">Seleccionar c\303\263digo<br/>estudiante</p></body></html>", nil, Qt::Application::UnicodeUTF8)
    @lb_puntoinicio_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @btn_capturarcodigo_3.text = Qt::Application.translate("frm_configuracion_examen", "Capturar", nil, Qt::Application::UnicodeUTF8)
    @lb_puntofin_3.text = Qt::Application.translate("frm_configuracion_examen", "-", nil, Qt::Application::UnicodeUTF8)
    @lb_infoareacod_3.text = Qt::Application.translate("frm_configuracion_examen", "Area \n" \
" seleccionada:", nil, Qt::Application::UnicodeUTF8)
    @tw_codigoestudiante.setTabText(@tw_codigoestudiante.indexOf(@tw_codigoestudiante_tab3), Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @toolBox.setItemText(@toolBox.indexOf(@qwg_select_codigo), Qt::Application.translate("frm_configuracion_examen", "Configuraci\303\263n estudiante", nil, Qt::Application::UnicodeUTF8))
    @lb_infopagina.text = Qt::Application.translate("frm_configuracion_examen", "P\303\241gina #", nil, Qt::Application::UnicodeUTF8)
    @le_npaginapregunta.text = Qt::Application.translate("frm_configuracion_examen", "1", nil, Qt::Application::UnicodeUTF8)
    @lb_npregunta.text = Qt::Application.translate("frm_configuracion_examen", "Pregunta # ", nil, Qt::Application::UnicodeUTF8)
    @le_npregunta.text = Qt::Application.translate("frm_configuracion_examen", "1", nil, Qt::Application::UnicodeUTF8)
    @lb_tipopregunta.text = Qt::Application.translate("frm_configuracion_examen", "Tipo pregunta", nil, Qt::Application::UnicodeUTF8)
    @cb_tipopregunta.insertItems(0, [Qt::Application.translate("frm_configuracion_examen", "0 - \303\232nica respuesta", nil, Qt::Application::UnicodeUTF8),
        Qt::Application.translate("frm_configuracion_examen", "1 - M\303\272ltiple respuesta", nil, Qt::Application::UnicodeUTF8)])
    @lb_nrespuestas.text = Qt::Application.translate("frm_configuracion_examen", "N\303\272mero de respuestas", nil, Qt::Application::UnicodeUTF8)
    @le_nrespuestas.text = Qt::Application.translate("frm_configuracion_examen", "0", nil, Qt::Application::UnicodeUTF8)
    @lb_arearespuestas.text = Qt::Application.translate("frm_configuracion_examen", "Respuestas", nil, Qt::Application::UnicodeUTF8)
    @btn_arearespuesta.text = Qt::Application.translate("frm_configuracion_examen", "Capturar", nil, Qt::Application::UnicodeUTF8)
    @lb_respuestascorrectas.text = Qt::Application.translate("frm_configuracion_examen", "Valor respuesta", nil, Qt::Application::UnicodeUTF8)
    @le_respuesta_correcta.toolTip = Qt::Application.translate("frm_configuracion_examen", "Registra el valor de cada pregunta. El valor predeterminado es cero", nil, Qt::Application::UnicodeUTF8)
    @le_respuesta_correcta.text = Qt::Application.translate("frm_configuracion_examen", "0", nil, Qt::Application::UnicodeUTF8)
    @btn_actualizar_respuesta.toolTip = Qt::Application.translate("frm_configuracion_examen", "Asigna el valor indicado en la casilla, a la respuesta indicada como correcta", nil, Qt::Application::UnicodeUTF8)
    @btn_actualizar_respuesta.text = ''
    @btn_insertar.text = Qt::Application.translate("frm_configuracion_examen", "Insertar", nil, Qt::Application::UnicodeUTF8)
    @btn_eliminar.text = Qt::Application.translate("frm_configuracion_examen", "Eliminar", nil, Qt::Application::UnicodeUTF8)
    @btn_limpiar.text = Qt::Application.translate("frm_configuracion_examen", "Limpiar", nil, Qt::Application::UnicodeUTF8)
    if @tbl_preguntas.columnCount < 7
        @tbl_preguntas.columnCount = 7
    end

    __colItem = Qt::TableWidgetItem.new
    __colItem.setText(Qt::Application.translate("frm_configuracion_examen", "Pag #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(0, __colItem)

    __colItem1 = Qt::TableWidgetItem.new
    __colItem1.setText(Qt::Application.translate("frm_configuracion_examen", "Preg #", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(1, __colItem1)

    __colItem2 = Qt::TableWidgetItem.new
    __colItem2.setText(Qt::Application.translate("frm_configuracion_examen", "# Resp", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(2, __colItem2)

    __colItem3 = Qt::TableWidgetItem.new
    __colItem3.setText(Qt::Application.translate("frm_configuracion_examen", "RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(3, __colItem3)

    __colItem4 = Qt::TableWidgetItem.new
    __colItem4.setText(Qt::Application.translate("frm_configuracion_examen", "Coordenadas RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(4, __colItem4)

    __colItem5 = Qt::TableWidgetItem.new
    __colItem5.setText(Qt::Application.translate("frm_configuracion_examen", "Puntuacion RESP", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(5, __colItem5)

    __colItem6 = Qt::TableWidgetItem.new
    __colItem6.setText(Qt::Application.translate("frm_configuracion_examen", "Tipo resp", nil, Qt::Application::UnicodeUTF8))
    @tbl_preguntas.setHorizontalHeaderItem(6, __colItem6)
    @toolBox.setItemText(@toolBox.indexOf(@qwg_preg_resp), Qt::Application.translate("frm_configuracion_examen", "Configuraci\303\263n preguntas y respuestas", nil, Qt::Application::UnicodeUTF8))
    @tw_img.setTabText(@tw_img.indexOf(@tw_img_tab1), Qt::Application.translate("frm_configuracion_examen", "Imagen 1", nil, Qt::Application::UnicodeUTF8))
    @tw_img.setTabText(@tw_img.indexOf(@tw_img_tab2), Qt::Application.translate("frm_configuracion_examen", "Imagen 2", nil, Qt::Application::UnicodeUTF8))
    @tw_img.setTabText(@tw_img.indexOf(@tw_img_tab3), Qt::Application.translate("frm_configuracion_examen", "Imagen 3", nil, Qt::Application::UnicodeUTF8))
    @btn_guardar.text = Qt::Application.translate("frm_configuracion_examen", "Guardar", nil, Qt::Application::UnicodeUTF8)
    @btn_cancelar.text = Qt::Application.translate("frm_configuracion_examen", "Cancelar", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(frm_configuracion_examen)
        retranslateUi(frm_configuracion_examen)
    end

end

module Ui
    class Frm_configuracion_examen < Ui_Frm_configuracion_examen
    end
end  # module Ui

