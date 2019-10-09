require_relative '../../features/pages/HelpPage'

And(/I make click on "([^"]*)" section from "([^"]*)"$/)do|section, type|
  HelpPage.clickSection(section, type)
end

And(/I make click on "([^"]*)" option from "([^"]*)" in "([^"]*)"$/)do|option, section, type|
  HelpPage.clickOption(option, section, type)
end

Then(/I validate the options inside "([^"]*)" section from "([^"]*)"$/)do|section, type|
  HelpPage.validateOption(section, type)
end

Then(/I validate the content inside the option "([^"]*)" in section "([^"]*)" from "([^"]*)"$/)do|option, section, type|
  HelpPage.validateContents(option, section, type)
end

Then(/I validate the content inside the option "([^"]*)" in section "([^"]*)" from "([^"]*)" - without tabs$/)do|option, section, type|
  HelpPage.validateContents2(option, section, type)
end

And(/Help Page is "([^"]*)"$/)do|type|
  HelpPage.helpUser(type)
end