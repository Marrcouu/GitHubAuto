require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class RecoveryPage
  extend Capybara::DSL
  @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))
  @data_users = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_users.yml"))

  @contents = {
      :recover_inst => @data_content['recover_inst'],
      :back_to_index => @data_content['back_to_index'],
      :back => @data_content['volver']
  }

  class << self

    #Funcion para validar los elementos en la pagina para recuperar contraseña.
    def validate_page
      find(:css,'span', text: @contents[:recover_inst], wait:10)
      find(:css, 'p.text-medium.line19', wait:10)
      find(:css,'input[name="email"]', wait:10)
      find(:css, 'input.button', wait:10)
      find(:css,'a', text: @contents[:back_to_index], wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
        when :'back to index'
          find(:css,'a', text: @contents[:back_to_index], wait:10).click
        when :send
          find(:css, 'input.button', wait:10).click
        when :back
          find(:css, 'a,text-bold500', text: @contents[:back] , wait:10).click
        else
          raise "#{button}, noo es un boton valido."
      end
    end

    #Función que ingresa el correo al cual se enviara la contraseña.
    def fill_recovery_email
      find(:css,'input[name="email"]', wait:10).native.send_keys @data_users['user_email_tlmx']
    end

  end
end