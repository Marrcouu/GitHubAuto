require_relative '../../../helpers/deeplinks'
require 'colorize'
class DeepLinksPages
  extend Capybara::DSL
  class << self
    def visit_url(deeplink)
      @url = DeepLinks.send_url(deeplink)
      puts "Este es el deeplink #{@url}".yellow
      #open_new_window
      #switch_to_window(windows.last)
      Capybara.visit(@url)
    end
    def get_url
      @current_url = URI.parse(current_url).to_s
      puts "Esta es la url resultante #{@current_url}".magenta
      @current_url


    end
    def validate_deeplink(deeplink)

    end
  end
end