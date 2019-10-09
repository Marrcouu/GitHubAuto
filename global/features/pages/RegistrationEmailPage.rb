require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class RegistrationEmailPage
  extend Capybara::DSL

  @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents = {
      :iam_user => @data_content['iam_user'],
      :terms_reg_email => @data_content['terms_reg_email']
  }

  class << self

    #Funcion para validar los elementos de registro en partner correo.
    def validate_page
      find(:css, 'input[name="username"]', wait:10)
      #all(:css, 'img[src="/img/claro-sync-white.svg"]', minimum:1,wait:10)[1]
      find(:id,'password',wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def  click_button(button)
      case button.to_sym
        when :registration
          find(:css, 'button.button-blue',wait:10).click
      when :'terms and conditions'
          find(:css,'a[href=" /mexico/legals "]', wait:10).click
        when :'i am user'
          find(:css,'a.text-bold500', wait:10).click
        when :show
          find(:css, 'p.show-password', wait:20).click
        when :hide
          find(:css, 'p.show-password', wait:20).click
        else
          raise "#{button}, no es un boton valido"
      end
    end


    #Función para llenar los campos de registro en parter correo,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_email_fields
      credentials = DataUsers.data
      puts "Correo: '#{credentials[:email]}' - Contraseña: '#{credentials[:password]}'"
      if page.has_css?('img[src="/img/bell.svg"]')
        find(:id,'username',wait:30).native.send_keys email_random("new") if credentials[:email] == 'random_new'
        find(:id,'username',wait:30).native.send_keys email_random("old") if credentials[:email] == 'random_old'
        correo = find(:id, 'username').value
        puts "Correo ingresado: '#{correo}' - Login"
      else
        find(:id,'username',wait:30).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old' and credentials[:email]
        find(:id,'username',wait:30).native.send_keys email_random("new") if credentials[:email] == 'random_new'
        find(:id,'username',wait:30).native.send_keys email_random("old") if credentials[:email] == 'random_old'
        correo = find(:id, 'username').value
        puts "Correo ingresado: '#{correo}' - Registro"
      end
      find(:id,'username', wait: 20).native.send_keys credentials[:email] if credentials[:email]
      find(:id, 'password', wait:30).native.send_keys credentials[:password] if credentials[:password]
    end


    #Función para validar mensaje de error, cuando se ingresan campos vacíos o incorrectos.
    def error_message(error)
      case error.to_sym
      when :'missing email', :'empty email',:'missing password',:'short password',
          :'empty password'
        all(:css, 'span.error-validator', visible: true, wait:10)[0]
      when :'wrong user'
        find(:css, 'div.error-validator.ng-star-inserted',wait:10)
      when :'empty fields'
        all(:css, 'span.error-validator', visible: true, maximum:2,wait:10)
      when :'password letters',:'password numeric and lowercase letters',:'password numeric and capital letters',
          :'password numeric',:'password same as the email',:'password same characters',:'short number telmex',
          :'check your credit card',:'existing email',:'missing number',:'empty fields tdc', :'wrong email and password',
          :'wrong password', :'user without subscription', :'short number', :'invalid credentials', :'user block'
        all(:css, 'ul.ng-star-inserted', wait:30)[2]
      when :'short number telcel'
        all(:css, 'span.error-validator', wait:30)[0]
      when :'field name in red',:'field number in red',:'field year in red',:'field security number in red',
          :'field month in red'
        all(:css, 'input.selected-error', wait:30)[0]
      when :'field date in red'
        all(:css, 'input.selected-error', maximum:2, wait:10)
      else
        raise "error '#{error}', no existe."
      end
    end

  end
end