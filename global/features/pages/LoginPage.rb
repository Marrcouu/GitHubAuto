require 'fileutils'
require 'colorize'
require_relative '../../../helpers/data_loginPage'

class LoginPage
  extend Capybara::DSL

  class << self

    def select_partner(partner)
      partners = all(:css, 'div.icon',wait:10).count
      #puts "Se econtro un total de '#{partners}' tabs".blue
      case partner.to_sym
      when :email
        all(:css, 'div.icon', wait:10)[4].click
      when :telmex
        all(:css, 'div.icon', wait:10)[0].click #if partners == 5
        #all(:css, 'div.icon', wait:10)[0].click if partners == 2
      when :telcel
        all(:css, 'div.icon', wait:10)[1].click #if partners == 5
       # all(:css, 'div.icon', wait:10)[1].click if partners == 2
      when :'claro musica'
        all(:css, 'div.icon', wait:10)[2].click
      when :'claro video'
        all(:css, 'div.icon', wait:10)[3].click
      else
        raise "Partner #{partner} inválido."
      end
    end

    def fillInputsLogin(type,partner)
      credentials = DataUsers.for_acc type.to_sym, partner.to_sym
      inputs = DataLoginPage.input_selector
      case partner.to_sym
      when :telmex,:'claro musica', :'claro video', :email
        find(inputs[:email][:typeFind].to_sym,inputs[:email][:label],wait:'10').native.send_keys credentials[:email] if credentials[:email]
        find(inputs[:email][:typeFind].to_sym,inputs[:email][:label],wait:'10').native.send_keys email_random("new") if credentials[:email] == 'random_old' #Cuando ya se ha generado un correo en la misma ejecución
        find(inputs[:email][:typeFind].to_sym,inputs[:email][:label],wait:'10').native.send_keys email_random("new") if credentials[:email] == 'random_old' and $brow == 'ie' #En caso de que explorador sea Internet Explorer
        find(inputs[:email][:typeFind].to_sym,inputs[:email][:label],wait:'10').set credentials[:email] if credentials[:email] and $brow == 'ie' #En caso de que explorador sea Internet Explorer
        find(inputs[:password][:typeFind].to_sym,inputs[:password][:label],wait:'10').native.send_keys credentials[:password] if credentials[:password]
        find(inputs[:password][:typeFind].to_sym,inputs[:password][:label],wait:'10').native.send_keys credentials[:password] if credentials[:password] and $brow == 'ie' #En caso de que explorador sea Internet Explorer
      when :telcel
        find(inputs[:number][:typeFind].to_sym,inputs[:number][:label],wait:'10').native.send_keys credentials[:number] if credentials[:number]
        find(inputs[:number][:typeFind].to_sym,inputs[:number][:label],wait:'10').set credentials[:number] if credentials[:number] and $brow == 'ie' #En caso de que explorador sea Internet Explorer
      end
    end

    def click(type)
    case type.to_sym
    when :login
      find(:css, 'button.button-blue',wait:10).click
    end

    end

  end
end
