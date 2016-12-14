require 'Qt'
require 'ventanaprincipal.rb'

a = Qt::Application.new(ARGV)
window = VentanaPrincipal.new
window.show
a.exec
