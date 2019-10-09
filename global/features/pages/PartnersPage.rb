require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/data_contents'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class PartnerPage
  extend Capybara::DSL



  class << self

    #Funcion para validar los elementos de la pagina partners.
    # recorre un hash para buscar los links de cada partner.
    def validate_page
      contents = all(:css, "li.tab_selector",maximum:5, wait:10).count
      puts "Se econtraron: '#{contents}' partners"
    end

    #Función para seleccionar una opción de partner.,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al partner según el valor recibido,
    def select_partner(partner)
      case partner.to_sym
        when :telmex
          all(:css, "li.tab_selector", maximum:5, wait:10)[0].click
        when :telcel
          all(:css, "li.tab_selector", maximum:5, wait:10)[1].click
        when :'claro musica'
          all(:css, "li.tab_selector", maximum:5, wait:10)[2].click
        when :'claro video'
          all(:css, "li.tab_selector", maximum:5, wait:10)[3].click
        when :email
          all(:css, "li.tab_selector", maximum:5, wait:10)[4].click
        else
          raise "Partner #{partner} inválido."
      end
    end
  end
end