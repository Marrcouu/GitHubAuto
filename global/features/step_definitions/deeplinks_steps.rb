require_relative '../../../global/features/pages/deeplinks_pages'
require 'colorize'
Then(/I make the visit to "([^"]*)" deep link/)do |deeplink|
  sleep 40
  DeepLinksPages.visit_url  deeplink.to_sym
  DeepLinksPages.get_url
  sleep 10
end

Then(/I should see the correct funtion of "([^"]*)" deep link/)do |deeplink|
  DeepLinksPages.validate_deeplink deeplink.to_sym
  DeepLinksPages.get_url
end