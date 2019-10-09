require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class LoginTelcelPage
  extend Capybara::DSL

  @data_contents = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents ={
      :forgot => @data_contents['forgot_password_telcel']
  }
@password = 1
  class << self

    #Funcion para validar los elementos de inicio de sesion en partner Telcel.
    def validate_page
      find(:css, 'button.button-blue.ng-star-inserted', text:'ENVIAR',wait:10)
      find(:id, 'identifier', wait:10)
      #all(:css, 'a.text-bold500', wait:10)
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
      when :next,:send,:accept
        find(:css, 'button.button-blue',wait:10).click
      when :show
        find(:css, 'p.show.text-smallest', wait:20).click
      when :hide
        find(:css, 'p.hide.text-smallest', wait:20).click
      when :'registration-login'
        find(:css, 'a.text-bold500',  wait:20).click
      when :'back to index'
        find(:css, 'a.text-bold500',  wait:20).click
      when :resend
        find(:css, 'a.text-bold500.otp-link', wait:20).click
        sleep 2
      when :continue
        find(:css, 'button.button-blue', wait:20).click
        $tim = Time.now
      else
          raise "#{button}, no es un boton valido"
      end
    end


    #Función que llena los campos para inicio de sesión en partner Telcel,
    # recibe un parámetro de tipo string,
    # lo convierte en simbolo,
    # ingresa la información almacenada en un hash.
    def fill_telcel_fields
      begin
        pass = find(:css, 'input[name="otp"]', visible:true, wait:10)
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

    def fill_telcel_fields_smoke
      begin
        pass = find(:css, 'input[name="otp"]', visible:true, wait:10)
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

    def get_password
      case $brow.to_sym.downcase

      when :chrome
        sleep 5
        open_new_window
        switch_to_window(windows.last)
        visit "https://web.airdroid.com/"
        find(:css, 'input.widget-login-account-input', wait:10).native.clear
        find(:css, 'input.widget-login-account-input', wait:10).native.send_keys 'cd_qa2@getnada.com' #Dispo 2 - cd_qa@mailinator.com
        find(:css,'input.widget-login-pwd-input', wait:10).native.send_keys 'Qa654321'
        find(:css, 'button.btn.widget-login-btn', wait:10).click
        sleep 10
        find(:css, 'button.btn.btn-primary', wait:10).click
        sleep 3
        find(:css, 'div.l', text:'Messages', wait:30).click
        sleep 3
        #div_text = first(:css, 'div.over-ellipsis.mod-messageList-itemMsg div', wait:30).text
        div_text = first(:css, 'div.mod-multiChat-smsfloat1 div.popover div.content div.mod-multiChat-smsItemBody div', wait:30).text
        sleep 3
        num_expre = (/\d{8}/)
        @password = num_expre.match(div_text)
        puts "este es de la funcion #{@password}"
        switch_to_window(windows.first)




      when :mozilla
        sleep 5
        open_new_window
        switch_to_window(windows.last)
        visit "https://web.airdroid.com/"
        find(:css, 'input.widget-login-account-input', wait:10).native.clear
        find(:css, 'input.widget-login-account-input', wait:10).native.send_keys 'cd_qa@mailinator.com' #Dispo 3 - cd_qa2@getnada.com
        find(:css,'input.widget-login-pwd-input', wait:10).native.send_keys 'Qa654321'
        find(:css, 'button.btn.widget-login-btn', wait:10).click
        sleep 10
        find(:css, 'button.btn.btn-primary', wait:10).click
        sleep 3
        find(:css, 'div.l', text:'Messages', wait:30).click
        sleep 3
        div_text = first(:css, 'div.over-ellipsis.mod-messageList-itemMsg', wait:30).text
        sleep 3
        num_expre = (/\d{8}/)
        @password = num_expre.match(div_text)
        puts "este es de la funcion #{@password}"
        switch_to_window(windows.first)

      when :safari
        sleep 5
        new_window = open_new_window
        switch_to_window new_window
        #within_window(windows.last)
        #switch_to_window(windows.last)
        sleep 3
        visit "https://web.airdroid.com/"
        find(:css, 'input.widget-login-account-input', wait:10).native.clear
        find(:css, 'input.widget-login-account-input', wait:10).native.send_keys 'cd_qa@mailinator.com' #Dispo 4 - cd_qa3@getnada.com
        find(:css,'input.widget-login-pwd-input', wait:10).native.send_keys 'Qa654321'
        find(:css, 'button.btn.widget-login-btn', wait:10).click
        sleep 10
        find(:css, 'button.btn.btn-primary', wait:10).click
        sleep 10
        find(:css, 'div.l', text:'Messages', wait:30).click
        div_text = first(:css, 'div.over-ellipsis.mod-messageList-itemMsg', wait:10).text
        num_expre = (/\d{8}/)
        @password = num_expre.match(div_text)
        puts "Codigo OTP: #{@password}"
        switch_to_window(windows.first)
        switch_to_window(windows.first)
      when :edge
        sleep 5
        new_window = open_new_window
        switch_to_window new_window
        #within_window(windows.last)
        #switch_to_window(windows.last)
        sleep 3
        visit "https://web.airdroid.com/"
        find(:css, 'input.widget-login-account-input', wait:10).native.clear
        find(:css, 'input.widget-login-account-input', wait:10).native.send_keys 'cd_qa4@getnada.com' #Dispo 22
        find(:css,'input.widget-login-pwd-input', wait:10).native.send_keys 'Qa654321'
        find(:css, 'button.btn.widget-login-btn', wait:10).click
        sleep 10
        find(:css, 'button.btn.btn-primary', wait:10).click
        sleep 10
        find(:css, 'div.l', text:'Messages', wait:30).click
        div_text = first(:css, 'div.over-ellipsis.mod-messageList-itemMsg', wait:10).text
        num_expre = (/\d{8}/)
        @password = num_expre.match(div_text)
        puts "Codigo OTP: #{@password}"
        switch_to_window windows.first
      when :ie
        sleep 5
        new_window = open_new_window
        switch_to_window new_window
        #within_window(windows.last)
        #switch_to_window(windows.last)
        sleep 3
        visit "https://web.airdroid.com/"
        find(:css, 'input.widget-login-account-input', wait:10).native.clear
        find(:css, 'input.widget-login-account-input', wait:10).native.send_keys 'cd_qa5@getnada.com' #Dispo 29
        find(:css,'input.widget-login-pwd-input', wait:10).native.send_keys 'Qa654321'
        find(:css, 'button.btn.widget-login-btn', wait:10).click
        sleep 10
        find(:css, 'button.btn.btn-primary', wait:10).click
        sleep 10
        find(:css, 'div.l', text:'Messages', wait:30).click
        div_text = first(:css, 'div.over-ellipsis.mod-messageList-itemMsg', wait:10).text
        num_expre = (/\d{8}/)
        @password = num_expre.match(div_text)
        puts "Codigo OTP: #{@password}"
        switch_to_window windows.first
      end
    end

    def result_password
      @password
    end

    #Función para validar que el mensaje de error aparezca correctamente.
    def error_message
      sleep 10
      find(:css, 'span.error-validator ng-star-inserted', wait:10)
    end

  end
end
