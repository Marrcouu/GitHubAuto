require 'fileutils'
require 'rspec'
require 'rspec/matchers'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/data_contents'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/element_exist'
require_relative '../../../global/features/pages/FilesPage'
require 'capybara/selenium/node'
require_relative '../../../helpers/user_click'
require_relative '../../../helpers/utils'

class ConfigUserPage
  extend Capybara::DSL

  class << self

    #Funcion para validar los elementos de la pagina
    def validate_page
      puts "Se va a validar la pagina de inicio de sesión!!".blue
      find(:css, 'a[href="/settings/user"]', wait:10)
      find(:css, 'a[href="/settings/user/security"]', wait:10)
      find(:css, 'a[href="/settings/user/activity"]', wait:10)
      find(:css, 'a[href="/settings/user/payment_info"]', wait:10)
      #find(:css, 'a[href="/settings/user/richdocuments"]', wait:10)
      find(:css, 'a[href="/settings/user/additional"]', wait:10)
      puts"Se encontraron todas las opciones".cyan
    end

    #Funcion para dar click
    def click_button(button)
      sleep 5
      contents = for_contents(Utils.country)
      @value = HelperUser.button_selector(button)
      case button.to_sym
      when :activity, :information, :security, :'additional config'
        @value.each do |key,val|
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],@value[key][:text], wait:@value[key][:wait]).click if @value[key][:text] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait])[@value[key][:index]].click if @value[key][:index] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).click if @value[key][:index] == nil and @value[key][:text] == nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).hover if @value[key][:hover] == 'si'
        end

      when :'close sesion'
        ElementExist.close_sesion(contents[:contents][:'close sesion'])
        puts "Se valido Dispositivos y sesiones".yellow

      else
        raise "#{button}, no es us un boton valido."
      end
    end

    #Función que elimina la foto de perfil existente.
    def erase_profile_picture
      find(:id, "removeavatar", wait:10).click
      sleep 05
    end

    def find_element(type)
      contents = for_contents(Utils.country)
      case type.to_sym
      when :folder,:editor,:file,:'file shared for link',:'terms and conditios',
        :'invitations',:'user whitin family space',:'read only',:'window of uploads',:'video uploaded',:'te compartieron', :'compartiste', :'invitation canceled'
        @value = HelperUser.find_elem(type)
        @value.each do |key,val|
          case key
          when :click
            Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).click
          when :elem1, :elem2, :elem3
            Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],text:contents[:contents][@value[key][:text]],wait:@value[key][:wait]) if @value[key][:text] != nil
            Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],maximum:@value[key][:maximum],wait:@value[key][:wait]) if @value[key][:maximum] != nil
            Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]) if @value[key][:text] == nil and  @value[key][:click] == nil and  @value[key][:maximum] == nil
          when :sleep
            sleep @value[key][:sleep]
          end
        end

      when :'new name'
        page.evaluate_script 'window.location.reload()'
        find(:css, 'input[value="'+name_random("old")+'"]', wait:10)
      end
    end


    def forms_user(type)
      credentials = DataUsers.data
      contents = for_contents(Utils.country)
      @value = HelperUser.forms_home(type)
      case type.to_sym
      when :'name folder',:'name file',:'testing text',:'more space',:'less space'
        @value.each do |keys,values|
          case keys
          when :click
            Capybara.send(@value[keys][:metodo],@value[keys][:tag],@value[keys][:etiqueta],wait:@value[keys][:wait]).click if @value[keys][:text] == nil
            Capybara.send(@value[keys][:metodo],@value[keys][:tag],@value[keys][:etiqueta],text: contents[:contents][@value[keys][:text]],wait:@value[keys][:wait]).click if @value[keys][:text] != nil
          when :clear
            Capybara.send(@value[keys][:metodo],@value[keys][:tag],@value[keys][:etiqueta],wait:@value[keys][:wait]).native.clear
          when :send, :send2
            Capybara.send(@value[keys][:metodo],@value[keys][:tag],@value[keys][:etiqueta],wait:@value[keys][:wait]).native.send_keys credentials[@value[keys][:creden]] if @value[keys][:creden] != nil
            Capybara.send(@value[keys][:metodo],@value[keys][:tag],@value[keys][:etiqueta],wait:@value[keys][:wait]).native.send_keys :return if @value[keys][:key] != :return
          when :sleep
            sleep @value[keys][:sleep]
          end
        end

      when :'new name'
        find(:id, 'displayname', wait:10).native.clear
        find(:id, 'displayname', wait:10).native.send_keys name_random("new") if credentials[:new] == 'new'
        find(:id, 'saveBtn', wait:10).click
        sleep 5

      end
    end

    def prueba(type)
      case type.to_sym
      when :'Claro video'
        find(:css, 'a[href="https://www.clarovideo.com/"]', wait:10).click
        puts "Hice click en Claro video".cyan
        switch_to_window(windows.last)
        all(:css, 'div.claro-navitem_container', wait:10)[2].click
        sleep 5
        page.refresh
        sleep 5
      end
    end


    def change_profile_picture
      ran = Random.new.rand(1..5)
      dirProfPic = "../carga/perfil #{ran}.jpg"
      puts "Se cargo la foto: '#{dirProfPic}'"
      elemperfil = find(:id, 'uploadavatar', visible: false, wait: 10)
      archivoperfil = File.absolute_path(dirProfPic)
      elemperfil.attach_file(archivoperfil)
      find(:id, "sendcropperbutton", wait:30).click
      sleep 10
    end
  end
 end