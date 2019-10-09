require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class RegistrationTlmxPage
  extend Capybara::DSL

  @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents = {
      :iam_user_telmex => @data_content['iam_user_telmex'],
      :terms_reg_telmex => @data_content['terms_reg_telmex'],
      :invalid_number_telmex => @data_content['invalid_number_telmex'],
      :another_number_telmex => @data_content['another_number_telmex'],
      :number_debt => @data_content['number_debt']
  }

  class << self

    #Funcion para validar los elementos de registro en partner Telmex.
    def validate_page
      #find(:css,'a', text: @contents[:iam_user_telmex], wait:10)
      #all(:css, "li.tab_selector", minimum:4, wait:10)[1].has_css?(".active")
      find(:id,'username', wait:10)
      find(:id, 'password', wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido.
    def  click_button(button)
      case button.to_sym
        when :registration
          find(:css, 'button.button-blue',wait:10).click
        when :'terms and conditions'
         find(:css,'a[href="/mexico/legals?option=terms"]',text: @contents[:terms_reg_telmex], wait:10).click
        when :'i am user'
          find(:css,'a.text-bold500', wait:10).click
        else
          raise "#{button}, no es un boton valido."
      end
    end


    #Función para llenar los campos de registro en parter Telmex,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_telmex_fields
      credentials = DataUsers.data
      credentials[:number].to_s.each_char do |char|
        sleep 0.1
        find(:css,'input[name="identifier"]', wait:10).send_keys char if char
        end
     find(:css,'input[name="username"]', wait:10).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old' and credentials[:email]
     find(:css,'input[name="username"]', wait:10).native.send_keys email_random("new") if credentials[:email] == 'random_new'
     find(:css,'input[name="username"]', wait:10).native.send_keys email_random("old") if credentials[:email] == 'randon_old'
     find(:id, 'password', wait:10).native.send_keys  credentials[:password] if credentials[:password]
    end

    #Función para validar mensaje de error, cuando se ingresan campos vacíos o incorrectos.
    def error_message(error)
      case error.to_sym
      when  :'invalid email',:'empty email', :'short password',
           :'missing number',:'empty password',:'email already exist', :'invalid number',:'number already exist'
        all(:css, 'span.error-validator', visible: true, wait:10)[1]
      when :'empty fields', :'short number', :'only check','existing number'
        all(:css, 'span.error-validator.ng-star-inserted', visible: true, maximum:4,  wait:10)
      when :'not just numbers',:'not just capital letters',:'not just lowercase letters',:'missing numbers',
        :'wrong email and password', :'correct email and wrong password',
          :'user without subscription', :'invalid credentials'
        all(:css, 'ul.ng-star-inserted', wait: 10)[2]
      when :'number another'
        find(:css,'p',text: @contents[:another_number_telmex], wait:10)
        find(:css,'input[name="identifier"]', wait:10)
        find(:css, 'input.button', wait:10)
      when :'number debt'
        find(:css,'p',text: @contents[:number_debt], wait:10)
        find(:css,'input[name="identifier"]', wait:10)
        find(:css, 'input.button', wait:10)
      end
    end

  end
end