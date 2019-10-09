require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'

class GenerateAcc
  extend Capybara::DSL

  class << self


  def generate_acc(acc, part)
    puts "Se creara la cuenta '#{acc.to_sym}' de partner '#{part.to_sym}' en ambiente '#{$env.to_sym}' - explorador '#{$brow.to_sym}'"
    credentials = DataUsers.for_acc acc.to_sym, part.to_sym
    nombre = credentials[:user_name]
    apellido = credentials[:user_lastname]
    correo = credentials[:email]
    contrasena = credentials[:password]
    puts "Se cargaron los datos satiscactoriamente\nNombre: '#{nombre}'\nApellido: '#{apellido}'\nCorreo: '#{correo}''\nContraseña: '#{contrasena}''".yellow
    case part.to_sym
    when :'claro video'
      visit "https://mfwkcoship-api.clarovideo.net/services/user/register?password=#{contrasena}&firstname=#{nombre}&lastname=#{apellido}&api_version=v4.4&device_manufacturer=coship&device_model=android&device_category=stb&HKS=(de02105e55fd7afc204573ca9972c66d)&authpt=12e4i8l6a581a&device_type=n9085i&format=json&authpn=amco&email=#{correo}&accepterms=1&region=mexico"
    ApiParms.verificar_cuentas '3111290267@test.com', 'telmex'
      sleep 5
    end


    sleep 5
  end
  end
end