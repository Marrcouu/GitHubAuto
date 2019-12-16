#require_relative '../../../helpers/robo_butons'
require_relative '../../../helpers/element_exist'
require 'capybara/rspec'


class FilesPage
  $brow = ENV["BROWSER"]
  extend Capybara::DSL
  class << self

    def uploadFile(file)
        if $brow == 'ie'
          ElementExist.file_upload_exist(file) #file_upload_start
          dirArchivo = "../carga/carga #{file}.#{file}"
          elem = find(:id, 'file_upload_start', visible: false, wait: 30)
          archivo = File.absolute_path(dirArchivo)
          if archivo.match(/^C:\//)
            archivo.gsub!(/\//, "\\")
          end
          elem.attach_file(archivo)
          sleep 10
        else $brow == 'edge' or $brow == 'chrome'
          ElementExist.file_upload_exist(file) #file_upload_start
          dirArchivo = "../carga/carga #{file}.#{file}"
          elem = find(:id, 'file_upload_start', visible: false, wait: 30)
          archivo = File.absolute_path(dirArchivo)
          selector='#file_upload_start'
          page.execute_script("$('#{selector}').focus()")
          page.execute_script("$('#{selector}')[0].classList.remove('hiddenuploadfield');")  # Make sure the link doesn't have sr-only class
          puts "Se mostro el input"
          sleep 5
          elem.attach_file(archivo)
          page.execute_script("$('#{selector}').blur()")
          page.execute_script("$('#{selector}')[0].classList.add('hiddenuploadfield');")
        end
    end

    def downloadFile(file)
      case file.to_sym
      when :'contacts in pdf'
          find(:css, 'div.DownloadButton', wait:10).click
          all(:css, 'div.DownloadOption', wait:10)[0].click
          puts "se descargo contactos en pdf".yellow
          sleep 5

      when :'contacts in vcf'
        all(:css, 'div.DownloadOption', wait:10)[1].click
        puts "se descargo contactos en vcf".yellow
        sleep 5

      when :'contacts in csv'
        all(:css, 'div.DownloadOption', wait:10)[2].click
        puts "se descargo contactos en csv".yellow
        sleep 5
      #end
        #nameFile = find(:css,'div.file-name',wait:10)['2019-06-04_16-15-45']
        #within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
          #all(:css, 'div.action-icon',wait:10){3}.click
          #name=nameFile[0..nameFile.length-5]

          #case file.to_sym
          #when :'contact-pdf'
             #fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.pdf"
            #File.delete(fileDownloaded) if File.exist?(fileDownloaded)
            #find(:css, 'a.menuitem.action.action-downloadpdf.permanent.cd-tooltip[data-action="DownloadPDF"]', wait:10).click
          #when :'contact-csv'
           # fileDownloaded = "/Users/CuatliSaul/Downloads/#{name}.csv"
          #  File.delete(fileDownloaded) if File.exist?(fileDownloaded)
           # find(:css, 'a.menuitem.action.action-downloadcsv.permanent.cd-tooltip[data-action="DownloadCSV"]', wait:10).click
          #when :'contact-vcf'
          #  fileDownloaded = "/Users/CuatliSaul/Downloads/#{name}.vcf"
           # File.delete(fileDownloaded) if File.exist?(fileDownloaded)
            #find(:css, 'a.menuitem.action.action-downloadvcf.permanent.cd-tooltip[data-action="DownloadVCF"]', wait:10).click
          #end

      when :'jpg'
        texto = "carga jpg"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[5].click
          sleep 5
        end

      when :'mp3'
        texto = "carga mp3"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[5].click
          sleep 5
        end

      when :'mp4'
        texto = "carga mp4"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[5].click
          sleep 5
        end

      when :'txt'
        texto = "carga txt"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[5].click
          sleep 5
        end

      when :'carpet2'
        texto = "Carpeta Automatizacion"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[6].click
          sleep 5
        end

      when :'jpg2'
        texto = "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[6].click
          sleep 5
        end

      when :'mp32'
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[6].click
          sleep 5
        end

      when :'mp42'
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[6].click
          sleep 5
        end

      when :'txt2'
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        puts "se encontro el archivo de descarga".cyan
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          find(:css,'ul.menu', wait:5).click
          all(:css, 'div.action-icon', wait:5)[6].click
          sleep 5
        end

      end
    end

    def downloadedFile(file)
      case file.to_sym
      when :'contact-pdf', :'contact-csv', :'contact-vcf'
        if $env=='PROD'
        texto = "2019-10-15_12-15-11"
        find(:css, 'span.name-without-extension', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
      #when :'contact-pdf', :'contact-csv', :'contact-vcf'
       # nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
        #within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
         # name=nameFile[0..nameFile.length-5]
          case file.to_sym
          when :'contact-pdf'
            fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.pdf"
            puts "Ruta: '#{fileDownloaded}'".yellow
            archivo = File.file?(fileDownloaded)
            puts "Se encontro el contacto #{name}".green if archivo
            puts "No encontro el contacto #{name}".red if !archivo
          when :'contact-csv'
            fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.csv"
            puts "Ruta: '#{fileDownloaded}'".yellow
            archivo = File.file?(fileDownloaded)
            puts "Se encontro el contacto #{name}".green if archivo
            puts "No encontro el contacto #{name}".red if !archivo
          when :'contact-vcf'
            fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.vcf"
            puts "Ruta: '#{fileDownloaded}'".yellow
            archivo = File.file?(fileDownloaded)
            puts "Se encontro el contacto #{name}".green if archivo
            puts "No encontro el contacto #{name}".red if !archivo
          end
          sleep 2
        end
        else
          texto = "2019-11-08_14-06-17"
          find(:css, 'span.name-without-extension', text: texto, wait:20)
          within(find(:css, 'div.file.app-droppable', text: texto, wait:10))do
            #when :'contact-pdf', :'contact-csv', :'contact-vcf'
            # nameFile = find(:css,'tr[data-type="file"]',wait:10)['data-file']
            #within(find(:css, "tr[data-file='#{nameFile}']", wait:40))do
            # name=nameFile[0..nameFile.length-5]
            case file.to_sym
            when :'contact-pdf'
              fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.pdf"
              puts "Ruta: '#{fileDownloaded}'".yellow
              archivo = File.file?(fileDownloaded)
              puts "Se encontro el contacto #{name}".green if archivo
              puts "No encontro el contacto #{name}".red if !archivo
            when :'contact-csv'
              fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.csv"
              puts "Ruta: '#{fileDownloaded}'".yellow
              archivo = File.file?(fileDownloaded)
              puts "Se encontro el contacto #{name}".green if archivo
              puts "No encontro el contacto #{name}".red if !archivo
            when :'contact-vcf'
              fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.vcf"
              puts "Ruta: '#{fileDownloaded}'".yellow
              archivo = File.file?(fileDownloaded)
              puts "Se encontro el contacto #{name}".green if archivo
              puts "No encontro el contacto #{name}".red if !archivo
            end
            sleep 2
          end

        end






      when :'jpg'
        texto = "carga jpg"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.jpg"
          puts "Ruta: '#{fileDownloaded}'".yellow
          archivo = File.file?(fileDownloaded)
          puts "Se encontro el archivo #{texto}".green if archivo
          puts "No encontro el archivo #{texto}".red if !archivo
        end
      when :'mp3'
        texto = "carga mp3"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          sleep 20
          fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.mp3"
          puts "Ruta: '#{fileDownloaded}'".yellow
          archivo = File.file?(fileDownloaded)
          puts "Se encontro el archivo #{texto}".green if archivo
          puts "No encontro el archivo #{texto}".red if !archivo
        end
      when :'mp4'
        texto = "carga mp4"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          sleep 20
          fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.mp4"
          puts "Ruta: '#{fileDownloaded}'".yellow
          archivo = File.file?(fileDownloaded)
          puts "Se encontro el archivo #{texto}".green if archivo
          puts "No encontro el archivo #{texto}".red if !archivo
        end
      when :'txt'
        texto = "carga txt"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.txt"
          puts "Ruta: '#{fileDownloaded}'".yellow
          archivo = File.file?(fileDownloaded)
          puts "Se encontro el archivo #{texto}".green if archivo
          puts "No encontro el archivo #{texto}".red if !archivo
        end
      when :'carpet'
        texto = "Carpeta Automatizacion"
        find(:css, 'div.file-name.list-view', text: texto, wait:20)
        within(find(:css, 'div.file.app-droppable.list-view', text: texto, wait:10))do
          fileDownloaded = "/Users/CuatliSaul/Downloads/#{texto}.zip"
          puts "Ruta: '#{fileDownloaded}'".yellow
          archivo = File.file?(fileDownloaded)
          puts "Se encontro el archivo #{texto}".green if archivo
          puts "No encontro el archivo #{texto}".red if !archivo
        end
      end
    end
  end
end