require 'fileutils'
  require_relative '../../../helpers/paths_env'
  require_relative '../../../helpers/data_labels'
  require_relative '../../../helpers/data_users'
  require_relative '../../../helpers/generic'
  require_relative '../../../helpers/Info'
  require_relative '../../../helpers/utils'


  class CongratulationsPage
    extend Capybara::DSL
    @data_content = YAML.safe_load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))

    @contents ={
        :message => @data_content[''],
        :button => @data_content['continue_button'],
    }

    class << self

      # Funcion para validar pagina .
      def validate_page
        sleep 25
        find(:css, 'p.info', wait: 10)
        find(:css, 'a.button-blue', wait:10)
      end

      # Funcion para validar pagina .
      def validate_page_upgrade
        find(:css,'div.ps_message', wait:30)
      end

      #Función para dar click.
      def click_button
        find(:css, 'a.button-blue',text:'IR A MI CLARO DRIVE', wait:500).double_click
      end

    end
  end