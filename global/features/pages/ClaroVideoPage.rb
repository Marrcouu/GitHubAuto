require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class ClaroVideoPage
  extend Capybara::DSL

  @data_contents = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents ={
      :save => @data_contents['save'],
      :login => @data_contents['login_video']
  }
  @credit_card_data = DataLabels.credit_card_data

  class << self

    # Funcion para validar pagina de claro video despues del registro.
    def validate_page
      sleep 5
      find(:css, 'img.logoA1',wait:30)
    end

    #Función para generar un usuario en claro video.
    def generate_user
      correo= email_random("new")
      #@emailrnd=@email
      visit "https://mfwkcoship-api.clarovideo.net/services/user/register?password=I234567o&firstname=nombre&lastname=apellido&api_version=v4.4&device_manufacturer=coship&device_model=android&device_category=stb&HKS=(de02105e55fd7afc204573ca9972c66d)&authpt=12e4i8l6a581a&device_type=n9085i&format=json&authpn=amco&email=#{correo}&accepterms=1&region=mexico"
      puts ("Se Genero un usuario en Claro video con los siguientes datos: \nCorreo: #{correo}\n Contraseña: I234567o ").yellow
      sleep 3
    end

    # Función para visitar el portal de claro video.
    def visist_claro_video
      sleep 10
      visit "https://www.clarovideo.com"
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido.
    def click_button(button)
      case button.to_sym
        when :registration
          find(:id, 'btnRegistrar', visible: true, wait:20).click
        when :next
          find(:id, 'btnSiguiente',wait:10).click
        when :login
          find(:xpath, '//*[@id="btnIngresar"]/button', wait:10).click
          #contenedor= find(:id, 'menuUser', wait:10)
          #within contenedor do
           # find(:css, 'li', text: @data_contents[:login], wait:10).click
          #end
        when :'my profile'
          #find(:xpath, '//*[@id="menuUser"]/li/a[1]/a/span[2]/div', wait:10).hover
          #all(:css, 'a.dropdown-toggle dropdownUser menu_user custom-menu-user-style hidden-xs', maximum:2, wait:10)[1].hover
          find(:css, 'a[href="/mexico/home/user.php?micuentafull#micuentamodifyuser"]', wait:10).click
        when :'change password'
          find(:id, 'btnFormRegisterModificar', wait:10).click
      end
    end


    #Función para llenar los campos de registro en claro video,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_cv_fields
      credentials = DataUsers.data
      find(:id, "email", visible: true, wait:10).native.send_keys email_random("new") if credentials[:email] == 'random_new'
      find(:id, "email", visible: true, wait:10).native.send_keys email_random("old") if credentials[:email] == 'random_old'
      find(:id, "email", visible: true, wait:10).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old'
      find(:id, "email_confirm", visible: true, wait:10).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old'
      find(:id, "email_confirm", visible: true, wait:10).native.send_keys email_random("old") if credentials[:email] == 'random_new'
      find(:id, "email_confirm", visible: true, wait:10).native.send_keys email_random("old") if credentials[:email] == 'random_old'
      find(:id, "password", visible: true, wait:10).native.send_keys credentials[:password] if :password
      find(:id, "password_confirm", visible: true, wait:10).native.send_keys credentials[:password] if :password
      find(:id, "firstname", wait:10).native.send_keys credentials[:user_name] if credentials[:user_name]
      find(:id, "lastname", wait:10).native.send_keys credentials[:last_name] if credentials[:last_name]
      find(:id, "accepterms", wait:10).set(true)
      find(:css, 'input.btn.btn-primary.btn-lg.btn-block', wait:10).click
    end


    #Función para llenar los campos de método de pago tdc, telmex y telcel en claro música,
    #  recibe un parámetro tipo String,
    #  lo convierte en símbolo,
    # llena los campos del método de pago que indique el valor recibido.
    def fill_payment_method(type)
      case type.to_sym
        when :'credit card'
          page.find(:css, 'div.btn.btn-default.col-xs-12.col-sm-12.col-md-4', :text => 'Tarjeta de crédito', wait:20).click
          find(:id, 'name', wait:10).native.send_keys @credit_card_data[:Nombre] if :Nombre
          all(:css, 'label.radio-inline', wait:10).first.click
          find(:id, 'cardNumber', wait:10).native.send_keys @credit_card_data[:Numero_de_tarjeta] if :Numero_de_tarjeta
          find(:id, 'securityCode', wait:10).native.send_keys @credit_card_data[:Codigo_de_seguridad] if :Codigo_de_seguridad
          find(:id, 'cboExpireDateMonth', wait:10).native.send_keys @credit_card_data[:Fecha_de_expiracion_mes] if :Fecha_de_expiracion_mes
          find(:id, 'cboExpireDateYear', wait:10).native.send_keys @credit_card_data[:Fecha_de_expiracion_anio] if :Fecha_de_expiracion_anio
          find(:id, 'cboBirthDateDay', wait:10).native.send_keys @credit_card_data[:Fecha_de_nacimiento_dia] if :Fecha_de_nacimiento_dia
          find(:id, 'cboBirthDateMonth', wait:10).native.send_keys @credit_card_data[:Fecha_de_nacimiento_mes] if :Fecha_de_nacimiento_mes
          find(:id, 'cboBirthDateYear', wait:10).native.send_keys@credit_card_data[:Fecha_de_nacimiento_anio] if :Fecha_de_expiracion_anio
          find(:id, 'address', wait:10).native.send_keys @credit_card_data[:Direccion] if :Direccion
          find(:id, 'city', wait:10).native.send_keys @credit_card_data[:Ciudad] if :Ciudad
          find(:id, 'cboState', wait:10).native.send_keys@credit_card_data[:Estado] if :Estado
          find(:id, 'zipCode', wait:10).native.send_keys @credit_card_data[:Codigo_postal] if :Codigo_postal
          find(:id, 'telefono', wait:10).native.send_keys@credit_card_data[:Telefono] if :Telefono
        when :telmex
        when :telcel
      end
    end

    #Función que llena los campos de inicio de sesión en claro video.
    def login_claro_video
      find(:id, 'email', visible: true, wait:10).native.send_keys email_random("old")
      find(:id,'password', wait:10).native.send_keys 'I234567o'
      find(:css, 'button.btn.btn-primary.btn-lg.btn-block.open-modal').click
    end

    #Función que llena los campos de contraseñas en claro video,
    # para cambiar la contraseña de una cuenta en claro video.
    def change_password_video
      find(:id, 'oldpassword', wait:10).native.send_keys 'I234567o'
      find(:id, 'newpassword', wait:10).native.send_keys 'metroit3'
      find(:id, 'controlpassword', wait:10).native.send_keys 'metroit3'
      find(:css, 'button.btn.btn-primary.btn-block.margin-top-05', text: @contents[:save],wait:10).click
    end

    #Función que valida el mensaje emergente de claro video,
    # después de cambiar la contraseña exitosamente.
    def message_clarovideo
      find(:css, 'div.modal-body.text-center.success.modal-body', wait:10)
      find(:css, 'button.btn.btn-default.close-modal.btn-block.btn.btn-default', wait:10).click
    end
  end
end