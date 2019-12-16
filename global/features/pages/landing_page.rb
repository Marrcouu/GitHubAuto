require 'fileutils'
require 'colorize'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/data_contents'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'
require_relative '../../../helpers/data_landing'
require_relative '../../../helpers/validate_landing'

class LandingPage
  extend Capybara::DSL
  class << self
    #Funcion que selecciona el boton para realizar el click
    #Recibe como parametros el nombre del boton y la pagina en donde se encuentra
    def click_to_button(button,page)
      #@button_name carga el elemnto especifico con el que trabajara
      @button_name = DataLandingElements.button_selector(button,page)
      #Seleccionamos el metodo correspondiente de acuerdo a las caracteristicas del elemento al que se le hara click
      case @button_name
      when 'div.btn'
        all(:css,@button_name,wait:10)[0].click if button == :"Obtener 250Gb"
        all(:css,@button_name,wait:10)[0].click if button == :"Usa tus 25Gb"
        sleep 5
        all(:css,@button_name,wait:10)[2].click if button == :"Obtener 1Tb"
      when 'a[href="/#1"]' || 'a[href="/#2"]' || 'a[href="/#3"]' || 'a[href="/#4"]' || 'a[href="/#5"]' || 'a[href="/#6"]'
        first(:css,@button_name,wait:10).click
      when 'span'
        find(:css,@button_name,wait:10).click if button == :"PCI Data Security Standard"
      else
        find(:css,@button_name,wait:10).click unless button == :"Claro drive personal" || button == :"Descarga la app Android" || button == :"Descarga la app iOS" || button == :"Descarga la app"
        all(:css,@button_name,wait:10)[0].click if button == :"Claro drive personal" || button == :"Descarga la app Android" || button == :"Descarga la app iOS" || button == :"Descarga la app"
      end
      #if $brow.to_s.downcase.strip == 'chrome'
      #switch_to_window { title == 'Page title'}
      sleep 5
      switch_to_window(windows.last)

    end
    #Función para validar los elementos de las landings
    #Recibe como parametro la pagina (Landing) sobre la que validamos
    def validate_link_page(page)
      #@Validate_hash carga todos los elementos correspondientes a la pagina que validaremos
      @validate_hash = ValidateLanding.validate_page(page)
      #puts "Valor de '#{page}' HASH: '#{@validate_hash}'"
       #Recorremos elemento por elemento
      @validate_hash.each do |key,value|
        @valor = value
        @condition = false
        @condition = true if @valor.include? :contenido
        #Seleccionamos el metodo correspondiente de acuerdo a las caracteristicas del elemento a validar
        case @condition
        when true
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],text:@valor[:contenido],wait:10)
          all(:css,@valor[:etiqueta],text:@valor[:contenido],wait:10)[@valor[:position]] if @valor[:metodo] == 'all'
          puts "Se valido correctamente el elemento #{@valor[:etiqueta]} => #{@valor[:contenido]}".yellow
        else
          Capybara.send(@valor[:metodo],:css,@valor[:etiqueta],wait:10)
          all(:css,@valor[:etiqueta],wait:10)[@valor[:position]] if @valor[:metodo] == 'all'
          puts "Se valido correctamente el elemento #{@valor[:etiqueta]}".yellow
        end
      end
    end

    #Funcion exclusiva para validar el combo paises
    def validate_countries
      @validate_countries = ValidateLanding.validation_countries
      @validate_countries.each do |key,country|
        #find(:css,country,wait:10)
      #  puts "Se valido el link de #{key}".cyan
      end
    end

    def changeto(tab)
      sleep 3
      if $brow == "safari"
        case tab
        when :last
          switch_to_window(windows.last)
          switch_to_window(windows.last)
        when :first
          switch_to_window(windows.first)
          switch_to_window(windows.first)
        end
      else
        case tab
        when :last
          switch_to_window(windows.last)
          if $brow.to_s == 'ie'
            page.driver.browser.manage.window.maximize
          end
        when :first
          if $brow.to_s == 'ie'
            page.execute_script "window.close();"
            page.driver.browser.switch_to.alert.accept
          end
          switch_to_window(windows.first)
        end
      end

    end

    def createNewTab
      open_new_window
    end
  end
end