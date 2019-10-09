require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/data_contents'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class IndexPage
  extend Capybara::DSL

  class << self




    #Función que abre la pagina de inicio en CD, del ambiente y país requerido.
    def open_app
      environment_url = Utils.environment_url
      country = Utils.country_name
      Info.basic "Visitando #{environment_url}"
      Info.medium "Ambiente actual: #{environment_url}."
      Info.medium "País actual: #{country}."
      if country == "mexico"
        #page.execute_script('getLocalStorage.clear')
        visit "#{environment_url}/?country=#{country}"
      else
        visit "#{environment_url}/?country=#{country}"
      end
      if $brow.to_s.downcase.strip == "safari"
        visit "#{environment_url}/?country=#{country}"
      end
    end

    #Función que valida los elementos de la pagina de inicio en CD.
    def validate_page
      contents = for_contents(Utils.country)
      contents[:textos].each do |key,text|
        find(:css,'a', text: text,wait:10)
      end
      contents[:imagenes].each  do |key,img|
        all(:css,img, minimum: 1, wait:10)
      end
      contents[:links].each do|key,link|
        page.all(:css,link, minimum: 1, wait:10)
      end
      contents[:css].each do |key,css|
        all(:css, css, maximum: 2,wait:10)
      end
      first(:css, 'a.register', text: contents[:contents][:register], wait:10)
      first(:css,'a.login', text: contents[:contents][:login], wait:10)
      find(:css, 'a.btn', text: contents[:contents][:promo], wait:10)
      find(:css, 'a.btn-login', text: contents[:contents][:login_button], wait:10)
    end


    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      contents = for_contents(Utils.country)
      case button.to_sym
      when :login
          page.find(:css, 'a.btn-login-landing', text: contents[:contents][:login_button], wait:10).click
          #find(:css, 'a.btn-login', text:'INICIA SESIÓN', wait:10).click
        when :registration
          #page.find(:css, 'a.register',visible: true,  wait:20).click
          find(:css, 'a.register', wait:10).click
        else
          raise "#{button}, no es un boton valido."
      end
    end

  end
end
