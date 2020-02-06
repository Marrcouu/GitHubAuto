require 'fileutils'
#require_relative '../../../helpers/element_exist'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class ClaroMusicaPage
  extend Capybara::DSL
  $brow = ENV["BROWSER"]

  @data_contents = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents ={
      :listen_free => @data_contents['listen_free']
  }

  @credit_card_data = DataLabels.credit_card_data

  class << self

    # Funcion para validar pagina de claro musica despues del registro.
    def validate_page
      find(:css, 'img.logoA1',wait:30)
    end

    # Función para visitar el portal de claro música.
    def visit_claro_musica
      visit "https://www.claromusica.com"
    end

    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      case button.to_sym
      when :'listen free'
        find(:id, 'ONBD_LISTEN_FREE', wait:30).click
      when :accept
        find(:id, 'ONBD_REGISTER_3', visible: true, wait:30).click
      when :'ajustes'
        find(:css, 'i.icon-perfil', wait: 30).click
        find(:css, 'a[href="/settings"]', wait: 30).click
      when :'suscripcion'
        find(:id, 'react-tabs-2',wait:30).click
      when :'formas pago'
        find(:id, 'react-tabs-6',wait:30).click
      when :'continuar'
        find(:xpath, '//*[@id="react-tabs-7"]/div/div[2]/div[1]/ul/li[7]/a',wait:30).click
      when :'30'
        find(:xpath, '//*[@id="react-tabs-3"]/div/div/div[2]/table/tr[10]/td[3]/a[1]', wait:30).click
      when :'99'
        find(:xpath, '//*[@id="react-tabs-3"]/div/div/div[2]/table/tr[10]/td[3]/a[2]', wait:30).click
      when :'aceptar'
        find(:xpath, '//*[@id="carousels"]/div/div[2]/div[2]/div[2]/div[1]/div[2]/a', wait:30).click
      end
end
    #Función para llenar los campos de registro en claro música,
    # recibe un parametro tipo String,
    # lo convierte en simbolo,
    # llena los campos según el parámetro recibido,
    # el cual ingresa los datos provenientes de un hash.
    def fill_cm_fields
      credentials = DataUsers.data
      puts "Correo: '#{credentials[:email]}' Contra: '#{credentials[:password]}'"
      find(:id, "email", wait:10).native.send_keys credentials[:email] if credentials[:email] != 'random_new' and credentials[:email] != 'random_old' and credentials[:email]
      sleep 2
      find(:id, "email", wait:10).native.send_keys email_random("new") if credentials[:email] == 'random_new'
      sleep 2
      find(:id, "email", wait:10).native.send_keys email_random("old") if credentials[:email] == 'random_old'
      sleep 2
      find(:id, "password", wait:10).native.send_keys credentials[:password] if credentials[:password]
      sleep 2
      $correo_musica=find(:id, "email", wait:10).value
      puts "Correo ingresado: '#{$correo_musica}'"
      sleep 3
    end

    #Función para llenar los campos de método de pago tdc, telmex y telcel en claro música,
    # recibe un parámetro tipo String,
    # lo convierte en simbolo,
    # llena los campos del método de pago que indique el valor recibido.
    def fill_payment_method(type)
      case type.to_sym
      when :'credit card'
        find(:xpath, '//*[@id="react-tabs-7"]/div/div[1]/ul/li[3]/div[3]/a',wait:30).click
        within_frame(find(:css, 'div.forma_pago', wait:30)) do
          #find(:css, '#visa-card[value="on"]', wait:10).set(true)
          #find(:css, 'i.fa fa-square-o.unchecked', wait:10).click
          find(:id, 'cardNumber', wait:10).native.send_keys @credit_card_data[:Numero_de_tarjeta] if :Numero_de_tarjeta
          find(:id, 'holderName', wait:10).native.send_keys @credit_card_data[:Nombre] if :Nombre
          find(:id, 'expirationMonth', wait:10).native.send_keys @credit_card_data[:Fecha_de_expiracion_mes] if :Fecha_de_expiracion_mes
          find(:id, 'expirationYear', wait:10).native.send_keys @credit_card_data[:Fecha_de_expiracion_anio] if :Fecha_de_expiracion_anio
          find(:id, 'securityCode', wait:10).native.send_keys @credit_card_data[:Codigo_de_seguridad] if :Codigo_de_seguridad
        end
      when :telmex
      when :telcel
      end
    end

    def comfirm_user
      #test.1556054698702@getnada.com -> 30
      #test.1556054791235@getnada.com -> 18
      sleep 3
      #email = find(:xpath, '//*[@id="app"]/div/div[2]/div[3]/div/section/div[3]/span', wait:30).text
      email = find(:css, 'div.confirm_mail_text span').text
      puts "Confirma tu correo electrónico : #{email}".yellow
      email = email[0..email.length-13]
      sleep 3
      open_new_window
      switch_to_window(windows.last)
      visit "https://getnada.com"
      find(:css, 'i.icon-plus', wait:30).click
      sleep 3
      find(:css, 'input.user_name', wait:10).native.clear
      find(:css, 'input.user_name', wait:10).native.send_keys email
      puts "Ingreso correo"
      sleep 3
      case $brow.to_s.downcase.strip

      when "chrome"
        acpt=find(:xpath, '//*[@id="app"]/div/div[1]/footer/a[2]',wait: 30)
        page.execute_script("arguments[0].click();", acpt)

      when "mozilla","safari"
        find(:xpath, '/html/body/div/div[1]/footer/a[2]',wait: 30).click
        puts "Paso Mozilla - Abrir bandeja"
      end

      find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div[1]/div[2]/div/div[2]/div/div[1]/ul/li', wait:40).click
      within_frame(find(:id, 'idIframe', wait:30)) do
        find(:xpath, '/html/body/table[2]/tbody/tr/td/table/tbody/tr/td/table[2]/tbody/tr[2]/td/table/tbody/tr/td/a', wait:40).click
      end
      switch_to_window(windows.last)
      find(:css, 'img.logo-CM',wait:30)
      puts "Se termino de confirmar el correo"
    end

  end
end
