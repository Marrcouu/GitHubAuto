require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/data_contents'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class LoginClaroMovilPage
  extend Capybara::DSL

  class << self

    #Funcion para validar los elementos de inicio de sesion en partner Telcel.
    def validate_page
      find(:css, 'p.text-big', wait:10)
      find(:css,'input[name="identifier"]', wait:10)
      find(:css, 'input.password', wait:10)
      find(:css, 'input.button', wait:10)
      all(:css, 'a.text-bold500', wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
        when :accept
          find(:css, 'input.button', wait:20).click
        else
          raise "#{button}, no es un boton valido"
      end
    end


    #Función que llena los campos para inicio de sesión en partner Telcel,
    # recibe un parámetro de tipo string,
    # lo convierte en simbolo,
    # ingresa la información almacenada en un hash.
    def fill_cm_fields
      credentials = DataUsers.data
      case credentials
        when :'correct number'
          find(:css,'input[name="identifier"]', wait:10).native.send_keys credentials[:number] if credentials[:number]
        when :'correct password'
          find(:css, 'input.password', wait:10).native.send_keys credentials[:password] if credentials[:password]
        else
          find(:css,'input[name="identifier"]', wait:10).native.send_keys credentials[:number] if credentials[:number]
          find(:css, 'input.password', wait:10).native.send_keys credentials[:password] if credentials[:password]
      end
    end

    #Función para validar que el mensaje de error aparezca correctamente.
    def error_message(error)
      case error.to_sym
        when :'invalid number', :'wrong number and password', :'wrong password',:'wrong user',:'user without subscription'
          find(:css, 'p.error.line19', wait:10)
        when :'empty number', :'empty password',:'empty fields'
      end
    end

  end
end
