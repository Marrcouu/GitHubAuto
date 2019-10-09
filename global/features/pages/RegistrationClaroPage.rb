require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'
require_relative '../../../helpers/data_contents'

class RegistrationClaroPage
  extend Capybara::DSL
  class << self

    ### Función para validar los elementos de registro del prthner Claro Movil
    def validate_page
      contents = for_contents (Utils.country)
      find(:css,'p.text-big',text: contents[:text_regist_claromovil],wait:10)
      find(:css,'input.checkConditions',wait:10)
      find(:css,'p.text-small.text-justify.line19',text: contents[:checkbox_text_claromovil],wait:10)
      find(:css,'input.button',text: contents[:text_btregist_claromovil],wait:10)
      find(:css,'a.text-bold500',text: contents[:iam_user_claromovil],wait:10)
      all(:css,'a[href="/'+Utils.country_name+'/terms"]',minimum:2,text: contents[:terms_reg_claromovil],wait:10)
    end
    ### Función para validar los elementos de envio de contraseña

    def validate_message_password
      find(:css, 'div.text', wait:10)
      find(:css, 'img.logo', wait:10)
      find(:css, 'p.text-bigger', wait:10)
      find(:css, 'input.password', wait:10)
      find(:css, 'input.button', wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
        when :registration, :accept
          find(:css, 'button.button-blue',wait:10).click
        when :'terms and conditions'
          find(:css,'a',:text => @contents[:terms_reg_telcel], wait:10).click
        when :'i am user', :'resend password'
          find(:css,'a.text-bold500', wait:10).click
        when :'need more space?'
          find(:css, 'a.nav-icon-quota.svg', wait:10).click
        else
          raise "#{button}, no es us un boton valido."
      end
    end

    #Función para llenar los campos de registro en parter Telcel,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_claromovil_fields(type)
      credentials = DataUsers.data
      puts credentials
      if type.to_sym == :'wrong password' or type.to_sym == :password
        find(:css, 'input.password', wait:10).native.send_keys credentials[:password] if credentials[:password]
      else
        credentials[:number].to_s.each_char do |char|
          sleep 0.1
          find(:css,'input[name="identifier"]', wait:10).send_keys char if char
        end
        find(:css,'input.checkConditions', wait:10).set(credentials[:check])
      end
    end

    #Función para validar mensaje de error, cuando se ingresan campos vacíos o incorrectos.
    def error_message(error)
      case error.to_sym
        when :'missing number',:'missing check',:'short number', :'missing password'

        when :'invalid number', :'incorrect password'
          find(:css, 'p.error.line19', wait:10)
      end
    end
  end
end