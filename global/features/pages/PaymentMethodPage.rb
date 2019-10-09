require 'fileutils'
require_relative '../../../helpers/paths_env'
require_relative '../../../helpers/data_labels'
require_relative '../../../helpers/data_users'
require_relative '../../../helpers/generic'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/utils'
require_relative 'LoginTelcelPage'


class PaymentPage
  extend Capybara::DSL

  class << self

    #Función para seleccionar un método de pago,
    # recibe un parametro tipo STRING,
    # lo convierte en simbolo,
    # da click al método según el valor recibido,
    def click_payment_method(method)
      case method.to_sym
        when :telcel
          all(:css, 'li.pay_selector',maximum:3, wait:10)[1].click
          if $brow.to_s.downcase.strip == "safari" || $brow.to_s.downcase.strip == "mozilla" || $brow.to_s.downcase.strip == "edge"
            sleep 4
            all(:css, 'li.pay_selector',maxium:3, wait:10)[1].click
          end
        when :telmex
          all(:css, 'li.pay_selector', maximum:3, wait:10)[2].click
          if $brow.to_s.downcase.strip == "safari" || $brow.to_s.downcase.strip == "mozilla" || $brow.to_s.downcase.strip == "edge"
            sleep 4
            all(:css, 'li.pay_selector',maximum:3, wait:10)[2].click
          end
        when :'credit card'
            all(:css, 'li.pay_selector', maximum:3, wait:10)[0].click
          if $brow.to_s.downcase.strip == "safari" || $brow.to_s.downcase.strip == "mozilla" || $brow.to_s.downcase.strip == "edge"
            sleep 4
            all(:css, 'li.pay_selector',maximum:3, wait:10)[0].click
          end
       when :telmex2
         all(:css, 'li.pay_selector', maximum:2, wait:10)[1].click
          if $brow.to_s.downcase.strip == "safari" || $brow.to_s.downcase.strip == "mozilla" || $brow.to_s.downcase.strip == "edge"
            sleep 4
            all(:css, 'li.pay_selector',maximum:2, wait:10)[1].click
          end
        else
          raise "#{method}, metodo de pago no existe"
      end
    end

    #Función para llenar los campos de método de pago tdc, telmex y telcel en correo,
    # recibe un parámetro tipo String,
    # lo convierte en simbolo,
    # llena los campos del método de pago que indique el valor recibido.
    def fill_payment_method(type,method)
      credentials = DataUsers.data
      case method.to_sym
        when :telmex
          credentials[:number].to_s.each_char do |char|
            sleep 0.1
            execute_script("document.getElementById('telmexPhoneNumber').value = '#{credentials[:number]}'")
            find(:css,'input[name="telmexPhoneNumber"]', wait:10).send_keys char if char
          end
        when :telcel
          if type.to_sym == :password or type.to_sym == :'wrong password'
            pass = LoginTelcelPage.result_password
            puts pass
            pass = pass.to_s
            loop do
              passTelcel = find(:id, 'telcelPhoneNumber', wait:10).value
              execute_script("document.getElementById('telcelPhoneNumber').value = '#{pass}'")
              sleep 2
              break if passTelcel.to_i == pass.to_i
            end
          else
            if $brow == 'safari'
              loop do
                execute_script("document.getElementsByName('telcelPhoneNumber')[0].value = '#{credentials[:number]}'")
                sleep 2
                numTelcel = find(:xpath,'//*[@id="telcelPaymentNumberForm"]/input', wait:10).value
                break if numTelcel.to_i == credentials[:number].to_i
              end
            end
            credentials[:number].to_s.each_char do |char|
              find(:css, 'input[name="identifier"]', wait:10).send_keys char if char
            end
          end
      when :'credit card'
        #if $brow == 'safari'
          #puts "Nombre: '#{credentials[:cardname]}', Numero TDC: '#{credentials[:cardnumber]}', Mes: '#{credentials[:cardmonth]}', Año: '#{credentials[:cardyear]}', CVV: '#{credentials[:cardcode]}'"
          #find(:id,'cardName',wait:10).click
          #find(:id,'cardName',wait:10).send_keys credentials[:cardname] if credentials[:cardname]
          #find(:id,'cardNumber', wait:10).click
          #loop do
            #varMonth = find(:id,'cardExpMonth',wait:10).value
            #varYear = find(:id,'cardExpYear',wait:10).value
            #execute_script("document.getElementById('cardNumber').value =  '#{credentials[:cardnumber]}'")
            #execute_script("document.getElementById('cardExpMonth').value =  '#{credentials[:cardmonth]}'")              ##### TODOS ESTE FRAGMENTO SE USO PARA REGISTRAR CON CORREO EN SAFARI DEBIDO A PROBLEMAS DE CAPYBARA Y SAFARI
            #execute_script("document.getElementById('cardExpYear').value =  '#{credentials[:cardyear]}'")
            #execute_script("document.getElementById('cardCode').value =  '#{credentials[:cardcode]}'")
            #find(:id,'cardCode',wait:10).native.send_keys credentials[:cardcode]
            #find(:xpath, '/html/body/div[1]/form/div[2]/div[1]/a[3]', wait:10).click
            #find(:id,'cardExpMonth',wait:10).click
            #find(:id,'cardExpMonth',wait:10).native.send_keys credentials[:cardmonth]
            #find(:id,'cardExpYear',wait:10).click
            #find(:id,'cardExpYear',wait:10).native.send_keys credentials[:cardyear]
            #sleep 2
            #puts "Mes ingresado: '#{varMonth}', Año ingresado: '#{varYear}' "
            #break if varMonth.to_s == credentials[:cardmonth].to_s && varYear.to_s == credentials[:cardyear].to_s
          #end
          #else
         find(:id,'cardName',wait:10).click
         find(:id,'cardName',wait:10).send_keys credentials[:cardname] if credentials[:cardname]
         find(:id,'cardNumber', wait:10).click
         credentials[:cardnumber].to_s.each_char do |char|
           sleep 0.1
           find(:id,'cardNumber', wait:10).native.send_keys char if char
         end
         find(:id,'cardExpMonth',wait:10).click
         find(:id,'cardExpMonth',wait:10).native.send_keys credentials[:cardmonth]
         find(:id,'cardExpYear',wait:10).click
         find(:id,'cardExpYear',wait:10).native.send_keys credentials[:cardyear]
         find(:id,'cardCode',wait:10).click
         find(:id,'cardCode',wait:10).native.send_keys credentials[:cardcode]
        #end
        puts "Tipo de tarjeta: '#{credentials[:cardtype]}'".yellow
        all(:css,'input[ng-reflect-name="cardType"]',wait:10)[0] if credentials[:cardtype] == 'visa'
        all(:css,'input[ng-reflect-name="cardType"]',wait:10)[1] if credentials[:cardtype] == 'mastercard'
      else
          raise "#{method}, no es un metodo de pago valido"
        end
      end
    end
  end
