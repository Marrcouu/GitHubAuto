require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class LoginCvPage
  extend Capybara::DSL

  class << self

    #Funcion para validar los elementos de inicio de sesion en partner claro video.
    def validate_page
      find(:id,'username', wait: 10)
      find(:id, 'password', wait:10)
      #all(:css, "li.tab_selector", minimum:4, wait:10)[4].has_css?(".active")
    end

    #Funcion para dar click
    def click_button
      find(:css, 'button.button-blue',wait:10).click
      $tim = Time.now
    end

    #Función que llena los campos para inicio de sesión en partner claro video,
    # recibe un parámetro de tipo string,
    # lo convierte en simbolo,
    # ingresa la información almacenada en un hash.
    def fill_cv_fields
      credentials = DataUsers.data
      puts "Correo: '#{credentials[:email]}' - Password: '#{credentials[:password]}'"
      find(:css,'input[name="username"]', wait: 20).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old'
      find(:css,'input[name="username"]', wait: 20).native.send_keys email_random("new") if credentials[:email] == 'random_new'
      find(:css,'input[name="username"]', wait: 20).native.send_keys email_random("old") if credentials[:email] == 'random_old'
      find(:id, 'password', wait:20).native.send_keys credentials[:password] if credentials[:password]
      find(:id, 'password', wait:20).set credentials[:password] if credentials[:password] and $brow == 'ie'
    end

    #Función para validar mensaje de error, cuando se ingresan campos vacíos o incorrectos.
    def error_message(error)
      case error.to_sym
      when :'empty email', :'empty password'
        find(:css, 'span.error-validator.ng-star-inserted', visible:true, wait:30)
      when :'short password'
        find(:css, 'div.error-backend.ng-star-inserted', visible:true, wait:30)
      when :'empty fields'
        all(:css, 'span.error-validator.ng-star-inserted', visible:true, maximum:3, wait:30)
      when :'invalid email', :'user erased',:'user claro video', :'user telmex',:'check your credit card',
          :'another number telmex', :'invalid number telmex', :'short number',:'not telcel', :'number invalid', :'missing number', :'wrong password', :'check your credit card',
           :'missing password'
        all(:css, 'div.error-backend.ng-star-inserted', wait: 30)
      #when
       # find(:id, 'error-message', wait:10)
      when :'field name in red',:'field number in red',:'field security number in red'
        all(:css, 'input.selected-error', wait:30)
      when :'field date in red'
        all(:css, 'input.selected-error', maximum:2, wait:30)
      when :'another number'
        find(:id, 'error-message', wait: 30)
      end
    end

  end
end
