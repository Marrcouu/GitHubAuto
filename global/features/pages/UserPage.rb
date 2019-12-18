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

class UserPage
  extend Capybara::DSL
  $brow = ENV["BROWSER"]

  @user_css = {:uc1 => 'div.quota-container',:uc2 => 'a[href="/apps/files/"].active'} #,:uc3 => 'div.filter',:uc4 => 'li[data-id="favorites"]',:uc5 => 'li[data-id="filter-image"]',:uc6 => 'li[data-id="filter-video"]',:uc7 => 'li[data-id="shareoverview"]',:uc8 => 'li[data-id="systemtagsfilter"]',:uc11 => 'a.button.new'}
  @user_id = {:id1 => 'nextcloud',:id2 => 'searchbox',:id3 => 'settings',

  }
  @css_hover = {:hov1 => 'a.menuitem.action.action-details.permanent.cd-tooltip',
                :hov2 => 'a.menuitem.action.action-rename.permanent.cd-tooltip',
                :hov3 => 'a.menuitem.action.action-movecopy.permanent.cd-tooltip',
                :hov4 => 'a.menuitem.action.action-download.permanent.cd-tooltip'}
  @contents={:salir => "Cerrar sesión",
  }

  class << self

    #Funcion para validar los elementos del user home.
    def validate_page
      puts "Se va a validar la pagina de inicio de sesión!!".blue
      find(:css, 'div.button-create-resource',wait: 30)
      puts "Se encontro el objeto 'Nuevo'"
      @user_css.each do |key,val4|
        page.find(:css, val4, wait:10)
        puts "se encontro: #{val4}".cyan
      end
      all(:css,'span.name', wait:5)[1]
      puts "se encontro opción Reciente".cyan
      all(:css,'span.name', wait:5)[2]
      puts "se encontro opción Favoritos".cyan
      all(:css,'span.name', wait:5)[3]
      puts "se encontro opción Imágenes".cyan
      all(:css,'span.name', wait:5)[4]
      puts "se encontro opción Videos".cyan
      all(:css,'span.name', wait:5)[5]
      puts "se encontro opción Contactos".cyan
      all(:css,'span.name', wait:5)[6]
      puts "se encontro opción Compartidos".cyan
      all(:css,'span.name', wait:5)[7]
      puts "se encontro opción Etiquetas".cyan
      all(:css,'span.name', wait:5)[8]
      puts "se encontro opción Papeleria".cyan

      @user_id.each do |key,val5|
        find(:id, val5,  wait:10)
      end
      find(:id, 'appmenu', wait:10)
      find(:css,'div.file-list-header.list-view', wait:10)
      first(:css,'span', text: 'Nombre', wait:10)
      first(:css,'span', text: 'Tamaño', wait:10)
      #first(:css,'span', text: 'Modificado', wait:10)
      #first(:css, 'td.filename.ui-draggable', wait:10)
      if $brow.to_s.downcase.strip == "safari"
        #La funcion hover no se encuentra disponible en este momento para el navegador safari.
        # La ejecución de los desplazamientos del mouse requiere utilizar la API de interacciones de usuario avanzado de
        # WebDriver. En las vinculaciones de lenguaje de Java, esto es logrado por la Actions clase.
        # Lamentablemente, en este momento, SafariDriver no implementa la API de interacciones de usuario avanzado,
        # por lo que no puede lograr esto directamente. marzo-2018
      else
        #@css_hover.each do |key,val6|
          #find(:css, val6, wait: 20)
      #end
      end
    end

    def jetro(but)
      case but.to_sym
        when :'config'
          find(:id, 'expand', wait:20).click
          find(:css, 'a[href="/settings/user"]', wait:10).click

        when :'payment info'
          find(:css, 'a[href="/settings/user/payment_info"]', wait:10).click

        when :'250 GB'
          all(:css, 'div.plan', wait:10 )[1].click

      when :'150 GB'
        all(:css, 'div.plan', wait:10 )[1].click

        when :'security code'
          sleep 15
          find(:css, 'input.form-control', wait:10 ).click

        when :'code'
          find(:css, 'input.form-control', wait:10).send_keys '698'
          find(:css, 'button.confirm', wait:10).click
          sleep 30
          find(:css, 'button.confirm', wait:10).click
          sleep 15

      when :'Google logo'
         switch_to_window(windows.last)
         find(:css, 'img.gb_la', wait:10)
         puts "Se encontró logo de Google Play".white
         switch_to_window(windows.first)
         sleep 10

      when :'Apple logo'
        switch_to_window(windows.last)
        find(:css, 'a.ac-gn-link-apple', wait:10)
        puts "Se encontró logo de App store".white
        switch_to_window(windows.first)
        sleep 10

      when :'Windows logo'
        switch_to_window(windows.last)
        find(:css, 'a.ac-gn-link-windows', wait:10)
        puts "Se encontro "

      when :'Download buttons'
        switch_to_window(windows.last)
        find(:css, 'div.download-conainter-buttons', wait:10)
        puts "Se encontró botones de descarga".white
        switch_to_window(windows.first)
        sleep 10

      when :'Clarodrive logo'
        switch_to_window(windows.last)
        find(:css, 'img[src="/img/claro-sync-black.svg"]', wait:10)
        puts "Se encontró logo de Clarodrive".white
        switch_to_window(windows.first)
        sleep 10

      when :'Gallery button'
        find(:css, 'a[href="/apps/gallery/"]', wait:20).click

      when :'Order by'
        find(:id, 'orderListBy', wait:10).click
        sleep 10


      when :'Oldest first'
        texto= "Más antiguas primero"
        find(:css, 'li.order', text: texto, wait:10).click
        sleep 5


      when :'Recent first'
        texto= "Más recientes primero"
        find(:css, 'li.order', text: texto, wait:10).click
        sleep 5


      when :'All button'
        find(:css, 'div.tab-all', wait:10).click
        sleep 5

      when :'Albums button'
        find(:css, 'div.tab-albums', wait:10).click
        sleep 5

      when :'Shared button'
        find(:css, 'div.tab-shared', wait:10).click
        sleep 5


      when :'Image open menu'
        texto= "reuvxjd"
        find(:css, 'div.file-name.list-view', text: texto, wait:15)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css, 'ul.menu', wait:10).click
          all(:css, 'div.action-icon', wait:10)[5].click
        end


      when :'Move or copy'
        all(:css, 'div.action-icon', wait:15)[6].click

      when :'Folder'
        texto= "Prueba"
        within(find(:css, 'div.modal-wrapper', wait:10))do
          find(:css, 'div.file.list-view', text: texto, wait:10).click
        sleep 10
      end


      when :'Move'
        find(:id, 'Move', wait:10).click
        sleep 10


      when :'Activity button'
        find(:css, 'a[href="/apps/activity/"]', wait:20).click
        sleep 10

      when :'image'
        all(:css, 'div.draggable-image', wait:20)[6].click
        sleep 10


      when :'close'
        find(:css, 'input.svg.exit', wait:20).click
        sleep 5

      when :'video'
        all(:css, 'div.player_icon', wait:20)[0].click
        sleep 10

      when :'play'
        find(:css, 'button.vjs-big-play-button', wait:20).click
        sleep 35

      when :'pause'
        find(:css, 'video.vjs-tech', wait:20).click
        sleep 10

      when :'By you'
        all(:css, 'div.filter',  wait:10)[1].click
        sleep 10

      when :'By others'
        all(:css, 'div.filter',  wait:10)[2].click
        sleep 10


      when :'Favorites'
        all(:css, 'div.filter',  wait:10)[3].click
        sleep 10


      when :'Shared files'
        all(:css, 'div.filter',  wait:10)[4].click
        sleep 10


      when :'Security'
        all(:css, 'div.filter',  wait:10)[5].click
        sleep 10


      when :'Shared files'
        all(:css, 'div.filter',  wait:10)[6].click
        sleep 10


      when :'Comments'
        all(:css, 'div.filter',  wait:10)[7].click
        sleep 10



      when :'config'
        find(:id, 'expand', wait:20).click
        find(:css, 'a[href="/settings/user"]', wait:10).click



      end
    end






    #Función para dar click,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al botón según el valor recibido,
    def click_button(button)
      sleep 5
      contents = for_contents(Utils.country)
      @value = HelperUser.button_selector(button)
      case button.to_sym
      when :'need more space?',:'25gb',:'75gb',:'150gb',:'1024gb',:confirm,:plus,:'sharing confirm',:'config link',
          :personal,:'family space',:confirm, :'close file', :activity, :configuration, :'close upload',
        :'home',:'te compartieron',:'compartiste', :'start to enjoy', 'Carpeta '
        @value.each do |key,val|
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],@value[key][:text], wait:@value[key][:wait]).click if @value[key][:text] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait])[@value[key][:index]].click if @value[key][:index] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).click if @value[key][:index] == nil and @value[key][:text] == nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).hover if @value[key][:hover] == 'si'
        end

      when :'descargar'
        begin
          find(:id, 'expand', wait:10).click
          find(:css, 'a[href="/apps/external/39"]', wait:10).click
        rescue Capybara::ElementNotFound
          find(:css, 'a[href="/apps/external/48"]', wait:10).click
        end

      when :'cerrar modal compartir'
        sleep 3
        @value.each do |key,val|
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],@value[key][:text], wait:@value[key][:wait]).click if @value[key][:text] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait])[@value[key][:index]].click if @value[key][:index] != nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).click if @value[key][:index] == nil and @value[key][:text] == nil
          Capybara.send(@value[key][:metodo],@value[key][:tag],@value[key][:etiqueta],wait:@value[key][:wait]).hover if @value[key][:hover] == 'si'
        end

      when :'new folder'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[1]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist(contents[:contents][:'name folder'],'Carpeta Automatizacion')
        find(:css,'div.button-create-resource', wait:10).click
        find(:css, 'span.menu-item-name',text: contents[:contents][:'new folder'], wait:10).click
        sleep 1

      when :'new file'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist2(contents[:contents][:'name file'],'Archivo Automatizacion')
        find(:css,'div.button-create-resource', wait:10).click
        find(:css, 'span.menu-item-name',text: contents[:contents][:'new file'], wait:10).click

      when :'upload file'
        if $brow.to_s.downcase.strip == "safari"
          elemento = find(:css, 'tr.summary', wait:60)
          execute_script("arguments[0].scrollIntoView();", elemento)
          find(:css,'a.button.new', wait:10).click
          sleep 3
          puts "Se abrio el boton de nuevo"
          first(:xpath, '//*[@id="menu-new-button"]/li[2]/label', wait:10).click
          puts "Se abrio el boton#{contents[:contents][:'upload file']}"
          sleep 10
        else
          elemento = find(:css, 'tr.summary', wait:60)
          executeScript("arguments[0].scrollIntoView();", elemento)
          find(:css,'a.button.new', wait:10).click
          sleep 3
          puts "Se abrio el boton de nuevo"
          first(:css, 'span.displayname',text: contents[:contents][:'upload file'], wait:10).click
          puts "Se abrio el boton#{contents[:contents][:'upload file']}"
          sleep 3
        end

      when :share
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist3(contents[:contents][:'name file'],'Archivo Automatizacion')
        #within(page.all(:css, 'div.filename', wait:60)[20])do
         # all(:css, 'svg.icon', wait:10)[1].click
        #end

      when :'ligas compartidas'
        all(:css, 'div.filter.subfilter', wait:60)[2].click
        sleep 5

      when :'share contact'
        nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
        within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
          find(:css, 'a.action.action-share', wait:10).click
        end

      when :compartidos
        all(:css, 'span.name', wait:5)[6].click
        sleep 5

      when :recent
        sleep 10
        all(:css, 'span.name', wait:5)[1].click
        sleep 5

      when :favorites
        sleep 10
        all(:css, 'span.name', wait:5)[2].click
        sleep 5

      when :images
        sleep 10
        all(:css, 'span.name', wait:5)[3].click
        sleep 5

      when :videos
        sleep 10
        all(:css, 'span.name', wait:5)[4].click
        sleep 5

      when :'delete file'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name file'],'Archivo Automatizacion')
        sleep 5

      when :'delete image'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name image'],'carga jpg')
        sleep 5

      when :'delete audio'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name audio'],'carga mp3')
        sleep 5

      when :'delete video'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name video'],'carga mp4')
        sleep 5

      when :'delete text'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name text'],'carga text')
        sleep 5

      when :'delete carpet'
        sleep 10
        elemento = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento)
        ElementExist.element_exist4(contents[:contents][:'name folder'],'Carpeta Automatizacion')
        sleep 5

      when :'restore file'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name file'],'Archivo Automatizacion')
        sleep 5

      when :'restore image'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name image'],'carga jpg')
        sleep 5

      when :'restore audio'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name audio'],'carga mp3')
        sleep 5

      when :'restore video'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name video'],'carga mp4')
        sleep 5

      when :'restore text'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name text'],'carga text')
        sleep 5

      when :'restore carpet'
        all(:css, 'app-list', wait:60)[1]
        ElementExist.element_exist4(contents[:contents][:'name folder'],'Carpeta Automatizacion')
        sleep 5

      when :'rename video'
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el video".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
          end
        find(:css, 'input.ng-untouched', wait:10).send_keys "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5
        texto = "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el video renombrado".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "carga mp4"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5

      when :'rename image'
        texto = "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la imagen".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 3
        texto = "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la imagen renombrado".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "carga jpg"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5

      when :'rename music'
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el audio".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5
        texto = "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el audio renombrado".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "carga mp3"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5

      when :'rename txt'
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el texto".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5
        texto = "ABCDEFGJIJKLMNOPQRSTUVWXYZ1234567890"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el texto renombrado".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[4].click
        end
        find(:css, 'input.ng-untouched', wait:10).send_keys "carga txt"
        find(:css, 'input.ng-untouched', wait:10).send_keys "\ue007"
        sleep 5

      when :help
        sleep 10
        find(:id, 'expand', wait:30).click
        find(:css, 'a[href="/apps/external/2"]', wait:10).click
        sleep 10

      when :'garbage'
        all(:css, 'span.name', wait:5)[8].click
        sleep 5

      when :contacts
        sleep 5
        all(:css, 'span.name', wait:5)[5].click
        sleep 5

      when :'delete contact'
        nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
        within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
          find(:css, 'a.action.action-delete', wait:10).click
          sleep 5
        end

      when :'cancel invitation accepted'
        find(:css, 'button.confirm',text:'Eliminar del plan',wait:30).click
        find(:xpath, '/html/body/app-modal/div/div/app-modal-layout/div[2]/button[1]', wait:30).click
        #find(:xpath,'//*[@id="amx-main-modal"]/div/app-modal-layout/div[2]/button[1]', wait:30).click
        #find(:css, 'button.shareBtn.confirm',text:'Aceptar',wait:30).click
        sleep 5
        find(:css, 'button.confirm',text:'Regresar',wait:30).click

      when :'cancel invitations'
        ElementExist.cancel_inv(contents[:contents][:'cancel invitation'])

      when :'edit plan'
        first(:css, 'button.confirm', text: contents[:contents][:'edit plan'], wait:10).click

      when :'cancel plan'
        if $brow=='edge'
          menu = find(:id, 'expand',wait:10)
          page.execute_script("arguments[0].click();", menu)
        else
          find(:id, 'expand', wait:30).click
        end
        find(:xpath, '/html/body/header/div[2]/div[4]/nav/ul/li[1]/a', wait:30).click #click settings
        find(:css, 'a[href="/settings/user/payment_info"]', wait:30).click #click 'Información de pago'
        find(:css, 'div.canceling-plan', text:'Cancelar plan', wait:30).click #click Cancelar plan
        find(:css, 'a.button.confirm-cancel', text:'Confirmar',wait:30).click #click Confirmar

      when :'grid view'
        begin
          gridView = find(:css, 'div.icon.view-toggle', wait:10)
          gridView.click
        rescue Capybara::ElementNotFound
          puts "Ya se encuentra en vista Cuadrícula"
        end

      when :'list view'
        begin
          listView = find(:css, 'div.icon.view-toggle', wait:10)
          listView.click
        rescue Capybara::ElementNotFound
          puts "Ya se encuentra en vista Lista"
        end

      when :'about claro drive'
        if $env == 'PROD'
          sleep 10
          find(:css, 'div.external-link:nth-child(2)', wait:10).click #Da click en enlace externo 'Legales' en ambiente PROD
        else
          sleep 10
          find(:css, 'div.external-link:nth-child(2)', wait:10).click #Da click en enlace externo 'Legales' en ambiente TEST
          #find(:css, 'a[href="/apps/external/48"]', wait:10).click #Da click en enlace externo 'Legales' en ambiente TEST
        end
        within_frame(find(:id, 'ifm', wait:10))do
          find(:css, 'a[href="about"]',text:'Acerca de', wait:10).click
        end

      when :'terms and conditions'
        #boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/apps/external/41"]',wait:60}},
        if $env == 'PROD'
          find(:css, 'a[href="/apps/external/41"]', wait:10).click #Da click en enlace externo 'Legales' en ambiente PROD
        else
          find(:css, 'a[href="/apps/external/48"]', wait:10).click #Da click en enlace externo 'Legales' en ambiente TEST
        end

      when :'close'
        within(find(:css, 'div.modal-wrapper', wait:3))do
          all(:css, 'span', wait:5)[0].click
          sleep 5
        end

      when :'delete files'
        all(:css, 'div.checkbox.list-view')[0].click
        find(:css, 'div.delete').click
        sleep 5

      when :'search'
        find(:css, 'form.searchbox', wait:10).click
        find(:id, 'searchbox', wait:10).send_keys 'pdf'
        sleep 5

      when :'Carpeta Automatizacion'
        texto= "Carpeta Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:15).click

      when :'move image'
        texto= "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:15)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css, 'ul.menu', wait:10).click
          all(:css, 'div.action-icon', wait:10)[5].click
          sleep 5
        end

      when :'move audio'
        texto= "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:15)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css, 'ul.menu', wait:10).click
          all(:css, 'div.action-icon', wait:10)[5].click
          sleep 5
        end

      when :'move video'
        texto= "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:15)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css, 'ul.menu', wait:10).click
          all(:css, 'div.action-icon', wait:10)[5].click
          sleep 5
        end

      when :'move txt'
        texto= "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:15)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css, 'ul.menu', wait:10).click
          all(:css, 'div.action-icon', wait:10)[5].click
          sleep 5
        end

      when :filter
        find(:id, 'SearchInput', wait:10).send_keys "ABCDEFGJIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890+!3$%&/()=?¿:;.,"
        find(:id, 'SearchInput', wait:10).native.clear

      when :'first contact'
        all(:css, 'div.ContactsContact', wait:10)[0].click
        find(:css, 'div.DetailAvatar', wait:10)
        puts "Se encontro foto de perfil".cyan
        find(:css, 'div.DetailName', wait:10)
        puts "Se encontro el nombre".cyan
        find(:css, 'div.DetailsDate', wait:10)
        puts "Se encontro la fecha de nacimiento".cyan
        find(:css, 'div.DetailsLocation', wait:10)
        puts "Se encontro la dirección".cyan
        find(:css, 'div.DetailsPhones', wait:10)
        puts "Se encontro el/los números telefónicos".cyan
        find(:css, 'div.DetailsMail', wait:10)
        puts "Se encontro el correo electónico".cyan
        find(:id, 'IconClose', wait:10).click



      else
        raise "#{button}, no es us un boton valido."
      end
    end


    #Funcion para ingreso de datos textos u otra informacion dentro de user home.
    # recibe el elemento o lo que se va a ingresar dentro del user
    def forms_home(type)
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

      when :'new email'
        begin
          num =0
          new = all(:css, 'div.FPG_Place.F_Full', wait:10)
          new.each do
            num = num + 1
          end
          rescue Capybara::ElementNotFound
        end
        while num > 0
          email = email_random('new')
          first(:css, 'div.FPG_Place.F_Full', wait:15).click
          first(:id, 'FPA_Email', wait:10).native.send_keys email
          find(:css, 'button.shareBtn.confirm', wait:10).click
          sleep 10
          num =  num - 1
        end
      when :'target user email'
        email = email_random('old')
        puts "Correo a invitar: '#{email}'"
        find(:css, 'input.ng-pristine', wait:10).native.send_keys email
        find(:css, 'input.ng-valid', wait:10).send_keys "\ue007"

        #find(:css, 'input.select2-search__field', wait:10).native.send_keys email
        #find(:css, 'li.select2-results__option.select2-results__option--highlighted', text:"#{email}", wait:10).click

      when :'target email'
        email = email_random('new')
        #find(:css, 'input.choices__input', wait:10).native.send_keys email
        #find(:css, 'input.select2-search__field', wait:10).native.send_keys email
        #find(:css, 'li.select2-results__option.select2-results__option--highlighted', text:"#{email}", wait:10).click
        find(:css, 'input.ng-pristine', wait:10).native.send_keys email
        find(:css, 'input.ng-valid', wait:10).send_keys "\ue007"

        #find(:css, 'input.ng-valid', wait:10).key_press
        #find(:css, 'div.choices__inner', text:"#{email}", wait:10).click

      when :'family space'
        correo=email_random('new')
        puts "Correo a invitar: '#{correo}'"
        first(:css, 'div.FPG_Place.F_Full', wait:15).click
        first(:id, 'FPA_Email', wait:10).native.send_keys correo
        find(:css, 'button.shareBtn.confirm', wait:10).click
      end
    end

    #Funcion para validacion de elementos emergentes, creados o modificados dentro del user home.
    def find_element(type)
      contents = for_contents(Utils.country)
    case type.to_sym
    when :folder,:editor,:file,:'file shared for link',:'terms and conditios', :'TSA',
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

    when :'about claro drive'
      within_frame(find(:id, 'ifm', wait:10))do
        find(:css, 'p',text:'Claro drive © 2019 AMX Contenido S.A. de C.V.',wait:10)
      end

    when :'target email'
      find(:css, 'div.contacts', wait:5).click
      email = email_random('old')
      find(:css, 'span.contact-name', text: email, wait:10)
      #corr= "span[title=\"#{email}\"]"
      #find(:css, corr, wait:10)
      sleep 3
      within(find(:css, 'div.modal-wrapper', wait:3))do
        all(:css, 'span', wait:5)[0].click
        sleep 5
      end

    when :'target user email'
      find(:css, 'div.contacts', wait:5).click
      email = email_random('old')
      find(:css, 'span.contact-name', text: email, wait:10)
      #corr= "span[title=\"#{email}\"]"
      #find(:css, corr, wait:10)
      sleep 3
      #find(:css, 'span.shareWithLegend',text: 'Usuario de Claro drive',wait:10)
      within(find(:css, 'div.modal-wrapper', wait:3))do
        all(:css, 'span', wait:5)[0].click
        sleep 5
      end

    when :'cancel plan'
      find(:css, 'strong',text:'La cancelación de tu plan se programó con éxito.',wait:30)
      find(:css, 'strong',text:'Claro drive',wait:10)
      find(:css, 'strong',text:'¡Te vamos a extrañar!',wait:10)
      find(:css, 'a.button.confirm-back',text:'Continuar',wait:10).click #Programaste la cancelación de tu plan.
      find(:css, 'strong',text:'no podrás subir o compartir archivos y tendrás 30 días para obtener un nuevo plan',wait:30)

    when :'contacts'
      numName=all(:css, 'app-contacts-item', wait:5).size
      puts "Hay un total de '#{numName}' contactos".yellow

      numName2 = find(:css, 'div.ContactsQuantity strong', wait:5).text
      puts "Y en la etiqueta hay un total de #{numName2} contactos".yellow
      #numName2 = email[0..email.length-13]

      #begin
       # numElem=all(:css, 'span.ext', text:'.vcf').size
        #puts "Hay un total de '#{numElem}' contactos".yellow
      #rescue Capybara::ElementNotFound
       # puts "No se econtraron contactos".yellow
      #end

    when :'contacts label'
      texto="Contactos"
      find(:css, 'app-contacts-navbar div ', text:texto, wait:30)
      puts "Esta la etiqueta Contactos".cyan

    when :'name label'
      texto="Nombre"
      find(:css, 'div.ContactsHeaders div.HeaderName', text:texto, wait:30)
      puts "Esta la etiqueta Nombre".cyan

    when :'phone label'
      texto="Número telefónico"
      find(:css, 'div.ContactsHeaders div.HeaderPhone', text:texto, wait:30)
      puts "Esta la etiqueta Número telefónico".cyan

    when :'email label'
      texto="Correo electrónico"
      find(:css, 'div.ContactsHeaders div.HeaderMail', text:texto, wait:30)
      puts "Esta la Correo electrónico".cyan

    when :'last update label'
      numName3 = find(:css, 'app-contacts-menu div.ContactsLastUpdate', wait:5).text
      puts "Última actualización: #{numName3}".yellow

    when :'Option Created'
      if $env == 'PROD'
        all(:css, 'td.small', wait:5 )[0].click
        all(:css, 'td.small', wait:5 )[0].click
        puts "Se valido la opción un archivo o carpeta ha sido creado".yellow
      else
        all(:css, 'td.small', wait:5 )[0].click
        all(:css, 'td.small', wait:5 )[1].click
        all(:css, 'td.small', wait:5 )[0].click
        all(:css, 'td.small', wait:5 )[1].click
        puts "Se valido la opción un archivo o carpeta ha sido creado".yellow
      end

    when :'Option Renamed'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[1].click
        all(:css, 'td.small', wait:5 )[1].click
        puts "Se valido la opción un archivo o carpeta ha sido cambiado o renombrado".yellow
      else
        all(:css, 'td.small', wait:5 )[2].click
        all(:css, 'td.small', wait:5 )[3].click
        all(:css, 'td.small', wait:5 )[2].click
        all(:css, 'td.small', wait:5 )[3].click
        puts "Se valido la opción un archivo o carpeta ha sido cambiado o renombrado".yellow
      end

    when :'Option Favorite Files'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[2].click
        all(:css, 'td.small', wait:5 )[2].click
        puts "Se valido la opción limita las notificaciones de la creación y cambios a tus archivos favoritos".yellow
      else
        all(:css, 'td.small', wait:5 )[4].click
        all(:css, 'td.small', wait:5 )[5].click
        all(:css, 'td.small', wait:5 )[4].click
        all(:css, 'td.small', wait:5 )[5].click
        puts "Se valido la opción limita las notificaciones de la creación y cambios a tus archivos favoritos".yellow
      end

    when :'Option Deleted'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[3].click
        all(:css, 'td.small', wait:5 )[3].click
        puts "Se valido la opción un archivo o carpeta ha sido borrado".yellow
      else
        all(:css, 'td.small', wait:5 )[6].click
        all(:css, 'td.small', wait:5 )[7].click
        all(:css, 'td.small', wait:5 )[6].click
        all(:css, 'td.small', wait:5 )[7].click
      puts "Se valido la opción un archivo o carpeta ha sido borrado".yellow
      end

    when :'Option Restored'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[4].click
        all(:css, 'td.small', wait:5 )[4].click
        puts "Se valido la opción un archivo o carpeta ha sido restaurado".yellow
      else
        all(:css, 'td.small', wait:5 )[8].click
        all(:css, 'td.small', wait:5 )[9].click
        all(:css, 'td.small', wait:5 )[8].click
        all(:css, 'td.small', wait:5 )[9].click
        puts "Se valido la opción un archivo o carpeta ha sido restaurado".yellow
      end

    when :'Option Favorites'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[5].click
        all(:css, 'td.small', wait:5 )[5].click
        puts "Se valido la opción un archivo ha sido agregado o eliminado de tus favoritos".yellow
      else
        all(:css, 'td.small', wait:5 )[10].click
        all(:css, 'td.small', wait:5 )[11].click
        all(:css, 'td.small', wait:5 )[10].click
        all(:css, 'td.small', wait:5 )[11].click
        puts "Se valido la opción un archivo ha sido agregado o eliminado de tus favoritos".yellow
      end

    when :'Option Shared'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[6].click
        all(:css, 'td.small', wait:5 )[6].click
        puts "Se valido la opción un archivo ha sido agregado o eliminado de tus favoritos".yellow
      else
        all(:css, 'td.small', wait:5 )[12].click
        all(:css, 'td.small', wait:5 )[13].click
        all(:css, 'td.small', wait:5 )[12].click
        all(:css, 'td.small', wait:5 )[13].click
        puts "Se valido la opción un archivo o carpeta ha sido compartido".yellow
      end

    when :'Option Other Server'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[7].click
        all(:css, 'td.small', wait:5 )[7].click
        puts "Se valido la opción un archivo o carpeta fue compartido desde otro servidor".yellow
      else
        all(:css, 'td.small', wait:5 )[14].click
        all(:css, 'td.small', wait:5 )[15].click
        all(:css, 'td.small', wait:5 )[14].click
        all(:css, 'td.small', wait:5 )[15].click
        puts "Se valido la opción un archivo o carpeta fue compartido desde otro servidor".yellow
      end

    when :'Option Download'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[8].click
        all(:css, 'td.small', wait:5 )[8].click
        puts "Se valido la opción un archivo un archivo o carpeta compartido por correo o por liga pública ha sido descargado".yellow
      else
        all(:css, 'td.small', wait:5 )[16].click
        all(:css, 'td.small', wait:5 )[17].click
        all(:css, 'td.small', wait:5 )[16].click
        all(:css, 'td.small', wait:5 )[17].click
        puts "Se valido la opción un archivo un archivo o carpeta compartido por correo o por liga pública ha sido descargado".yellow
      end

    when :'Option Comments'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[9].click
        all(:css, 'td.small', wait:5 )[9].click
        puts "Se valido la opción comentarios de los archivos".yellow
      else
        all(:css, 'td.small', wait:5 )[18].click
        all(:css, 'td.small', wait:5 )[19].click
        all(:css, 'td.small', wait:5 )[18].click
        all(:css, 'td.small', wait:5 )[19].click
        puts "Se valido la opción comentarios de los archivos".yellow
      end

    when :'Option Labels'
      if $env=='PROD'
        all(:css, 'td.small', wait:5 )[10].click
        all(:css, 'td.small', wait:5 )[10].click
        puts "Se valido la opción las etiquetas para un archivo han sido modificadas".yellow
      else
        all(:css, 'td.small', wait:5 )[20].click
        all(:css, 'td.small', wait:5 )[21].click
        all(:css, 'td.small', wait:5 )[20].click
        all(:css, 'td.small', wait:5 )[21].click
        puts "Se valido la opción las etiquetas para un archivo han sido modificadas".yellow
      end

    when :'Created folder'
      texto = "Carpeta Automatizacion"
      all(:css, 'a.filename', text: texto, wait:20)[0]
      puts "Creaste Carpeta Automatizacion".yellow

    when :'Created file'
      texto = "Archivo Automatizacion.txt"
      all(:css, 'a.filename', text: texto, wait:20)[0]
      puts "Creaste Archivo Automatizacion".yellow

    when :'Rename folder'
      texto = "Renombraste Carpeta Automatizacion"
      all(:css, 'div.activitysubject', text: texto, wait:20)[0]
      puts "Renombraste Carpeta Automatizacion".yellow

    when :'Rename file'
      texto = "Renombraste Archivo Automatizacion.txt"
      all(:css, 'div.activitysubject', text: texto, wait:20)[0]
      puts "Renombraste Archivo Automatizacion".yellow

    when :'pdfs'
      begin
        numElem=all(:css, 'span.ext', text:'.pdf').size
        puts "Hay un total de '#{numElem}' pdfs".yellow
      rescue Capybara::ElementNotFound
        puts "No se econtraron pdf".yellow
      end

    when :'image'
      find(:css, 'span.name-without-extension',text:'carga jpg',wait:30)
      puts "Se encontro la imagen en la carpeta".cyan

    when :'audio'
      find(:css, 'span.name-without-extension',text:'carga jpg',wait:30)
      puts "Se encontro el audio en la carpeta".cyan

    when :'video'
      find(:css, 'span.name-without-extension',text:'carga jpg',wait:30)
      puts "Se encontro el video en la carpeta".cyan

    when :'txt'
      find(:css, 'span.name-without-extension',text:'carga jpg',wait:30)
      puts "Se encontro el texto en la carpeta".cyan

    end
    end

    def stop_sharing(type)
      contents = for_contents(Utils.country)
      case type.to_sym

      when :email
        sleep 1
        elemento1 = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento1)
        ElementExist.element_exist3(contents[:contents][:'name file'],'Archivo Automatizacion')
        find(:css, 'div.contacts').click
        email = email_random('old')
        within(find(:css, 'app-share.list', text: email, wait:10))do
          find(:css, 'span.delete', wait:3).click
        end
        find(:css, 'button.amx-btn.amx-btn-success', wait:3).click
        sleep 5
        within(find(:css, 'div.modal-wrapper', wait:3))do
          all(:css, 'span', wait:5)[0].click
          sleep 5
        end

        #all(:css, 'a.icon-more-wrap', wait:10)[1].click
        #find(:css, 'a.unshare', wait:10).click
        #sleep 3
        #find(:id, 'unshareBtnAmx', wait:10).click
        #sleep 3
        #find(:css, 'span.icon.icon-close', wait:10).click

      when :link
        sleep 10
        elemento1 = all(:css, 'app-list', wait:60)[2]
        execute_script("arguments[0].scrollIntoView();", elemento1)
        ElementExist.element_exist3(contents[:contents][:'name file'],'Archivo Automatizacion')
        #within(find(:css, 'tr[data-file="Archivo Automatizacion.txt"]', wait:10))do
         # find(:css, 'a.action.action.action-share.shared-style', wait:10).click
        #end
        sleep 3
        find(:css, 'label.switch', wait:10).click
        within(find(:css, 'div.modal-wrapper', wait:3))do
          all(:css, 'span', wait:5)[0].click
          sleep 5
        end
        #find(:css, 'span.icon.icon-close', wait:10).click

      when :'email contact'
        sleep 1
        nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
        within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
          find(:css, 'a[data-action="Share"]', wait:10).click
        end
        all(:css, 'a.icon-more-wrap', wait:10)[1].click
        find(:css, 'a.unshare', wait:10).click
        sleep 3
        find(:id, 'unshareBtnAmx', wait:10).click
        sleep 3
        find(:css, 'span.icon.icon-close', wait:10).click

      when :'link contact'
        nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
        within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
          find(:css, 'a.action.action.action-share.shared-style', wait:10).click
        end
        sleep 3
        find(:css, 'a.footer-link-configlink', wait:10).click
        find(:id, 'linkDeleteBtnAmx', wait:10).click
        sleep 4
        find(:css, 'span.icon.icon-close', wait:10).click
      end
    end

    def functions(button)
      sleep 5
      case button.to_sym
      when :image
        texto = "carga jpg"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "Se encontro la imagen".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
          end
          sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :music
        texto = "carga mp3"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el audio".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :video
        texto = "carga mp4"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el video".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :txt
        texto = "carga txt"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el texto".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :carpet2
        texto = "Carpeta Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la carpeta".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[3].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :image2
        texto = "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la imagen".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[3].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :music2
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el audio".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[3].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :video2
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el video".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[3].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3

      when :txt2
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el texto".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[3].click
        end
        sleep 5
        all(:css, 'li.tabHeader', wait:5)[0]
        puts "Se encontro sección Actividad".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[1].click
        puts "Se encontro sección Comentarios".cyan
        sleep 3
        all(:css, 'li.tabHeader', wait:5)[2].click
        puts "Se encontro sección Versiones".cyan
        sleep 3
        find(:css, 'span.tag-label', wait:5)
        puts "Se encontro sección Etiquetas".cyan
        sleep 3
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue activada".cyan
        sleep 5
        find(:css, 'div.fileName a', wait:5).click
        puts "Se encontro sección Elemento Oculto y fue desactivada".cyan
        sleep 3
      end
    end

    def favorites(button)
      case button.to_sym
      when :carpet
        texto = "Carpeta Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la carpeta".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
          sleep 8
        end
      when :image
        texto = "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la imagen".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        sleep 8
        end
      when :music
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el audio".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        #sleep 8
        end
      when :video
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el video".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        sleep 8
        end
      when :txt
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el texto".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[2].click
        sleep 8
        end
      end
    end

    def clean(button)
      case button.to_sym
        when :image
          sleep 5
          texto = "carga jpg"
          find(:css, 'div.file-name.list-view', text: texto, wait:20)
          puts "Se encontro la imagen".cyan
          within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
            all(:css, 'div.action-icon', wait:5)[0].click
          end
        when :music
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el audio".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :video
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el mp4".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :txt
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el txt".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :carpet
        texto = "Carpeta Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro la carpeta".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :file
        texto = "Archivo Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro el archivo".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :pic1
        texto = "perfil 1"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro imagen de perfil 1".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :pic2
        texto = "perfil 2"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro imagen de perfil 2".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :pic3
        texto = "perfil 3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro imagen de perfil 3".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :pic4
        texto = "perfil 4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro imagen de perfil 4".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      when :pic5
        texto = "perfil 5"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "Se encontro imagen de perfil 5".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
        end
      end
    end

    def folder (option)
      case option.to_sym
      when :'Carpeta Automatizacion'
        texto = "Carpeta Automatizacion"
        within(find(:css, 'div.modal-wrapper', wait:10))do
          find(:css, 'div.file.list-view', text: texto, wait:10).click
         sleep 5
          find(:id, 'Move', wait:10).click
        end
      end
    end

    #Función para cerrar sesión.
    def logout
      if $brow=='edge'
        #all(:css, 'li[tabindex="-1"]', wait:30)[3].click
        #puts "Se econtro el objeto".yellow
        el=find(:id, 'settings', wait:30)
        page.execute_script("arguments[0].click();", el)
      else
        find(:id, 'expand', wait:30).click
      end
      find(:css,'a', text: @contents[:salir], wait:30).click
      sleep 1
    end

    def acceptInvitation
      email = find(:xpath, '//*[@id="FP_GuestList"]/app-member[2]/div/div[2]', wait: 30).text
      puts "Se confirmará el correo : #{email}".yellow
      email1 = email[0..email.length-13]
      puts "Se corto el correo #{email1}".yellow
      sleep 3
      open_new_window
      switch_to_window(windows.last)
      visit "https://getnada.com"
      #find(:css, 'i.icon-plus', wait:30).click
      puts "Se dará click al ulti href = #"
      all(:css, 'a[href="#"]', wait:40).last.click
      sleep 3
      find(:css, 'input.user_name', wait:10).native.clear
      find(:css, 'input.user_name', wait:10).native.send_keys email1
      sleep 3
      case $brow.to_s.downcase.strip
      when "chrome"
        acpt=find(:xpath, '//*[@id="app"]/div/div[1]/footer/a[2]',wait: 30)
        page.execute_script("arguments[0].click();", acpt)
      when "mozilla","safari"
        find(:xpath, '/html/body/div/div[1]/footer/a[2]',wait: 30).click
      end
      all(:css,'span',text:"#{email}",wait:30)[0].click
      find(:xpath, '//*[@id="app"]/div/div[2]/div[2]/div[1]/div[2]/div/div[2]/div/div[1]/ul/li[1]/div/div[2]', wait:40).click
      within_frame(find(:id, 'idIframe', wait:30)) do
        find(:xpath, '/html/body/div/div[2]/div[1]/table[1]/tbody/tr/td[2]/a', wait:40).click
      end
      switch_to_window(windows.last)
    end

    #Función que cambia la foto de perfil desde los archivos de la computadora
    def profile_picture
      if $brow=='edge'
        el=find(:id, 'expand', wait:30)
        page.execute_script("arguments[0].click();", el)
        find(:xpath, '/html/body/header/div[2]/div[4]/nav/ul/li[1]/a', wait:30).click
        ran = Random.new.rand(1..5)
        dirProfPic = "../carga/perfil #{ran}.jpg"
        puts "Se cargo la foto: '#{dirProfPic}'"
        elemperfil = find(:id, 'uploadavatar', visible: false, wait: 10)
        archivoperfil = File.absolute_path(dirProfPic)
        selector = '#uploadavatar'
        page.execute_script("$('#{selector}').focus()")
        page.execute_script("$('#{selector}')[0].classList.remove('hiddenuploadfield');")  # Make sure the link doesn't have sr-only class
        elemperfil.attach_file(archivoperfil)
        page.execute_script("$('#{selector}').blur()")
        page.execute_script("$('#{selector}')[0].classList.add('hiddenuploadfield');")
        find(:id, "sendcropperbutton", wait:30).click
        sleep 10
      elsif $brow == 'ie'
        find(:id, 'expand', wait:30).click
        find(:xpath, '/html/body/header/div[2]/div[4]/nav/ul/li[1]/a', wait:30).click
        ran = Random.new.rand(1..5)
        dirProfPic = "perfil #{ran}.jpg"
        puts "Se cargo la foto: '#{dirProfPic}'"
        elemperfil = find(:id, 'uploadavatar', visible: false, wait: 10)
        archivoperfil = File.absolute_path(dirProfPic)
        if archivoperfil.match(/^C:\//)
          archivoperfil.gsub!(/\//, "\\")
        end
        elemperfil.attach_file archivoperfil
        find(:id, "sendcropperbutton", wait:30).click
        sleep 10
      else
        find(:id, 'expand', wait:30).click
        find(:css, 'a[href="/settings/user"]', wait:10).click
        #find(:xpath, '/html/body/header/div[2]/div[4]/nav/ul/li[1]/a', wait:30).click
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
    #Función que carga las fotos de perfil a Claro drive.
    def upload_profile_pictures
      find(:xpath, '//*[@id="appmenu"]/li[1]/a', wait:30).click
      puts "Se va a borrar el archivo si ya esta cargado"
      ElementExist.profile_upload_exist
      nums = ['1', '2', '3', '4', '5']
        nums.each do |num|
        dirArchivo = "../carga/perfil #{num}.jpg"
        elem = find(:id, 'file_upload_start', visible: false, wait: 30)
        archivo = File.absolute_path(dirArchivo)
        elem.attach_file(archivo)
        end
      sleep 10
    end

    #Función que sube una foto de perfil desde Claro drive.
    def profile_picture_app
      if $brow=='edge'
        el=find(:id, 'expand', wait:30)
        page.execute_script("arguments[0].click();", el)
      else
        find(:id, 'expand', wait:30).click
      end
      find(:xpath, '/html/body/header/div[2]/div[4]/nav/ul/li[1]/a', wait:10).click
      find(:id, 'selectavatar', wait:10).click
      ran = Random.new.rand(1..5)
      puts "Este es el número random: #{ran}"
      find(:css, 'td.filename', text:"perfil #{ran}.jpg", wait:30).click
      find(:xpath,'//*[@id="body-settings"]/div[6]/div[2]/button', wait:10).click
      find(:id, "sendcropperbutton", wait:10).click
      sleep 05
    end

    #Función que elimina la foto de perfil existente.
    def delete_profile_picture
      find(:id, "removeavatar", wait:10).click
      sleep 05
    end

    #Función que cierra sesión si se encuentra iniciada al inicio del caso.
    def logout_start
      begin
        close = find(:id, 'cboxClose', wait:10)
        rescue Capybara::ElementNotFound
      end
      unless close == nil
        find(:id, 'cboxClose', wait:10).click
      end
      begin
        menu = find(:id, 'expand')
      rescue Capybara::ElementNotFound
      end
      unless menu == nil
        if $brow=='edge'
          page.execute_script("arguments[0].click();", menu)
        else
          find(:id, 'expand', wait:30).click
        end
        find(:css,'a', text: @contents[:salir], wait:10).click
      end
    end


  end
end
