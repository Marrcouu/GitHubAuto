  require_relative '../../features/pages/GalleryPage'

Then(/I make click on "([^"]*)" button/)do
  GalleryPage.click_on_gallery
end
Then(/I should see the gallery view/)do
  GalleryPage.validate_gallery_page
end
Then(/I click on this "([^"]*)" button/)do |button|
  GalleryPage.click_on button.to_sym
  sleep 10
end

Then(/I should see the correctly function of the "([^"]*)" button/)do |button|
  GalleryPage.validate_button button.to_sym
end