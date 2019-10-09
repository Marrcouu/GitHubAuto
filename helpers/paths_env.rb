require 'fileutils'
require 'yaml'



config = YAML.load(File.read("../global/config/cucumber.yml"))

# variable para definir el pais, se optiene desde el profile (variable de entorno)
$brow=ENV["BROWSER"]
# variable para definir el pais, se optiene desde el profile (variable de entorno)
$country=ENV['COUNTRY']
# obtine el ambiente, url donde se va ejecutar el script
$env=ENV['ENVIRONMENT']
$rerun=config["rerun"]
$user_type=ENV['USER']

# urls => stage
$url_mx_test = config["url_mx_test"]
# urls => PROD  url de claro video mx web
$url_mx_prod = config["url_mx_prod"]

# Condición para diferenciar entre los ambientes de tienda y demo
def environment
  if $env == 'PROD'
    environment_prod
  else
    environment_test
  end
end

# obtiene datos del ambiente => url_base, user_agent
def environment_prod
  case $country.to_s.upcase.strip
    when 'MX'
      $url_mx_prod
    when 'CO'
      puts 'colombia'

    when 'BR'
      puts 'BR'
    when 'AR'
      puts 'argentia'
    else puts "environment => ambiente, modelo o pais no valido"
  end
end

def environment_test
  case $country.to_s.upcase.strip
    when 'MX'
      $url_mx_test
    when 'CO'
      puts 'colombia'

    when 'BR'
      puts 'BR'
    when 'AR'
      puts 'argentia'
    else puts "environment => ambiente, modelo o pais no valido"
  end
end


