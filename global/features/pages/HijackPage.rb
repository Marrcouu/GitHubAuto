require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class HijackPage
  extend Capybara::DSL
  @data_contents = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

  @contents ={
      :message => @data_contents['hijack_menssage'],
      :terms => @data_contents['terms_and_conditions']
  }

  class << self

    # Funcion para validar pagina Hijack despues del registro con dos cuentas en CD.
    def validate_page
      find(:css, 'div.highjack-msg', wait: 30)
      find(:css,'p', text: @contents[:message], wait:10)
      find(:css,'input[name="username"]', wait:10)
      find(:css, 'input.password', wait:10)
      find(:css, 'input.button', wait:10)
      find(:css,'a', text: @contents[:terms], wait:10)
    end


    #Función para dar click en términos y condiciones.
    def click_button
      find(:css,'a', text: @contents[:terms], wait:10).click
    end

  end
end