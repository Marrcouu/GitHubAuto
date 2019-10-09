require_relative '../../features/pages/LoginPage'

And(/I click on "([^"]*)" partner option$/)do|partner|
  LoginPage.select_partner(partner)
end

Then(/^I enter credentials of "([^"]*)" for the partner "([^"]*)"$/) do |type, partner|
  LoginPage.fillInputsLogin(type,partner)
end

And(/I click on "([^"]*)"$/)do|type|
  LoginPage.click(type)
end