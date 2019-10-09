require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class LoginEmailPage
  extend Capybara::DSL

  @data_contents = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents = {
      :forgot => @data_contents['forgot_password'],
      :register => @data_contents['login_email_register']
  }

  class << self

    #Funcion para validar los elementos de inicio de sesion en partner claro video.
    def validate_page
      find(:css, 'input[name="username"]', wait:10)
      find(:id, 'password', wait:10)
      #all(:css, "li.tab_selector", minimum:4, wait:10)[0].has_css?(".active")
    end


    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def  click_button(button)
      case button.to_sym
      when :next
        find(:css, 'button.button-blue',wait:10).click
          if $brow == 'safari'
            sleep 5
          end
        $tim = Time.now
        when :show
          find(:css, 'p.show.text-smallest', wait:20).click
        when :hide
          find(:css, 'p.hide.text-smallest', wait:20).click
        when :'registration-login'
          find(:css, 'button.button-blue', wait:20).click
        when :'forgot password'
          find(:css,'a.text-bold500', text: @contents[:forgot], wait:20).click
        else
          raise "#{button}, no es un boton valido."
      end
    end

    #Función que llena los campos para inicio de sesión en partner claro video,
    # recibe un parámetro de tipo string,
    # lo convierte en simbolo,
    # ingresa la información almacenada en un hash.
    def fill_email_fields(type)
      puts "Entro a metodo para llenar el correo en partner email - login"
      credentials = DataUsers.data
      if $brow =='ie'
        if type.to_sym == :'correct email'
          puts "Entro a metodo de correct email - ie"
          page.find(:id,'username', wait: 20).set credentials[:email] if credentials[:email]
        else
          puts "Entro a else de de correct email - ie"
          find(:id,'username', wait: 20).set credentials[:email] if credentials[:email]
          find(:id, 'password', wait:20).set credentials[:password] if credentials[:password]
        end
      else
        if type.to_sym == :'correct email'
          page.find(:id,'username', wait: 20).native.send_keys credentials[:email] if credentials[:email]
        else
          find(:id,'username', wait: 20).native.send_keys credentials[:email] if credentials[:email]
          find(:id, 'password', wait:20).native.send_keys credentials[:password] if credentials[:password]
        end
      end

    end

    end
  end

