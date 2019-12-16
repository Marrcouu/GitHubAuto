require_relative "../pages/IndexPage"
require_relative "../pages/RegistrationTelmexPage"
require_relative "../pages/RegistrationEmailPage"
require_relative "../pages/RegistrationTelcelPage"
require_relative "../pages/LoginEmailPage"
require_relative "../pages/LoginTelcelPage"
require_relative "../pages/LoginTlmxPage"
require_relative "../pages/UserPage"
require_relative "../pages/RecoveryPage"
require_relative "../pages/PlansPage"
require_relative "../pages/TermsConPage"
require_relative "../pages/PopupPage"
require_relative "../pages/CongratulationsPage"
require_relative "../pages/LoginCmPage"
require_relative "../pages/LoginCvPage"
require_relative "../pages/ClaroMusicaPage"
require_relative "../pages/ClaroVideoPage"
require_relative "../pages/HijackPage"
require_relative "../pages/ChangePlanPage"
require_relative "../pages/LoginClaroMovilPage"
require_relative "../pages/RegistrationClaroMovilPage"
require_relative "../pages/RegistrationClaroPage"
require_relative '../../../helpers/utils'
#require_relative "../pages/LoginClaroPage"
require 'colorize'
require_relative "../../../helpers/redirector"
require 'backports/rails'


Given /^I am an? "([^"]*)" user$/ do |user_type|
  true
end

And(/^I wait "([^"]*)"$/) do |time|
  sleep time.to_i
end

When(/^I open the page "([^"]*)"/) do |page|
  visit page
end

When(/^I open the app$/) do
  IndexPage.open_app

end
Then(/^I should see "(.*?)" page$/) do |page|
  @value =  Redirection.chose_page(:'validate page',page.to_sym)
  clazz = @value[:page].constantize
  clazz.send(@value[:function])
end

And(/^I click on "([^"]*)" button from "([^"]*)" page$/) do |button, page|
  @value =  Redirection.chose_page(:'click button',page.to_sym)
  clazz = @value[:page].constantize
  clazz.send(@value[:function]) if @value[:valor] == 'no'
  clazz.send(@value[:function],button) if @value[:valor] == 'si'

end

And(/^I get the time used to login on "([^"]*)" partner$/) do |partner|

  find(:css, 'div.header-left', wait:180)
  $finis = Time.now
  $tiempo = $finis - $tim
  #$Archivo = Date.now
  @execution_date = Time.now.strftime('%F')
  @execution_time = Time.now.strftime('Hora: %H:%M ') if @execution_time.nil?
  $nombreArchivo = "reportes/ReporteLogin_#{@execution_date}.txt"
  $contenido = "Navegador: #{$brow} - #{@execution_time} - Ambiente: #{$env}\n\tPartner: #{partner} - > #{$tiempo} seg\n\n"
  open($nombreArchivo, "a") { |f| f << $contenido }
  puts "#{$tiempo} en #{partner}".magenta
end


Then(/^I scroll "([^"]*)"$/) do |option|
  case option
  when 'down'
    sleep 1
    perform_action('drag', 70 , 10, 80, 0, 10)
    sleep 1
  when 'up'
    sleep 1
    perform_action('drag', 50, 50, 40, 90, 10)
    sleep 1
  when 'left'
    sleep 1
    perform_action('swipe', 'left')
    sleep 1
  when 'right'
    sleep 1
    perform_action('swipe', 'right')
    sleep 1
  end
end


And(/^I click on "([^"]*)" on popup page$/) do |ele|
  PopupPage.click_but(ele)
end