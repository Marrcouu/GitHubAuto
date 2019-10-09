require_relative "../pages/IndexPage"
require_relative "../pages/RegistrationTelmexPage"
require_relative "../pages/RegistrationEmailPage"
require_relative "../pages/RegistrationTelcelPage"
require_relative "../pages/PartnersPage"
require_relative "../pages/PlansPage"
require_relative "../pages/CongratulationsPage"
require_relative '../pages/LoginEmailPage'
require_relative '../pages/LoginTelcelPage'
require_relative '../pages/LoginTlmxPage'
require_relative "../pages/LoginCmPage"
require_relative "../pages/LoginCvPage"
require_relative "../pages/PopupPage"
require_relative "../pages/PaymentMethodPage"
require_relative "../pages/LoginClaroMovilPage"
#require_relative "../pages/LoginClaroPage"
require_relative "../pages/RegistrationClaroMovilPage"
require_relative "../pages/RegistrationClaroPage"
require_relative "../../../helpers/redirector"
require 'backports/rails'

And(/^I enter "([^"]*)" in partner "([^"]*)"$/) do |type, partner|
  DataUsers.for_user type.to_sym, partner.to_sym
  @value =  Redirection.chose_page(:'fill',partner.to_sym)
  clazz = @value[:page].constantize
  clazz.send(@value[:function]) if @value[:valor] == 'no'
  clazz.send(@value[:function],partner.to_sym) if @value[:valor] == 'si'
end

And(/^I enter "([^"]*)" in partner "([^"]*)" - smoke$/) do |type, partner|
  DataUsers.for_acc type.to_sym, partner.to_sym
  @value =  Redirection.chose_page(:'fill',partner.to_sym)
  clazz = @value[:page].constantize
  clazz.send(@value[:function]) if @value[:valor] == 'no'
  clazz.send(@value[:function],partner.to_sym) if @value[:valor] == 'si'
end

And(/^I enter "([^"]*)" in payment method "([^"]*)"$/) do |type, method|
  DataUsers.for_payment_method type.to_sym, method.to_sym
  PaymentPage.fill_payment_method(type,method)
end

Then(/^I should see "([^"]*)" error in partner "([^"]*)"$/) do |error, partner|
  @value =  Redirection.chose_page(:error,partner.to_sym)
  puts @value
  clazz = @value[:page].constantize
  clazz.send(@value[:function]) if @value[:valor] == 'no'
  clazz.send(@value[:function],error) if @value[:valor] == 'si'
end




And(/^I click on "([^"]*)" plan$/) do |plan|
  PlansPage.click_plan(plan)
end


And(/^I back to claro drive tab$/) do
  PopupPage.back_to_page
end


Then(/^I should see message "([^"]*)"$/) do |plan|
  case plan.to_sym
    when  :'25gb',:'75gb',:'150gb',:'1024gb'
      CongratulationsPage.validate_page
    when :upgrade
      CongratulationsPage.validate_page_upgrade
  end
end


And(/^I click on "([^"]*)" payment method$/) do |method|
  PaymentPage.click_payment_method(method)
end