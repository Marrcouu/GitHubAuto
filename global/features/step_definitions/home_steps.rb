require_relative "../pages/UserPage"
require_relative "../pages/FilesPage.rb"
require_relative '../../../helpers/element_exist'

And(/^I enter "([^"]*)" in "([^"]*)" page$/) do |type, partner|
  DataUsers.for_home type.to_sym, partner.to_sym
  UserPage.forms_home(type)
end

And(/^I "([^"]*)" the invitation in "([^"]*)" page$/) do |type, partner|
  case type.to_sym
  when :accept
    UserPage.acceptInvitation
  end

end

Then(/^I should see "([^"]*)" element$/) do |type|
  UserPage.find_element(type)
end

And(/^I stop sharing for "([^"]*)"$/) do |type|
  UserPage.stop_sharing(type)
end


Then(/^I validate email of "([^"]*)" send$/) do |email|
  UserPage.email_send(email)
end


And(/^I select a "([^"]*)" file to upload$/) do |file|
  FilesPage.select_file(file)
end

And(/^I logout if a session is started$/) do
  UserPage.logout_start
end

And(/^I Upload a file "([^"]*)"$/) do |file|
  FilesPage.uploadFile(file)
end

Then(/^I should see "([^"]*)" file$/) do |element|
  ElementExist.find_element_upload(element)
end

And(/^I change the profile picture$/) do
  UserPage.profile_picture
end

And(/^I change the profile picture from the App$/) do
  UserPage.profile_picture_app
end

And(/^I upload the profile pictures$/) do
  UserPage.upload_profile_pictures
end

And(/^I change profile picture$/) do
  ConfigUserPage.change_profile_picture
end

And(/^I delete the profile picture$/) do
  UserPage.delete_profile_picture
end

And(/^I cancel the account$/) do
  UserPage.cancelAccount
end

And(/^I download element "([^"]*)"$/) do |file|
  FilesPage.downloadFile(file)
end

Then(/^I should see "([^"]*)" file downloaded$/) do |type|
  FilesPage.downloadedFile(type)
end


And(/^I erase the profile picture$/) do
  ConfigUserPage.erase_profile_picture
end


Then(/^I should do all functions for "([^"]*)" element$/) do |fun|
  UserPage.functions(fun)
end

And(/^I add favorite to "([^"]*)"$/) do |element|
  UserPage.favorites(element)
end

And(/^I delete "([^"]*)"$/) do |element|
  UserPage.clean(element)
end


And(/^I choose "([^"]*)" folder from choose carpet option$/) do |fol|
  UserPage.folder(fol)
end