require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'
require_relative '../../../helpers/api_params'
require 'net/http'
require 'json'

class CleanPage
  extend Capybara::DSL
  class << self

    #FUNCION PARA LIMPIEZA DE CUENTAS EN CLARO DRIVE
    # Entra al administrador de cd
    # loguea cuenta de administrador
    # ingresa cuenta para borrar
    # llama la funcion para canclar suscripcion
    # cierra sesion dentro del administador
    def clean_account_drive(type, partner)
      credentials = DataUsers.data
      if partner == :telcel
        #visit "https://middleware.clarodrive.com/services/user/telcel/register?username=5564931020&country_code=MX&region=mexico&HKS=85728ed6076e2b00b513e4e4f90ad17e7ca7ecf191267928080349b94f09c4fb&flow_id=5b6c597c3aa07&claromovil_free=0"
      end
      #puts credentials[:email]
      #check = ApiParms.verificar_cuentas(credentials[:email],partner)
      #if check == true
      visit "https://adminv10.clarodrive.com"
      find(:css, 'input[name="email"]', wait:10).native.send_keys "cnieto_ext@amco.mx"
      find(:css, 'input[name="password"]', wait:10).native.send_keys "Regina27!"
      find(:css, 'button.btn.ladda-button.ladda-button-demo.btn-primary.block.full-width.m-b', wait:10).click
      find(:css, 'h1.logo-name.clarovideo.left', wait:10)
      find(:css, 'li.ng-scope', wait:10).click
      sleep 5
      find(:css, 'select[name="option"]', wait:10).native.send_keys "Correo electrónico (completo)"
      find(:id, 'searchTerm', wait:10).native.send_keys credentials[:email] if credentials[:email] != 'random_old' and credentials[:email]
      find(:id, 'searchTerm', wait:10).native.send_keys email_random("old") if credentials[:email] == 'random_old'
      find(:css, 'button.btn.btn-default', wait:10).click
      sleep 3
      cancelar_suscripcion(type)
      find(:css, 'a.dropdown.dropdown-toggle.profile-image2', wait:10).click
      find(:css, 'div[ng-click="ctrl.logout()"]', wait:10).click
      #end
    end

    def clean_account_drive_cuentas(type)
      #puts credentials[:email]
      #check = ApiParms.verificar_cuentas(credentials[:email],partner)
      #if check == true
      visit "https://adminv10.clarodrive.com"
      find(:css, 'input[name="email"]', wait:10).native.send_keys "jmagana_ext@amco.mx"
      find(:css, 'input[name="password"]', wait:10).native.send_keys "Regin427#"
      find(:css, 'button.btn.ladda-button.ladda-button-demo.btn-primary.block.full-width.m-b', wait:10).click
      find(:css, 'h1.logo-name.clarovideo.left', wait:10)
      find(:css, 'li.ng-scope', wait:10).click
      sleep 5
      find(:css, 'select[name="option"]', wait:10).native.send_keys "Correo electrónico (completo)"
      find(:id, 'searchTerm', wait:10).native.send_keys type.to_s
      find(:css, 'button.btn.btn-default', wait:10).click
      sleep 3
      cancelar_suscripcion(type)
      find(:css, 'a.dropdown.dropdown-toggle.profile-image2', wait:10).click
      find(:css, 'div[ng-click="ctrl.logout()"]', wait:10).click
      #end
    end

    #Funcion que busca los botones para cancelar una suscripcion en cd
    # busca los botones correspondientes
    # si los encuetra los selecciona para eliminar la cuenta en cd
    # sea del tipo que sea
    def cancelar_suscripcion(type)
      begin
        eliminar = find(:css, 'button[title="Eliminar cuenta del usuario"]', wait:10)
        cancelar = find(:css, 'button[title="Cancelar"]', wait:10)
        terminar = find(:css, 'button[title="Terminar"]', wait:10)
      rescue Capybara::ElementNotFound
      end
      cancelar.click  if cancelar != nil
      begin
        confirm1 = find(:css, 'button.confirm', wait:10)
      rescue Capybara::ElementNotFound
      end
      if confirm1 != nil
        sleep 1
        confirm1.click if confirm1 != nil
        sleep 5
      end
      terminar.click if terminar != nil
      begin
        confirm2 = find(:css, 'button.confirm', wait:10)
      rescue Capybara::ElementNotFound
      end
      if confirm2 != nil
        sleep 1
        confirm2.click if confirm2 != nil
        sleep 5
      end
      eliminar.click if eliminar != nil
      begin
        confirm3 = find(:css, 'button.confirm', wait:10)
      rescue Capybara::ElementNotFound
      end
      if confirm3 != nil
        sleep 1
        confirm3.click if confirm3 != nil
        sleep 5
      end
      find(:css, 'div.alert.alert-danger.ng-binding', wait:15)
    end

  end
end