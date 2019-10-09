require 'capybara/cucumber'
require 'yaml'
require 'selenium-webdriver'
require 'capybara/rspec'
require_relative '../../../helpers/generic.rb'
require_relative '../../../helpers/paths_env.rb'
require_relative '../../../helpers/utils'
require 'selenium/webdriver/chrome/service'

# Drivers class handler
class Drivers

  class << self


    def chrome
      Capybara.default_driver = :selenium_chrome
      Capybara.register_driver :selenium_chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
        #options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
        #Capybara::Selenium::Driver.new(app, browser: :chrome, options:options)
      end
    end

    def mozilla

      Capybara.default_driver = :firefox
      Capybara.register_driver :firefox do |app|
        Capybara::Selenium::Driver.new(app, browser: :firefox,
                                       desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: true, args: ['headless', 'window-size=1920x1080']))
      end
    end

    def safari
      Capybara.default_driver = :safari
      Capybara.register_driver :safari do |app|
        Capybara::Selenium::Driver.new(app, :browser => :safari)
       #Selenium::WebDriver.for :safari
      end
    end

    def edge
      Capybara.default_driver = :edge
      Capybara.register_driver :edge do |app|
        Capybara::Selenium::Driver.new(app, :browser => :edge)
      end
      #Selenium::WebDriver.for :edge
    end

    def ie
      Capybara.default_driver = :ie
      Capybara.register_driver :ie do |app|
        Capybara::Selenium::Driver.new(app, :browser => :ie)
      end
      #Selenium::WebDriver.for :ie
    end

    def opera
      Capybara.default_driver = :remote
      Capybara.register_driver :remote do |app|
        webdriver_service= Selenium::WebDriver::Chrome::Service.new('/Users/CualtiSaul/Downloads/operadriver_mac64/operadriver', 12345, {} )
        webdriver_service.start
        caps = Selenium::WebDriver::Remote::Capabilities.opera(browser_name: 'opera',binary: '/Applications/Opera.app/MacOS/Opera', args: ["--ignore-certificate-errors"])
       Capybara::Selenium::Driver.new(app, browser: :remote,
                                      url: webdriver_service.uri, desired_capabilities: caps )
      end
    end
  end

end
