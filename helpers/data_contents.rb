require 'fileutils'
require 'yaml'

#Método para seleccionar los contenidos dependiendo el pais.
    $country.to_s.downcase.strip
    data = YAML.load(File.read("../global/config/data/#{Utils.country}/data_contents.yml"))


# Método para inicializar la variable de contents.
def startup
  @country = Utils.country
  yml_path = "../global/config/data/#{@country}/data_contents.yml"
  full_path = File.expand_path(yml_path, File.dirname(__FILE__))
  @data_textos = YAML.safe_load(File.open(full_path))
  @credentials = {
      email: :none,
      password: :none,
      user_type: :none
  }
  @contents_catalog= {
      :mx =>{
          :imagenes => {
              #:imagen_googleplay => 'img[src="img/google-play.svg',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :cs => @data_textos['CS'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :planes => @data_textos['planes'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :update => @data_textos[''],
              :'new folder' => @data_textos['new_folder'],
              :'upload file' => @data_textos['upload_file'],
              :'new file'=> @data_textos['new_file'],
              :'name folder'=> @data_textos['name_folder'],
              :'name file'=> @data_textos['name_file'],
              :'name image'=> @data_textos['name_image'],
              :'name audio'=> @data_textos['name_audio'],
              :'name video'=> @data_textos['name_video'],
              :'name text'=> @data_textos['name_text'],
              :'name file upload'=> @data_textos['name_file_upload'],
              :usercd => @data_textos['usercd'],
              :'cancel invitation' => @data_textos['cancel_invitation'],
              :'close sesion' => @data_textos['close_sesion'],
              :'edit plan' => @data_textos['edit_plan'],
              :save => @data_textos['save'],
              :'email shared' => @data_textos['email_shared'],
              :'msn space'=> @data_textos['msn_space']
          },
          :links => {
              :registro_telmex =>'a[href="/register/mexico/telmex"]',
              :registro_telcel =>'a[href="/register/mexico/telcel"]',
              #:login_clarom => 'a[href="/login/mexico/claromusica"]',
              #:login_clarov => 'a[href="/login/mexico/clarovideo"]',
              :registro_email =>'a[href="/register/mexico/email"]'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part => {
              :link_telmex => 'div.logo'
          },
      },
      :co =>{
          :imagenes => {
              #:imagen_googleplay => 'img[src="img/google-play.svg',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :planes => @data_textos['planes'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :forgot => @data_textos['forgot_password_telcel'],
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part => {
              :link_claromovil => 'div.logo.claro-movil'
          },
      },
      :gt =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :hn =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :ni =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :sv =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :cr =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :pe =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :pa =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :cl =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :ec =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :pr =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :do =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              :email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :ar =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              #:email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :uy =>{
          :imagenes => {
              :imagen_googleplay => 'img[src="img/google-play.svg"]',
              :imagen_appstore => 'img[src="img/app-store.svg"]',
              :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
              :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
              :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
              :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
          },
          :textos => {
              :cv => @data_textos['CV'],
              :cm => @data_textos['CM'],
              :descubre => @data_textos['descubre'],
              :comparte => @data_textos['comparte'],
              :respalda => @data_textos['respalda'],
              :descarga => @data_textos['descarga'],
              :opciones => @data_textos['opciones'],
              :fq => @data_textos['fq'],
              #:email => @data_textos['email'],
              :terms => @data_textos['terms'],
          },
          :contents => {
              :register =>  @data_textos['register'],
              :login =>  @data_textos['login'],
              :promo =>  @data_textos['promo'],
              :login_button =>  @data_textos['login_button'],
              :'50gb' =>  @data_textos['50gb'],
              :'150gb' =>  @data_textos['150gb'],
              :'1024gb' =>  @data_textos['1024gb'],
              :iam_user_claromovil => @data_textos['iam_user_claromovil'],
              :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
              :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
              :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
              :text_button_claromovil => @data_textos['text_button_claromovil']
          },
          :links => {
              :registro_claro =>'div.logos'
          },
          :css => {
              :button => 'div.dropbtn',
              :imageb => 'img.normal',
              :telmex_Logo => 'img.telmex_logo',
              :telcel_logo => 'img.telcel_logo',
              :tdc_logo => 'img.credit_logo',
              :div => 'div.cr',
              :precio => 'div.precio',
              :planes => 'div.planes'
          },
          :atrib_part =>{
              :link_claro_movil => 'div.logo.claro-movil',
          }

      },
      :pg =>{
        :imagenes => {
          :imagen_googleplay => 'img[src="img/google-play.svg"]',
          :imagen_appstore => 'img[src="img/app-store.svg"]',
          :imagen_clarofordesk => 'img[src="img/claro-box-for-desk.svg"]',
          :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
          :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
          :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white.svg"]'
        },
        :textos => {
          :cv => @data_textos['CV'],
          :cm => @data_textos['CM'],
          :descubre => @data_textos['descubre'],
          :comparte => @data_textos['comparte'],
          :respalda => @data_textos['respalda'],
          :descarga => @data_textos['descarga'],
          :opciones => @data_textos['opciones'],
          :fq => @data_textos['fq'],
          :email => @data_textos['email'],
          :terms => @data_textos['terms'],
        },
        :contents => {
          :register =>  @data_textos['register'],
          :login =>  @data_textos['login'],
          :promo =>  @data_textos['promo'],
          :login_button =>  @data_textos['login_button'],
          :'50gb' =>  @data_textos['50gb'],
          :'150gb' =>  @data_textos['150gb'],
          :'1024gb' =>  @data_textos['1024gb'],
          :iam_user_claromovil => @data_textos['iam_user_claromovil'],
          :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
          :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
          :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
          :text_button_claromovil => @data_textos['text_button_claromovil']
        },
        :links => {
          :registro_claro =>'div.logos'
        },
        :css => {
          :button => 'div.dropbtn',
          :imageb => 'img.normal',
          :telmex_Logo => 'img.telmex_logo',
          :telcel_logo => 'img.telcel_logo',
          :tdc_logo => 'img.credit_logo',
          :div => 'div.cr',
          :precio => 'div.precio',
          :planes => 'div.planes'
        },
        :atrib_part =>{
          :link_claro_movil => 'div.logo.claro-movil',
        }
      },
      :br =>{
        :imagenes => {
          :imagen_googleplay => 'img[src="img/google-play.svg"]',
          :imagen_appstore => 'img[src="img/app-store.svg"]',
          :imagen_clarofordesk => 'img[src="img/claro-box-for-desk-bra.svg"]',
          :imagen_googlepaly_logo =>'img[src="/img/google-play-logo.svg"]',
          :imagen_appstore_logo =>'img[src="/img/app-store-logo.svg"]',
          :imagen_clarodeskwhite =>'img[src="/img/claro-drive-for-desk-white-bra.svg"]'
        },
        :textos => {
          :cv => @data_textos['CV'],
          :cm => @data_textos['CM'],
          :descubre => @data_textos['descubre'],
          :comparte => @data_textos['comparte'],
          :respalda => @data_textos['respalda'],
          :descarga => @data_textos['descarga'],
          :opciones => @data_textos['opciones'],
          :fq => @data_textos['fq'],
          :email => @data_textos['email'],
          :terms => @data_textos['terms'],
        },
        :contents => {
          :register =>  @data_textos['register'],
          :login =>  @data_textos['login'],
          :promo =>  @data_textos['promo'],
          :login_button =>  @data_textos['login_button'],
          :'50gb' =>  @data_textos['50gb'],
          :'150gb' =>  @data_textos['150gb'],
          :'1024gb' =>  @data_textos['1024gb'],
          :iam_user_claromovil => @data_textos['iam_user_claromovil'],
          :terms_reg_claromovil => @data_textos['terms_reg_claromovil'],
          :text_btregist_claromovil => @data_textos['text_btregist_claromovil'],
          :checkbox_text_claromovil => @data_textos['checkbox_text_claromovil'],
          :text_button_claromovil => @data_textos['text_button_claromovil']
        },
        :links => {
          :registro_claro =>'div.logos'
        },
        :css => {
          :button => 'div.dropbtn',
          :imageb => 'img.normal',
          :telmex_Logo => 'img.telmex_logo',
          :telcel_logo => 'img.telcel_logo',
          :tdc_logo => 'img.credit_logo',
          :div => 'div.cr',
          :precio => 'div.precio',
          :planes => 'div.planes'
        },
        :atrib_part =>{
          :link_claro_movil => 'div.logo.claro-movil',
        }
      },
  }
end

#Funcion para seleccionar contenidos por pais
def for_contents(country)
  startup if @contents_catalog.nil?
  Info.basic country
  Info.basic "Inicializando contenidos para #{country}."
  @credentials = @contents_catalog[country.to_sym]
  @credentials
end

# Obtiene el data source para las variables de contenidos

$site_content = {
  #Series
  :'catalog serie' => data['catalog_serie'],
  # ppe_serie: data['ppe_serie'], Se especifica, pero nunca se usa
  :'est serie'  =>data['est_serie'],
  :'free serie' => data['free_serie'],
  # estppe_serie: data['estppe_serie'], Se especifica, pero nunca se usa
  :'freemiumest serie' => data['freeest_serie'],
  # movies
  :'catalog movie' => data['catalog_movie'],
  :'ppe movie' => data['ppe_movie'],
  :'est movie' => data['est_movie'],
  :'free movie' => data['free_movie'],
  :'ppe/est' => data['estppe_movie'],
  :'freemiumest movie' => data['freeest_movie'],
  # contents with parental control
  :'free movie with parental control' => data['free_movie_cp'],
  :'free serie with parental control' => data['free_serie_cp'],
  :'catalog movie with parental control' => data['catalog_movie_cp'],
  :'catalog serie with parental control' => data['catalog_serie_cp'],
  :'ppe movie with parental control' => data['ppe_movie_cp'],
  :'est serie with parental control' => data['est_serie_cp'],
  :'ppe/est with parental control' => data['estppe_movie_cp'],
  :'freemiumest movie with parental control' => data['freeest_serie_cp'],
  :'freemiumest serie with parental control' => data['freeest_serie_cp'],
  # contents without parental control
  :'free movie without parental control' => data['free_movie_ncp'],
  :'free serie without parental control' => data['free_serie_ncp'],
  :'catalog movie without parental control' => data['catalog_movie_ncp'],
  :'catalog serie without parental control' => data['catalog_serie_ncp'],
  :'ppe movie without parental control' => data['ppe_movie_ncp'],
  :'est serie without parental control' => data['est_serie_ncp'],
  :'ppe/est without parental control' => data['estppe_movie_ncp'],
  :'freemiumest movie without parental control' => data['freeest_serie_ncp'],
  :'freemiumest serie without parental control' => data['freeest_serie_ncp'],
  # Live content
  # content_ppelive: data['content_ppelive'], Se especifica, pero nunca se usa
  # Fox contents
  :'fox serie' => data['fox_serie'],
  :'fox movie' => data['fox_movie'],
  :'noggin serie' => data['noggin_serie'],
  :'non free noggin serie' => data['non_free_noggin_serie'],
  :'crackle serie' => data['crackle_serie'],
  :'crackle movie' => data['crackle_movie'],
  :'crackle movie ncp' => data['crackle_movie_ncp']
}




# series
$catalog_serie = data['catalog_serie']
$ppe_serie = data['ppe_serie']
$est_serie = data['est_serie']
$free_serie = data['free_serie']
$estppe_serie = data['estppe_serie']
$freeest_serie = data['freeest_serie']

# movies
$catalog_movie = data['catalog_movie']
$ppe_movie = data['ppe_movie']
$est_movie = data['est_movie']
$free_movie = data['free_movie']
$estppe_movie = data['estppe_movie']
$freeest_movie = data['freeest_movie']

# contents with parental control
$free_movie_cp = data['free_movie_cp']
$free_serie_cp = data['free_serie_cp']
$catalog_movie_cp = data['catalog_movie_cp']
$catalog_serie_cp = data['catalog_serie_cp']
$ppe_movie_cp = data['ppe_movie_cp']
$est_serie_cp = data['est_serie_cp']
$estppe_movie_cp = data['estppe_movie_cp']
$freeest_serie_cp = data['freeest_serie_cp']

# contents without parental control
$free_movie_ncp = data['free_movie_ncp']
$free_serie_ncp = data['free_serie_ncp']
$catalog_movie_ncp = data['catalog_movie_ncp']
$catalog_serie_ncp = data['catalog_serie_ncp']
$ppe_movie_ncp = data['ppe_movie_ncp']
$est_serie_ncp = data['est_serie_ncp']
$estppe_movie_ncp = data['estppe_movie_ncp']
$freeest_serie_ncp = data['freeest_serie_ncp']

$content_ppelive = data['content_ppelive']

$fox_serie = data['fox_serie']
$fox_movie = data['fox_movie']