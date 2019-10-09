require_relative "../pages/CleanPage"

And(/^I clean "([^"]*)" from partner "([^"]*)" for "([^"]*)" in the app "([^"]*)"$/) do |caso, partner, type,app|
  #DataUsers.for_user caso.to_sym, partner.to_sym
  case app.to_sym
  when :drive
    CleanPage.clean_account_drive(type.to_sym, partner.to_sym)
  when :video

  when :musica
      CleanPage.clean_account_drive_cuentas(type.to_sym)
  end
end

And(/^I clean "([^"]*)" of "([^"]*)" from my telcel$/) do |number, partner|
  DataUsers.for_user number.to_sym, partner.to_sym
  CleanPage.clean_mitelcel number
end