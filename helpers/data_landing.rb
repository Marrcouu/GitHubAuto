class DataLandingElements
  @hash_buttons_drive = {
    :"Claro video" => 'a[href="https://www.clarovideo.com/"]',
    :"Claro música" => 'a[href="https://www.claromusica.com/"]',
    :"Claro shop" => 'a[href="http://www.claroshop.com/"]',
    :"Paises" => 'div.dropbtn',
    :"Mexico" => '/?country=mexico',
    :"Colombia" => 'a[href="/?country=colombia"]',
    :"Brasil" => 'a[href="/?country=brasil"]',
    :"Guatemala" => 'a[href="/?country=guatemala"]',
    :"Honduras" => 'a[href="/?country=honduras"]',
    :"Nicaragua" => 'a[href="/?country=nicaragua"]',
    :"El Salvador" => 'a[href="/?country=elsalvador"]',
    :"Costa Rica" => 'a[href="/?country=costarica"]',
    :"Peru" => 'a[href="/?country=peru"]',
    :"Argentina" => 'a[href="/?country=argentina"]',
    :"Panama" => 'a[href="/?country=panama"]',
    :"Chile" => 'a[href="/?country=chile"]',
    :"Ecuador" => 'a[href="/?country=ecuador"]',
    :"Puerto Rico" => 'a[href="/?country=puertorico"]',
    :"Republica Dominicana" => 'a[href="/?country=dominicana"]',
    :"Uruguay" => 'a[href="/?country=uruguay"]',
    :"Paraguay" => 'a[href="/?country=paraguay"]',
    :"Country" => 'a[href="/?country=colombia"]',
    :"Logo Claro drive" => 'img[alt="Claro drive"]',
    #:"Registrate_SupDer" => 'a.register',###
    #:"Inicia Sesión_SupDer" => 'a.login',###
    :"Inicia Sesión Centro" => 'a.btn-login-landing[href="/login/mexico"]',
    :"registered" => 'a.btn-register-landing[href="/register/mexico"]',
    :"registered2" => 'a.btn-register-landing[href="/free/mexico"]',
    :"Inicia sesión" => 'a.btn-login-landing[href="/login/mexico"]', ###
    :"Boton 25 GB gratis con telcel o telmex" => 'a[href="/free/mexico"]',###
    :"telmex"=> 'a[href="/register/mexico/telmex"]',
    :"telcel"=> 'a[href="/register/mexico/telcel"]',
    :"claromusica"=> 'a[href="/register/mexico/claromusica"]',
    :"clarovideo"=> 'a[href="/register/mexico/clarovideo"]',
    :"correo"=> 'a[href="/register/mexico/email"]',###
    :"Descubre" => 'a[href="/#1"]',
    :"Comparte" => 'a[href="/#2"]',
    :"Respalda" => 'a[href="/#3"]',
    :"Descarga" => 'a[href="/#4"]',
    :"Opciones" => 'a[href="/#5"]',
    :"Planes" => 'a[href="/#6"]',
    :"Negocio" => 'a[href="/microsite/mexico/claronegocio"]',
    :"Preguntas Frecuentes" => 'a[href="/mexico/help"]',
    :"Correo Electrónico" => 'a[href="mailto:soporte@clarodrive.com"]',
    :"Formas de pago Telmex" => 'a[href="/register/mexico/telmex"]',###
    :"Formas de pago Telcel" => 'a[href="/register/mexico/telcel"]',###
    :"Formas de pago TDC" => 'a[href="/register/mexico/email"]',###
    :"Acerca de" => 'a[href="/mexico/legals?option=about"]',
    :"Terminos y condiciones" => 'a[href="/mexico/legals?option=terms"]',
    :"Politica de privacidad" => 'a[href="/mexico/legals?option=privacy"]',
    :"Descarga la app Android" => 'a[href="https://play.google.com/store/apps/details?id=com.clarodrive.android"]', #'a[href="https://play.google.com/store/apps/details?id=com.clarodrive.android"]',
    :"Descarga la app iOS" => 'a[href="https://itunes.apple.com/mx/app/claro-drive/id1250666367?mt=8"]',
    :"Descarga la app" => 'a[href="/download"]',
    :"Boton Inicia sesión" => 'a.btn-login-landing[href="/login/mexico"]',

  }
  @hash_buttons_negocio = {
    :"Caracteristicas" => 'a[href="/microsite/mexico/claronegocio#1"]',
    :"Descarga" => 'a[href="/microsite/mexico/claronegocio#4"]',
    :"Comparar planes" => 'a[href="/microsite/mexico/claronegocio#6"]',
    :"Claro drive personal" => 'img[src="/img/claro-sync-white.svg"]',
    :"Preguntas Frecuentes" => 'a[href="/microsite/mexico/claronegocio/help"]', ### SE CAMBIA UNICAMENTE PARA TESTEAR FUNCIONALIDAD DE AYUDA - faq
    :"Correo Electrónico" => 'a[href="mailto:soporte@clarodrive.com"]',
    :"Formas de pago Claro drive Negocio" => 'a[href="https://telmex.com/web/negocios/clarodrive"]',
    :"Acerca de" => 'a[href="/microsite/mexico/claronegocio/legals?option=about"]',
    :"Terminos y condiciones" => 'a[href="/microsite/mexico/claronegocio/legals?option=terms"]',
    :"Politica de privacidad" => 'a[href="/microsite/mexico/claronegocio/legals?option=privacy"]',
    :"Negocio Comienza Ahora" => 'a[href="https://telmex.com/web/negocios/clarodrive"]',
    :"Obtener 250Gb" => 'div.btn', #[1]
    :"Obtener 1Tb" => 'div.btn', #[2]

  }
  class << self
    def button_selector(button,page)
      case page
      when :"Claro drive"
        @button_name = @hash_buttons_drive[button]
        @button_name
      when :"Claro negocio"
        @button_name = @hash_buttons_negocio[button]
        @button_name
      end
    end
  end
end