require 'capybara/cucumber'
require 'yaml'
require 'selenium-webdriver'
require 'capybara/rspec'
require_relative '../../../helpers/generic.rb'
require_relative '../../../helpers/paths_env.rb'
require_relative '../../../helpers/utils'
require_relative '../../features/support/drivers'

case Utils.browser.downcase.to_sym
  when :mozilla
    Drivers.mozilla
  when :chrome
    Drivers.chrome
  when :safari
    Drivers.safari
  when :edge
    Drivers.edge
  when :ie
    Drivers.ie
  when :opera
    Drivers.opera

  else
    raise 'Error en el selector del driver a ejecutar'
end
