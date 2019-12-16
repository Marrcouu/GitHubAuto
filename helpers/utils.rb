class Utils

  # Variables de instancia.
  puts "Explorador(Dentro de Ultis.rb): '#{ENV['BROWSER']}' - '#{$brow}', Tag: '#{ENV['TAG']}' - '#{$tag}', Ambiente: '#{ENV['ENVIRONMENT']} - '#{$ambi}', Pais: '#{ENV['COUNTRY']} - '#{$pais}' "
  if $brow == 'edge' || $brow == 'ie'
    #@environment = :"#{ENV['ENVIRONMENT']}"
    #@browser = :"#{ENV['BROWSER']}"
    @country = :"#{ENV['COUNTRY']}"
    #@tag = :"#{ENV['TAG']}"
  else
    @country = ENV['COUNT'].downcase.to_sym
  end
    @environment = ENV['ENVIRONMENT'].to_sym
    @browser = ENV['BROWSER'].downcase.to_sym
    @tag = ENV['TAG'].downcase.to_sym

  @countries = {
    mx: 'mexico',
    co: 'colombia',
    ar: 'argentina',
    br: 'brasil',
    cl: 'chile',
    cr: 'costarica',
    do: 'dominicana',
    ec: 'ecuador',
    sv: 'elsalvador',
    gt: 'guatemala',
    hn: 'honduras',
    ni: 'nicaragua',
    pa: 'panama',
    pg: 'paraguay',
    pe: 'peru',
    pr: 'puertorico',
    uy: 'uruguay'
  }

  @environments = {
    TEST: 'http://test-portal.clarodrive.com', #'http://test.clarodrive.com/', 'https://dev-portal.clarodrive.com/',
    #DEMO: 'https://demoweb.clarovideo.net',
    PROD: 'https://www.clarodrive.com'
  }

  class << self

    # Adición de atributos de lectura a las variables de instancia para
    # su inicialización y uso dentro de la clase.
    attr_reader :environment, :browser, :country, :tag

    # Método para convertir del nombre representativo del país al nombre del país.
    def country_name
      raise "El país #{@country} es inválido para usarse en jmeter." unless @countries.include? @country
      @countries[@country]
    end

    def environment_url
      raise "El ambiente #{@environment} no es válido" unless @environments.include? @environment
      @environments[@environment]
    end
  end
end