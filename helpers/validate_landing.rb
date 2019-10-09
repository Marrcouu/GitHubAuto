class ValidateLanding
  @video_hash = {
  }
  @musica_hash = {
  }
  @shop_hash = {
  }
  @hash_page = {

    :"Claro drive" => {
      :"Logo Claro drive" => {etiqueta:'div.logo',metodo:'find'},
      :"Imagen Claro drive" => {etiqueta:'img.normal',metodo:'find'},
    },
    :"Claro música" => {
      :"logo musica" => {etiqueta:'img[src="/imagenes/logo_cm.svg"]',metodo:'find'},
      :"musica landing" => {etiqueta:'h1.bundle_landing_title',metodo:'first'}
      #:"musica landing" => {etiqueta:'div.landing_title',metodo:'first'}
    },
    :"Claro video" => {
      #:"logo video" => {etiqueta:'img.hidden-xs',metodo:'find'},
      :"logo video" => {etiqueta:'img[src="/webclient/sk_core/images/clarovideo-logo-sitio.svg"]',metodo:'find'},
      :"video landing" => {etiqueta:'input.c-s-input__prompt',metodo:'first'}
    },
    :"Claro shop" => {
      :"logo shop" => {etiqueta:'a.header__logo',metodo:'find'}
    },
    :"Colombia" => {
      :"imagen Colombia" => {etiqueta:'img[src="/img/CO_round.png"]',metodo:'find'},
      :"texto Colombia" => {etiqueta:'span.country',metodo:'find'}
    },
    :"Registrate_SupDer" => {
      :"texto register" => {etiqueta: 'div.txt2', contenido:'Escoge una opción para registrarte',metodo:'find'},
      :"link register telmex" => {etiqueta:'a[href="/register/mexico/telmex"]',metodo:'first'},
      :"link register telcel" => {etiqueta:'a[href="/register/mexico/telcel"]',metodo:'first'},


      :"link register musica" => {etiqueta:'a[href="/register/mexico/claromusica"]',metodo:'first'},
      :"link register video" => {etiqueta:'a[href="/register/mexico/clarovideo"]',metodo:'first'},
      :"link register correo" => {etiqueta:'a[href="/register/mexico/email"]',metodo:'first'},
    },
    :"registered" => {
      :"logo inicio" => {etiqueta:'div.title_br', contenido:'Regístrate',metodo:'find'},
      :"Texto register" => {etiqueta:'p.new_option_text', contenido: 'Elige una opción', metodo:'find'},

    },
    :"registered2" => {
      :"logo inicio" => {etiqueta:'div.title_br', contenido:'Regístrate',metodo:'find'},
      :"Texto register" => {etiqueta:'p.new_option_text', contenido: 'Elige una opción', metodo:'find'},
    },
      :"Inicia sesión" => {
      :"logo inicio" => {etiqueta:'div.title_br', contenido:'Inicia sesión',metodo:'find'},
      :"Texto inicio" => {etiqueta:'p.new_option_text', contenido:'Elige una opción',metodo:'find'},

   },
    :"Descubre" => {
      :"Texto descubre" => {etiqueta:'p', contenido:'Te presentamos el espacio ideal para compartir tu mundo digital entre amigos, familia y compañeros de trabajo.',metodo:'find'},
      :"Texto strong" => {etiqueta:'strong',contenido:'fotos, videos, música, documentos',metodo:'find'},
      :"imagen nube" => {etiqueta:'img.cloud',metodo:'find'},
      :"imagen laptop" => {etiqueta:'img.laptop',metodo:'find'}
    },
    :"Boton Inicia sesión" =>  {
      :"logo inicio" => {etiqueta:'div.title_br', contenido:'Inicia sesión',metodo:'find'},
      :"Texto inicio" => {etiqueta:'p.new_option_text', contenido:'Elige una opción',metodo:'find'},
    },
    :"Comparte" => {
      :"comparte landing" => {etiqueta:'a', contenido:'Comparte', metodo:'find'},
      #:"imagen file" => {etiqueta:'img[src="img/icon-text-file.svg"]',metodo:'first'},
      #:"imagen musica" => {etiqueta:'img[src="img/icon-music.svg"]' ,metodo:'first'},
      #:"imagen img" => {etiqueta:'img[src="img/icon-image.svg"]'  ,metodo:'first'},
      #:"imagen video" => {etiqueta:'img[src="img/icon-video.svg"]' ,metodo:'first'}
    },
    :"Respalda" => {
      :"Texto respalda" => {etiqueta:'div.big',contenido:'No pierdas tus fotos',metodo:'find'},
      :"div small" => {etiqueta:'div.small',metodo:'find'},
    },
    :"Descarga" => {
      :"Texto 1" => {etiqueta:'div.txt1',metodo:'first'},
      :"Texto 2" => {etiqueta:'div.txt2',contenido:'Disponible en Google Play, iOS',metodo:'first'},
      :"link google" => {etiqueta:'a[href="https://play.google.com/store/apps/details?id=com.clarodrive.android"]',metodo:'all',position:0},

      :"link iOS" => {etiqueta:'a[href="https://itunes.apple.com/mx/app/claro-drive/id1250666367?mt=8"]',metodo:'all',position:0},
      :"link desktop" => {etiqueta:'a[href="/download"]',metodo:'all',position:0}
    },
    :"Opciones" => {
      :"Texto comienza" => {etiqueta:'div.txt1',contenido:'¡Comienza ahora!',metodo:'first',position:1},
      :"Texto elige" => {etiqueta:'div.txt2',contenido:'Elige una opción para registrarte',metodo:'find'}
    },
    :"Planes" => {
      :"Texto necesitas" => {etiqueta:'div.txt1',contenido:'¿Necesitas más espacio?',metodo:'find'},
      :"Texto planes" => {etiqueta:'div.txt2',contenido:'Para llevar tus archivos a donde quieras, es probable que necesites un plan a tu medida. Por ello te ofrecemos planes flexibles en los que instantáneamente obtendrás una mayor capacidad de almacenamiento en la nube.',metodo:'find'},
      :"div 75" => {etiqueta:'div.capacidad',contenido:'150GB',metodo:'find'},
      :"div 150" => {etiqueta:'div.capacidad',contenido:'250GB',metodo:'find'},
      :"div 1024" => {etiqueta: 'div.capacidad',contenido:'1024GB',metodo:'find'}
    },
    :"Negocio" => {
      :"Imagen Negocio" => {etiqueta:'img[src="/img/claro-negocio-black.svg"]',metodo:'first'},
      :"Texto inicia sesión" => {etiqueta:'div.title_br',contenido:'Inicia sesión',metodo:'find'},
      :"Texto inicia sesión2" => {etiqueta:'p.new_option_text',contenido:'Ingresa los siguientes datos',metodo:'find'}

    },
    :"Caracteristicas" => {
      :"strong1" => {etiqueta:'strong',contenido:'Trabajo en equipo colaborativo',metodo:'find'},
      #:"strong2" => {etiqueta:'strong',contenido:'Protección garantizada',metodo:'find'},
      #:"strong3" => {etiqueta:'strong',contenido:'Gestiona tus equipos de trabajo',metodo:'find'}
    },
    :"Comparar planes" => {
      :"strong" => {etiqueta:'strong',contenido:'Elige el plan que más te convenga',metodo:'find'},
      :"div_txt" => {etiqueta:'div.txt2',contenido:'Claro drive Negocio te ofrece planes a la medida de tus necesidades de almacenamiento de información corporativa en la nube. Ambos planes incluyen:',metodo:'find'}
    },
    :"Telmex Negocio" => {
      :"logo Telmex" => {etiqueta:'a.logoTmx', metodo:'find'}
      #:"imagen" => {etiqueta:'a.img[src="/documents/20194/755482/telmex.svg"]',metodo:'find'}
    },
    :"Preguntas Frecuentes" => {
      :"titulo" => {etiqueta:'span',contenido:'Centro de ayuda',metodo:'find'},
      #:"Texto" => {etiqueta:'div.mat-form-field-infix', contenido:'¿Cómo podemos ayudarte?', metodo:'first'}
      #:"div_txt" => {etiqueta:'div.txt',contenido:'Para que tu experiencia sea aún mejor, a continuación te mostramos una guía que te explica paso a paso qué es y cómo funciona Claro drive.',metodo:'find'}
    },
    :"Formas de pago Telmex" => {
      :"imagen" => {etiqueta:'img[src="/img/telmex.svg"]',metodo:'find'},
      #:"Texto" => {etiqueta:'p.text-big',contenido:'Ingresa los siguientes datos',metodo:'find'},
      :"Texto" => {etiqueta:'div.form-fields', metodo:'find'},
    },
    :"Formas de pago Telcel" => {
      #:"Texto" => {etiqueta:'p.text-bigger',contenido:'Regístrate con tu número Telcel',metodo:'find'}
      :"imagen" => {etiqueta:'img[src="/img/telcel.svg"]',metodo:'find'},
      :"Texto" => {etiqueta:'input#identifier.input-register-text', metodo:'find'}

    },
    :"Formas de pago TDC" => {
      :"imagen" => {etiqueta:'div.title',contenido:'Formas de Pago', metodo:'find'},
      :"Texto" => {etiqueta:'p.new_option_text',contenido:'Elige una opción',metodo:'first'}
    },
    :"Acerca de" => {
      :"imagen" => {etiqueta:'a[href="about"]',metodo:'find'},
    },
    :"Negocio Terminos y condiciones" => {
      :"imagen" => {etiqueta:'h1',contenido: 'TÉRMINOS Y CONDICIONES DE USO DE CLARO DRIVE NEGOCIO', metodo:'find'},
    },
    :"Terminos y condiciones" => {
      :"imagen" => {etiqueta:'h1',contenido: 'TÉRMINOS Y CONDICIONES DE USO DE CLARO DRIVE', metodo:'find'},
    },
    :"Politica de privacidad" => {
      :"imagen" => {etiqueta:'div.div-terms',metodo:'find'},
    },
    :"Descarga la app Android" => {

      :"imagen" => {
            #etiqueta:'a[href="https://play.google.com/store/apps/developer?id=CLARO"]', metodo:'first'
            etiqueta:'img.gb_la', metodo:'find'}
    },
    :"Descarga la app iOS" => {
      :"div" => {etiqueta:'div.localnav-background.we-localnav__background',metodo:'find'}
    },
    :"Descarga la app" => {
      :"button" => {etiqueta:'input.button.download-win',metodo:'find'}
    },
  }

  @validate_countries = {
    :"Mexico" => 'a[href="/?country=mexico"]',
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
    :"Paraguay" => 'a[href="/?country=paraguay"]'
  }
  class << self
    def validation_countries
      @validate_countries
    end
    def validate_page(page)
      @validate_page = @hash_page[page]
    end
  end
end