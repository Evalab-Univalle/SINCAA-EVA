require 'dialog_abrir_imagenes.rb'
require 'test/unit'
 
class TestAbrirImagenes < Test::Unit::TestCase
  
  def test_importarimagen
  
	a = Qt::Application.new(ARGV)
	
	window = Dlg_abrir_imagenes.new
	ar_img = window.archivos_qimage
	
	assert_instance_of(Qt::Image, ar_img[0])
	assert_not_nil(ar_img[0])
	assert_instance_of(Array, ar_img)
  end
  
end
