require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class PlansPage
  extend Capybara::DSL

  class << self

    #Funcion para validar los elementos de la pagina de planes.
    def validate_page
      sleep 5
      form = find(:css, 'ng-component', wait:10)
      within(form)do
        all(:css, 'div.offers-container', maximum: 4, wait:10)
      end
    end


    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
        when :accept
          find(:css,'button.button-blue', wait:30).click
        when :cancel
          find(:css,'div.generic-cancel-link', wait:30).click
        when :resend
          find(:id, 'resendPassword', wait:30).click
        when :back
          find(:css, 'div.arrow', wait:30).click
        when :resend
          find(:id, 'resendPassword', wait:30).click
        when :continue
          find(:css,'a.button-blue',wait:10).click
        else
          raise "#{button}, no es un boton valido"
      end
    end


    #Función para seleccionar un plan,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al tipo de plan según el valor recibido,
    def click_plan(plan)
      case plan.to_sym
        when :'25gb'
          all(:css, 'div.offers-container', minimum:4, wait:10)[0].click
        when :'75gb'
          all(:css, 'div.offers-container', minimum:4, wait:10)[1].click
        when :'150gb'
          all(:css, 'div.offers-container', minimum:4, wait:10)[2].click
        when :'1024gb'
          all(:css, 'div.offers-container', minimum:4, wait:10)[3].click
        when :back
          find(:css, 'a',text:'CANCELAR', wait:30).click
        else
          raise "#{plan}, plan no existe"
      end

    end

  end
end
