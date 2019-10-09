require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'


class TermsConPage
  extend Capybara::DSL

  class << self

    #Funcion para validar los elementos de la pagina de términos y condiciones.
    def validate_page
      #find(:css,'a.is-selected',text:'Términos y condiciones').click #has_css?(".is-selected")
      all(:css, 'h1',text:'TÉRMINOS Y CONDICIONES DE USO DE CLARO DRIVE', wait:10)
    end
  end
end
