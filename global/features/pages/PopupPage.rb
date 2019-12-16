require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class PopupPage
  extend Capybara::DSL

  @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents = {
      :your_files => @data_content['your_files'],
      :download_app =>  @data_content['download_app'],
      :terms_popup =>  @data_content['terms_popup']
  }

  class << self

    #Funcion para validar los elementos del popup,
    # busca los elementos que se muestran dentro del popup,
    # al iniciar sesión por primera vez.
    def validate_page
      popup = find(:id, 'popup', wait:30)
      within(popup)do
        all(:css,'div', text: @contents[:your_files], maximum: 2, wait:30)
        find(:css,'div', text: @contents[:download_app], wait:10)
        find(:css, 'div.logos', wait:10)
        find(:css,'a', text: @contents[:terms_popup], wait:10)
        find(:css,'img[src="/apps/amx_branding/img/popup/google-play.svg"]', wait:10)
        puts "Se encontro Descarga Google".cyan
        find(:css,'img[src="/apps/amx_branding/img/popup/app-store.svg"]', wait:10)
        puts "Se encontro Descarga IOS".cyan
        find(:css,'img[src="/apps/amx_branding/img/popup/claro-box-for-desk.svg"]', wait:10)
        puts "Se encontro Descarga Desktop".cyan
        all(:css, 'div.plan', wait:10)[0]
        puts "Se encontro Plan 150gb".cyan
        all(:css, 'div.plan', wait:10)[1]
        puts "Se encontro Plan 250gb".cyan
        all(:css, 'div.plan', wait:10)[2]
        puts "Se encontro Plan 1024gb".cyan
        find(:css, 'div.links', wait:10)
        puts "Términos y política de privacidad".cyan
      end
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,

    def click_but(but)
      case but.to_sym
      when :'Google play'
        find(:css, 'a[href="https://play.google.com/store/apps/details?id=com.clarodrive.android', wait:10).click
        sleep 10

      when :'App store'
        find(:css, 'a[href="https://itunes.apple.com/mx/app/claro-drive/id1250666367?mt=8', wait:10).click
        sleep 10

      when :'Claro desktop'
        find(:css, 'a[href="https://test-portal.clarodrive.com/download_inside', wait:10).click
        sleep 10

      when :'Terminos y privacidad'
        find(:css, 'a[href="https://test-portal.clarodrive.com/terms_inside', wait:10).click
        sleep 10



      end
    end

    def click_button(button)
      case button.to_sym
        when :'claro drive for mac'
          find(:css,'img[src="/apps/amx_branding/img/popup/google-play.svg"]', wait:10).click
        when :'app store'
          find(:css,'img[src="/apps/amx_branding/img/popup/app-store.svg"]', wait:10).click
        when :'google play'
          find(:css,'img[src="/apps/amx_branding/img/popup/claro-box-for-desk.svg"]', wait:10).click
        when :'terms and conditions'
          find(:css,'a', text: @contents[:terms_popup], wait: 10).click
        when :'75gb'
          all(:css, 'div.plan', wait:10)[0].click
        when :'150gb'
          all(:css, 'div.plan', wait:10)[1].click
        when :'1024gb'
          all(:css, 'div.plan', wait:10)[2].click
        when :close
          find(:id, 'cboxClose', wait:10).click
        else
          raise "#{button}, no es un boton valido"
      end
    end

    #Función para regresar a la primera pestaña,
    # después de haber abierto una pestaña en el navegador.
    def back_to_page
      driver.switch_to.window(driver.window_handles.first)
    end

  end
end