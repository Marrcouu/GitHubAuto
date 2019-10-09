require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class ChangePage
  extend Capybara::DSL
  @data_user_label = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_labels.yml"))

  class << self

    #Funcion para validar los elemtos de la pagina
    def validate_page
      find(:css, 'div.plan.active', wait:10)
      all(:css, 'div.plan',:minimum => 2, wait:10)
      find(:css, 'a.text-bold500', wait:10)
    end

    #Funcion para dar click
    def click_button
      find(:css, 'a.text-bold500', wait:10).click
    end

  end
end

