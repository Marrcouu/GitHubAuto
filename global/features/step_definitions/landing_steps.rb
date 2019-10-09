require_relative '../../../global/features/pages/landing_page'
Then(/I should see the "([^"]*)" link in the "([^"]*)" landing/)do|button,page|

end
Then(/I make click on this "([^"]*)" link in the "([^"]*)" landing/)do|button,page|
  LandingPage.click_to_button(button.to_sym, page.to_sym)
  sleep 5
end
Then(/I should see the "([^"]*)" page/)do|page|
  LandingPage.validate_link_page(page.to_sym)
end
Then(/The Landing page/)do
end

Then(/I should see all Paises links/)do
  LandingPage.validate_countries
end
Then(/I open the app Claro negocio/)do

end

And(/I change to "([^"]*)" tab/)do|tab|
  LandingPage.changeto(tab.to_sym)
end
And(/I create a new tab/)do
  LandingPage.createNewTab
end

And(/I close tab/)do
  page.driver.quit
end