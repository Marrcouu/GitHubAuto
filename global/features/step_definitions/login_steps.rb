
require_relative '../pages/LoginEmailPage'
require_relative '../pages/LoginTelcelPage'
require_relative '../pages/LoginTlmxPage'
require_relative "../pages/IndexPage"
require_relative "../pages/PartnersPage"
require_relative "../pages/UserPage"
require_relative "../pages/RecoveryPage"
require_relative "../pages/LoginCmPage"



And(/^I logout$/) do
  UserPage.logout
end

And(/^I enter my email for change password$/) do
  RecoveryPage.fill_recovery_email
end


And(/^I get the password from mobile device$/) do
  LoginTelcelPage.get_password
end