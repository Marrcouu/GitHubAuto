require_relative 'data_users'
require_relative '../global/features/pages/LoginTelcelPage'
require 'net/http'
require 'json'
require 'colorize'

class ApiParms
  @password = nil
  @base_url = nil
  @result= nil
  @params = nil
  @hash_params = {
      :telmex =>{
          :params => {
              login_type_id: 'telmex',
              country_code: 'MX',
              username: '',
              password: 'Qa654321',
              ip_address: '189.146.100.125',
              fixed_number: '',
              port: '65499',
              HKS: '3e74009ae048ccc6a01847a33ce63ab599fd983480b860668bb1a921166bdd6b'
          }
      },
      :telcel =>{
          :params => {
              password: @password,
              username: '5564931020',
              country_code: 'MX',
              region: 'mexico',
              login_type_id: 'telcel',
              HKS: '3e74009ae048ccc6a01847a33ce63ab599fd983480b860668bb1a921166bdd6b',
          }
      },
      :email =>{
          :params => {
              login_type_id: 'email',
              country_code: 'MX',
              username: '',
              password: 'Qa654321',
              ip_address: '189.146.100.125',
              port: '65499',
              HKS: '3e74009ae048ccc6a01847a33ce63ab599fd983480b860668bb1a921166bdd6b'
          }
      },
      :'claro musica' =>{
          :params => {
              login_type_id: 'claromusica',
              country_code: 'MX',
              username: '',
              password: 'Qa654321',
              ip_address: '189.146.100.125',
              port: '65499',
              HKS: '3e74009ae048ccc6a01847a33ce63ab599fd983480b860668bb1a921166bdd6b'
          }
      },
      :'claro video' =>{
          :params => {
              login_type_id: 'clarovideo',
              country_code: 'MX',
              username: '',
              password: 'Qa654321',
              ip_address: '189.146.100.125',
              port: '65499',
              HKS: '3e74009ae048ccc6a01847a33ce63ab599fd983480b860668bb1a921166bdd6b'
          }
      }
  }

  class << self
    def verificar_cuentas(email,partner)
      if partner == :telcel
        LoginTelcelPage.get_password
        @password = LoginTelcelPage.result_password
      end
      @base_url = 'https://middleware.clarodrive.com/services/user/sign-in'
      traer(email,partner)
      @result = request
      puts "Resultado: #{@result}"
      comparar
    end

    def request
      uri = URI(@base_url)
      uri.query = URI.encode_www_form @params
      response = Net::HTTP.get_response(uri)
      JSON.parse response.body
    end

    def comparar
      begin
        validate = @result["data"]["user"]["id"]
        rescue
      end
      validate = true if validate != nil
      validate
    end

    def traer(email,partner)
      partner=partner.to_sym
      num_expre = (/\d{10}/)
      email2 = num_expre.match(email)
      puts "Numero de telefono telmex: #{email2}" if partner == :telmex
      @hash_params[partner][:params][:password]= @password if partner == :telcel
      @hash_params[partner][:params][:fixed_number]= email2 if partner == :telmex
      @hash_params[partner][:params][:username] = email
      @params = @hash_params[partner][:params]
    end
  end
end