require 'fileutils'
require 'colorize'
require_relative '../../../helpers/data_helpPage'

class HelpPage
  extend Capybara::DSL

  class << self

    def clickSection(section, type) #Da click en secciones dentro de la pagina Ayuda
      @validate_hash = DataHelpPage.section_selector(section,type)
      @condition = false
      @condition = true if @validate_hash.include? :content
      case @condition
      when true
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            Capybara.send(@validate_hash[:method],:css,@validate_hash[:label],text:@validate_hash[:content],wait:10).click
          end
        else
          Capybara.send(@validate_hash[:method],:css,@validate_hash[:label],text:@validate_hash[:content],wait:10).click
        end
      else
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            find(:css,@validate_hash[:label],wait:10).click if @validate_hash[:method] == 'find'
          end
          else
          find(:css,@validate_hash[:label],wait:10).click if @validate_hash[:method] == 'find'
        end
      end
    end

    def clickOption(option, section, type) #Da click en opciones dentro de la secciones de lap pagina Ayuda
      @validate_hash = DataHelpPage.option_selector(option,section, type)
      #puts "Se dará click la opción: '#{option}' de la sección '#{section}'\nObjeto del hash: '#{@validate_hash}' ".blue
      @condition = false
      @condition = true if @validate_hash.include? :content
      case @condition
      when true
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            Capybara.send(@validate_hash[:method],:css,@validate_hash[:label],text:@validate_hash[:content],wait:10).click
          end
        else
          Capybara.send(@validate_hash[:method],:css,@validate_hash[:label],text:@validate_hash[:content],wait:10).click
        end
      else
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            find(:css,@validate_hash[:label],wait:10).click if @validate_hash[:method] == 'find'
          end
        else
          find(:css,@validate_hash[:label],wait:10).click if @validate_hash[:method] == 'find'
        end
      end
    end

    def validateOption(section, type)
      @validate_hash = DataHelpPage.option_selector(0,section,type)
      @validate_hash.each do |key,country|
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10)
          end
        else
          Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10)
        end
        puts "Se valido la opción '#{key}' => #{country[:content]}".yellow
      end
    end

    def validateContents(option, section, type)
      begin
        num = 0
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            confirm = all(:css, 'div[role="tab"]', wait:5)
            confirm.each do
              num = num + 1
            end
          end
        else
          confirm = all(:css, 'div[role="tab"]', wait:5)
          confirm.each do
            num = num + 1
          end
        end
      rescue Capybara::ElementNotFound
      end
      puts "Numero de opciones: '#{num}'".yellow
      content = 0
      #puts "Se validara la opcion '#{option}' de la  sección '#{section}'".red
        puts "Hay pestañas!".blue
        while content<num
          content = content + 1
          if @helpUser == true
            within_frame(find(:id, 'ifm', wait:10))do
              all(:css, 'div[role="tab"]', wait:10)[0].click if content == 1 #Se buscó al inció con los ID pero daba errores
              all(:css, 'div[role="tab"]', wait:10)[1].click if content == 2 #Se buscó al inció con los ID pero daba errores
              all(:css, 'div[role="tab"]', wait:10)[2].click if content == 3 #Se buscó al inció con los ID pero daba errores
            end
          else
            all(:css, 'div[role="tab"]', wait:10)[0].click if content == 1 #Se buscó al inció con los ID pero daba errores
            all(:css, 'div[role="tab"]', wait:10)[1].click if content == 2 #Se buscó al inció con los ID pero daba errores
            all(:css, 'div[role="tab"]', wait:10)[2].click if content == 3 #Se buscó al inció con los ID pero daba errores
          end

          @validate_hash = DataHelpPage.validateContent(content,option,section,type)
          @validate_hash.each do |key,country|
            text = country[:content][country[:content].length-2] if country[:content][country[:content].length] == " "
            if @helpUser == true
              within_frame(find(:id, 'ifm', wait:10))do
                Capybara.send(country[:method],:css,country[:label],text:text,wait:10) if country[:content][country[:content].length] == " "
                Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10) if text == ""
              end
            else
              Capybara.send(country[:method],:css,country[:label],text:text,wait:10) if country[:content][country[:content].length] == " "
              Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10) if text == ""
            end
            puts "Se valido el elemento '#{key}' => #{country[:content]}".yellow
          end
        end
    end

    def validateContents2(option,section,type)
      content = 0
      puts "No hay pestañas!".blue
      @validate_hash = DataHelpPage.validateContent(content,option,section,type)
      @validate_hash.each do |key,country|
        text = country[:content][country[:content].length-2] if country[:content][country[:content].length] == " "
        if @helpUser == true
          within_frame(find(:id, 'ifm', wait:10))do
            Capybara.send(country[:method],:css,country[:label],text:text,wait:10) if country[:content][country[:content].length] == " "
            Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10) if text == ""
          end
        else
          Capybara.send(country[:method],:css,country[:label],text:text,wait:10) if country[:content][country[:content].length] == " "
          Capybara.send(country[:method],:css,country[:label],text:country[:content],wait:10) if text == ""
        end
        puts "Se valido el elemento '#{key}' => #{country[:content]}".yellow
      end
    end

    def helpUser(bol)
      @helpUser = false
      @helpUser = false if bol == 'Landing'
      @helpUser = true if bol == 'User page'
    end
  end
end