require_relative "../pages/ClaroMusicaPage"
require_relative "../pages/ClaroVideoPage"
require_relative "../pages/RegistrationTelcelPage"

When(/^I go to "([^"]*)"$/) do |app|
  case app.to_sym
    when :'claro musica'
      ClaroMusicaPage.visit_claro_musica
    when :'claro video'
      ClaroVideoPage.visist_claro_video
  end
end

When(/^I generate "([^"]*)" in claro video$/) do |type|
  ClaroVideoPage.generate_user
end

When(/^I "([^"]*)" the user in "([^"]*)"$/) do |type, app|
  case type.to_sym
  when :'confirm'
    case app.to_sym
    when :'claro musica'
    ClaroMusicaPage.comfirm_user
    end
  when :'claro video'

  when :'claro drive'

  end
end

And(/^I enter "([^"]*)" in "([^"]*)"$/) do |type, app|
  DataUsers.for_user type.to_sym, app.to_sym
  #DataUsers.for_acc type.to_sym, app.to_sym
  case app.to_sym
  when :'claro musica'
    ClaroMusicaPage.fill_cm_fields
  when :'claro video'
    ClaroVideoPage.fill_cv_fields
  end
end

And(/^I enter "([^"]*)" in "([^"]*)" - smoke$/) do |type, app|
  DataUsers.for_acc type.to_sym, app.to_sym
  case app.to_sym
  when :'claro musica'
    ClaroMusicaPage.fill_cm_fields
  when :'claro video'
    ClaroVideoPage.fill_cv_fields
  end
end

And(/^I click on "([^"]*)" button from "([^"]*)" app$/) do |button, app|
  case app.to_sym
    when :'claro musica'
      ClaroMusicaPage.click_button(button)
    when :'claro video'
      ClaroVideoPage.click_button(button)
  end
end


And(/^I enter data of "([^"]*)" in "([^"]*)"$/) do |type, app|
  case app.to_sym
    when :'claro musica'
      ClaroMusicaPage.fill_payment_method(type)
    when :'claro video'
      ClaroVideoPage.fill_payment_method(type)
  end
end

And(/^I login in "([^"]*)" platform$/) do |platform|
  ClaroVideoPage.login_claro_video
end

And(/^I change "([^"]*)" in claro video$/) do |arg|
  ClaroVideoPage.change_password_video
end

Then(/^I should see message "([^"]*)" in "([^"]*)"$/) do |type, partner|
  case partner.to_sym
    when :telcel
      RegistrationTelPage.validate_menssage_password
    when :'claro video'
      ClaroVideoPage.message_clarovideo
  end
end