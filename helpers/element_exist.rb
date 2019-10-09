
class ElementExist
  extend Capybara::DSL

  class << self
    def element_exist(element,name)
      begin
        fol = find(:css, 'div.filename', text: element, wait:5)
        puts "Se encontro el archivo '#{element}'"
      rescue Capybara::ElementNotFound
        puts "No se encontro el archivo '#{element}' para borrar"
      end
      conca = 'div.filename'
      unless fol == nil
        within(find(:css, conca, text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
          puts "Se borro el archivo '#{element}'"
          sleep 5
        end
      end
    end

    def element_exist2(element,name)
      begin
        fol = find(:css, 'div.file.app-droppable.list-view.preview-loaded', text: element, wait:5)
        puts "Se encontro el archivo '#{element}'"
      rescue Capybara::ElementNotFound
        puts "No se encontro el archivo '#{element}' para borrar"
      end
      conca = 'div.file.app-droppable.list-view.preview-loaded'
      unless fol == nil
        within(find(:css, conca, text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
          puts "Se borro el archivo '#{element}'"
          sleep 5
        end
      end
    end

    def element_exist3(element,name)
      begin
        find(:css, 'div.file-name.list-view', text: element, wait:5)
        puts "Se encontro el archivo '#{element}'"
        within(find(:css, 'div.file.app-droppable.list-view', text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[1].click
          sleep 5
        end
      end
    end

    def element_exist4(element,name)
      begin
        find(:css, 'div.file-name.list-view', text: element, wait:5)
        puts "Se encontro el archivo '#{element}'"
        within(find(:css, 'div.file.app-droppable.list-view', text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
          sleep 5
        end
      end
    end

    def element_exist5(element,extencion)
      begin
        fol = find(:css, 'div.file-name.list-view', text:element, wait:20)
        puts "Se encontro el archivo '#{element}'"
      rescue Capybara::ElementNotFound
        puts "No se encontro el archivo '#{element}' para borrar"
      end
      conca = 'div.file.app-droppable.list-view.preview-loaded'
      unless fol == nil
        within(find(:css, conca, text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[0].click
          puts "Se borro el archivo '#{element}'"
          sleep 5
        end
      end
    end

    def download(element,name)
      begin
        find(:css, 'div.file-name.list-view', text: element, wait:5)
        puts "Se encontro el contacto '#{element}'"
        within(find(:css, 'div.file.app-droppable.list-view', text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[3].click
          sleep 5
        end
      end
    end

    def cancel_inv(inv)
      begin
        num = 0
        confirm = all(:css, 'button.confirm', text: inv, wait:10)
        confirm.each do
          num = num + 1
        end
      rescue Capybara::ElementNotFound
      end
      while num > 0
        first(:css, 'button.confirm', text: inv, wait:10).click
        sleep 1
        find(:css, 'button.confirm', text:'Aceptar' ,wait:10).click
        sleep 6
        num = num - 1
      end
    end

    def close_sesion(ses)
      begin
        num = 0
        confirm = all(:css, 'a.button', text: ses, wait:10)
        confirm.each do
          num = num + 1
        end
      rescue Capybara::ElementNotFound
      end
      while num > 0
        first(:css, 'a.button', text: ses, wait:10).click
        sleep 1
        find(:css, 'button.confirm', text:'CONTINUAR' ,wait:10).click
        sleep 6
        num = num - 1
      end
    end

    def file_upload_exist(element)
      texto = "carga #{element}"
      extencion= "#{texto}.#{element}"
      element_exist5(texto,extencion)
    end

    def profile_upload_exist
      num = ["1","2","3","4","5"]
      num.each do |nums|
        texto = "perfil #{nums}"
        extencion ="#{texto}.jpg"
        element_exist(texto,extencion)
      end
     puts "Se han eliminado las fotos de perfil existentes"
    end



    def find_element_upload(element)
      texto = "carga #{element}"
      #extencion= "#{texto}.#{element}"
      find(:css, 'span.name-without-extension', text: texto, wait:20)
    end
  end
end