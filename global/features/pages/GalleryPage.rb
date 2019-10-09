require_relative '../../../helpers/validate_gallery'
require_relative '../../../helpers/buttons_gallery'
require 'colorize'
class GalleryPage
  extend Capybara::DSL
  class << self
    def click_on(button)
      @value = ButtonsGallery.buton_selector(button)
      puts "Se dio correctamente #{@value}".yellow
      Capybara.send(@value[:metodo],:css,@value[:etiqueta],wait:30).click unless @value[:metodo] == 'all'
      Capybara.send(@value[:metodo],:css,@value[:etiqueta],wait:30)[@value[:position]].click if @value[:metodo] == 'all'
    end
    def validate_button(button)
      button = :"photo" if
        button == :"photo 1" || button == :"photo 2"|| button == :"photo 3" || button == :"photo 4" || button == :"photo 5" ||
          button == :"photo 6" || button == :"photo 7" || button == :"photo 8" || button == :"photo 9" || button == :"photo 10"
      @elements_to_valid = ValidateGalery.validate_function(button)
      @elements_to_valid.each do |key,value|
        @valor = value
        @texto = false
        @texto = true if value.include? :texto
        case @texto
        when true
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],text:@valor[:texto],wait:5) unless @valor[:metodo] == 'all'
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],text:@valor[:texto],wait:5)[@valor[:indice]] if @valor[:metodo] == 'all'
          puts "Se valido correctamente el elemento #{@valor[:etiqueta]}".yellow
        else
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],wait:30) unless @valor[:metodo] == 'all'
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],wait:30)[@valor[:indice]] if @valor[:metodo] == 'all'
          puts "Se valido correctamente el elemento #{@valor[:etiqueta]}".yellow
        end
      end
    end
  end
end