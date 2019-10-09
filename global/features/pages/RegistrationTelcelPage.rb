require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'
require_relative "../../features/pages/LoginTelcelPage"


class RegistrationTelPage
  extend Capybara::DSL

  @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents = {
      :iam_user_telcel => @data_content['iam_user_telcel'],
   #   :terms_reg_telcel => @data_content['terms_reg_telcel']
  }

  class << self

    #Funcion para validar los elementos de registro en partner Telcel.
    def validate_page
      #all(:css, "li.tab_selector", minimum:4, wait:10)[2].has_css?(".active")
      find(:id, 'identifier', wait:10)
    end

    #Funcion para validar los elemetos de envio de contraseña de telcel
    def validate_menssage_password
      find(:css,  'div.highjack-msg', wait:10)
      find(:css, 'img.logo', wait:10)
      find(:css, 'p.text-big', wait:10)
      find(:css, 'input.password', wait:10)
      find(:css, 'input.button', wait:10)
    end


    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def  click_button(button)
      case button.to_sym
        when :registration, :accept
          find(:css, 'button.button-blue',wait:10).click
        when :'terms and conditions'
          find(:css,'a[href="/mexico/legals?option=terms"]', :text => @contents[:terms_reg_telcel], wait:10).click
        when :'i am user'
          find(:css,'input#identifier.input-register-text', wait:10).click
        when :'need more space?'
          find(:css, 'a.nav-icon-quota.svg', wait:10).click
      when :'resend password'
        find(:css, 'a.text-bold500.otp-link', wait:10).click
        else
          raise "#{button}, no es us un boton valido."
      end
    end


    #Función para llenar los campos de registro en parter Telcel,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_telcel_fields(type)
      begin
        pass = find(:css, 'input[type="password"]', visible:true, wait:10)
      rescue Capybara::ElementNotFound
      end
      credentials = DataUsers.data
      number = find(:css,'input[name="identifier"]', visible: true, wait:10)
      #number.native.clear
      credentials[:number].to_s.each_char do |char|
        sleep 0.1
        number.native.send_keys char if char
      end
      unless pass == nil
        puts "este es en contraseña drive #{@password}"
        pass.send_keys @password
      end
      end


    #Función para validar mensaje de error, cuando se ingresan campos vacíos o incorrectos.
    def error_message(error)
      case error.to_sym
      when :'missing number',:'short number', :'missing password', :'invalid number', :'incorrect password'
        all(:css, 'span.error-validator.ng-star-inserted', wait:10)[0]
      end
    end
  end
end