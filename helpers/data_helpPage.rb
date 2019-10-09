class DataHelpPage

  ################## Comienza Claro drive Masivo

  @hash_sections_massive = { #Arreglo para secciones
    :"registration and login" => {label:'mat-expansion-panel[data-title="registro-e-inicio-de-sesion"]',method:'find'},
    :"payment information" => {label:'mat-expansion-panel[data-title="pagos-y-facturas"]',method:'find'},
    :"how to upload information to Claro drive" => {label:'mat-expansion-panel[data-title="como-subir-informacion-a-claro-drive"]',method:'find'},
    :"share files and folders" => {label:'mat-expansion-panel[data-title="compartir-archivos-y-carpetas"]',method:'find'},
    :"family space" => {label:'mat-expansion-panel[data-title="espacio-familiar"]',method:'find'},
    :"storage" => {label:'mat-expansion-panel[data-title="almacenamiento"]',method:'find'},
    :"desktop client" => {label:'mat-expansion-panel[data-title="cliente-de-escritorio"]',method:'find'},
    :"mobile" => {label:'mat-expansion-panel[data-title="movil"]',method:'find'},
    :"file properties" => {label:'mat-expansion-panel[data-title="propiedades-de-los-archivos"]',method:'find'},
    :"manage account" => {label:'mat-expansion-panel[data-title="administrar-cuenta"]',method:'find'},
    :"paper bin" => {label:'mat-expansion-panel[data-title="papelera"]',method:'find'},
    :"activity" => {label:'mat-expansion-panel[data-title="actividad"]',method:'find'},
    :"photo editing" => {label:'mat-expansion-panel[data-title="edicion-de-fotos"]',method:'find'},
    :"scanner" => {label:'mat-expansion-panel[data-title="escaner"]',method:'find'},
  }

  @hash_options_registrationLogin = { #Arreglo para opciones dentro de seccion 'Registro y Inicio de sesión'
    :"telmex account" => {label:'p',content:'Cuenta Telmex',method:'find'},
    :"telcel account" => {label:'p',content:'Cuenta Telcel',method:'find'},
    :"claro video and claro music account" => {label:'p',content:'Cuenta Claro video, Claro Música',method:'find'},
    :"email account" => {label:'p',content:'Cuenta con correo',method:'find'},
    :"restore password" => {label:'p',content:'Restablecer contraseña',method:'find'}
  }

  @hash_content_telmexAccountWeb = { #Arreglo para contenido dentro de la primera opción 'Web'
    :titulo => {label:'h1',content:'Cuenta Telmex',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telmex',method:'find'},
    :contenido1 => {label:'p',content: 'Escribe tu número TELMEX a 10 dígitos del numero de la línea un correo electrónico y contraseña. (tu correo electrónico es el nombre de usuario de tu cuenta Claro drive)​.',method:'find'},
    :contenido2 => {label:'p',content: 'Si estás conectado a la red de internet de este número, TELMEX realizará una validación automática de tus datos, en caso contrario cuentas con 30 días para realizar la validación usando Claro drive conectado a tu red infinitum.',method:'find'},
    :contenido3 => {label:'p',content: 'Elige el plan que deseas contratar, por ser cliente infinitum tienes sin costo 25GB ó 75GB ó 150GB según el paquete contratado.​',method:'find'}
  }

  @hash_content_telmexAccountMobile = { #Arreglo para contenido de 'Cuenta Telmex' dentro de la segunda opcion 'Móviles'
    :titulo => {label:'h1',content:'Cuenta Telmex',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telmex',method:'find'},
    :contenido1 => {label:'p',content: 'Escribe tu número TELMEX a 10 dígitos del numero de la línea un correo electrónico y contraseña. (tu correo electrónico es el nombre de usuario de tu cuenta Claro drive)​.',method:'find'},
    :contenido2 => {label:'p',content: 'Si estás conectado a la red de internet de este número, TELMEX realizará una validación automática de tus datos, en caso contrario cuentas con 30 días para realizar la validación usando Claro drive conectado a tu red infinitum.',method:'find'},
    :contenido3 => {label:'p',content: 'Elige el plan que deseas contratar, por ser cliente infinitum tienes sin costo 25GB ó 75GB ó 150GB según el paquete contratado.​',method:'find'}
  }

  @hash_content_telcelAccountWeb = { #Arreglo para contenido de 'Cuenta Telcel' dentro de la primera opción 'Web'
    :titulo => {label:'h1',content:'Cuenta Telcel',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telcel',method:'find'},
    :contenido1 => {label:'p',content: 'Escribe tu número Telcel a 10 digitos  (tu número Telcel es el nombre de usuario de tu cuenta de Claro drive).​​',method:'find'},
    :contenido2 => {label:'p',content: 'Recibirás tu código a través de un SMS. ​',method:'find'},
    :contenido3 => {label:'p',content: 'Se otorgarán 25 GB sin costo, recuerda que en caso de que necesites  más espacio puedes elegir un plan con cargo a tu número Telcel.​',method:'find'},
  }

  @hash_content_telcelAccountMobile = { #Arreglo para contenido de 'Cuenta Telcel' dentro de la segunda opcion 'Móviles'
    :titulo => {label:'h1',content:'Cuenta Telcel',method:'find'},
    :subtitulo1 => {label:'p',content:'Crear una Cuenta iOS y Android&#8203;',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telcel',method:'find'},
    :contenido1 => {label:'p',content: 'Crea una cuenta en app Android o iOS.',method:'find'},
    :contenido2 => {label:'p',content: 'Escribe tu número Telcel a 10 digitos  (tu número Telcel es el nombre de usuario de tu cuenta de Claro drive).&#8203;',method:'find'},
    :contenido3 => {label:'p',content: 'Recibirás tu código a través de un SMS. &#8203;',method:'find'},
    #:contenido4 => {label:'p',content: 'Se otorgarán 25 GB sin costo, recuerda que en caso de que necesites  más espacio puedes elegir un plan con cargo a tu número Telcel.&#8203;',method:'find'}
  }

  @hash_content_cvCmAccountWeb = { #Arreglo para contenido de 'Cuenta Claro video | Claro música' dentro de la primera opción 'Web'
    :titulo => {label:'h1',content:'Cuenta Claro video, Claro Música',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion => {label:'p',content:'Para Clientes Claro video Claro Música​',method:'find'},
    :contenido1 => {label:'p',content:'El registro se omite, utiliza los accesos con los cuales ya cuentas para accesar a Claro Video o Claro Música. (correo y contraseña)​',method:'find'},
    :contenido2 => {label:'a',content:'Iniciar sesión',method:'find'}
  }

  @hash_content_cvCmAccountMobile = { #Arreglo para contenido de 'Cuenta Claro video | Claro música' dentro de la segunda opcion 'Móviles'
    :titulo => {label:'h1',content:'Cuenta Claro video, Claro Música',method:'find'},
    :subtitulo1 => {label:'p',content:'Crear una Cuenta iOS y Android&#8203;',method:'find'},
    :seccion1 => {label:'p',content:'Para Clientes Claro video Claro Musica​',method:'find'},
    :contenido1 => {label:'p',content:'El registro se omite, utiliza los accesos con los cuales ya cuentas para accesar a Claro Video o Claro Música. (correo y contraseña)​',method:'find'},
    :contenido2 => {label:'a',content:'Iniciar sesión',method:'find'}
  }

  @hash_content_emailAccountWeb = { #Arreglo para contenido de 'Cuenta con correo' dentro de la primera opción 'Web'
    :titulo => {label:'h1',content:'Cuenta con correo',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion => {label:'a',content: 'clarodrive.com',method:'find'},
    :contenido1 => {label:'p',content: 'Escribe tu número dirección de correo electrónico.​',method:'find'},
    :contenido2 => {label:'p',content: 'Escribe una contraseña única.​',method:'find'},
    :contenido3 => {label:'p',content: 'Si no cuentas con número TELMEX activo, podrás seleccionar alguno de los planes disponibles pagando con tarjeta de crédito.​', method:'find'}
  }

  @hash_content_emailAccountMobile = { #Arreglo para contenido de 'Cuenta con correo' dentro de la segunda opcion 'Móviles'
    :titulo => {label:'h1',content:'Cuenta con correo',method:'find'},
    :subtitulo1 => {label:'p',content:'Para registrarte y obtener una cuenta de Claro drive sigue estos pasos:',method:'find'},
    :seccion1 => {label:'p',content: 'Crear una Cuenta iOS y Android​',method:'find'},
    :contenido1 => {label:'p',content: 'Escribe tu número dirección de correo electrónico.​',method:'find'},
    :contenido2 => {label:'p',content: 'Escribe una contraseña única.​',method:'find'},
    :contenido3 => {label:'p',content: 'Si no cuentas con número TELMEX activo, podrás seleccionar alguno de los planes disponibles pagando con tarjeta de crédito.​', method:'find'}
  }

  @hash_content_restorePasswordWeb = { #Arreglo para contenido de 'Restablecer contraseña' dentro de la primera opción 'Web'
    :titulo => {label:'h1',content:'Restablecer contraseña',method:'find'},
    :subtitulo1 => {label:'p',content:"¿Cómo restablecer tu contraseña en Claro drive?​",method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telmex y con Cuenta de correo electrónico',method:'all'},
    :contenido1 => {label:'p',content: 'Ingresar el correo electrónico a donde te enviaran tu nueva contraseña.',method:'all'},
    :seccion2 => {label:'p',content: 'Para Clientes Claro video Claro Música​',method:'find'},
    :contenido2 => {label:'p',content: 'Si necesitas recuperar o modificar tu contraseña es necesario te pongas en contacto con tu proveedor Claro o escríbenos a ',method:'find'},
    :seccion3 => {label:'p',content: 'Para clientes Telcel',method:'all'},
    :contenido3 => {label:'p',content: 'En el panel de ingreso haz clic en “Reenviar código”.',method:'all'},
    :subtitulo2 => {label:'p',content:'¿Cómo cambiar tu contraseña de Claro drive?​',method:'find'},
    :seccion4 => {label:'p',content: 'Para clientes Telmex y con Cuenta de correo electrónico ​',method:'find'},
    :contenido4 => {label:'p',content: 'En la esquina superior derecha, haz clic en tu avatar (​',method:'find'},
    :seccion5 => {label:'p',content: 'Para Clientes Claro video Claro Música​',method:'find'},
    :contenido5 => {label:'p',content: 'Si necesitas recuperar o modificar tu contraseña es necesario te pongas en contacto con tu proveedor Claro o escríbenos a ',method:'find'},
    :seccion6 => {label:'p',content: 'Para clientes Telcel',method:'all'},
    :contenido6 => {label:'p',content: 'Escribe tu número Telcel a 10 dígitos​',method:'find'}
  }

  @hash_content_restorePasswordMobile = { #Arreglo para contenido de 'Restablecer contraseña' dentro de la segunda opcion 'Móviles'
    :titulo => {label:'h1',content:'Restablecer contraseña',method:'find'},
    :subtitulo1 => {label:'p',content:'¿Cómo restablecer tu contraseña en Claro drive es iOS y Android?​​',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telmex y con Cuenta de correo electrónico',method:'all'},
    :contenido1 => {label:'p',content: 'Ingresar el correo electrónico a donde te enviaran tu nueva contraseña.',method:'all'},
    :seccion2 => {label:'p',content: 'Para Clientes Claro video Claro Música​',method:'find'},
    :contenido2 => {label:'p',content: 'Si necesitas recuperar o modificar tu contraseña es necesario te pongas en contacto con tu proveedor Claro o escríbenos a ',method:'find'},
    :seccion3 => {label:'p',content: 'Para clientes Telcel',method:'all'},
    :contenido3 => {label:'p',content: 'En el panel de ingreso haz clic en “Reenviar código”.',method:'all'},
    :subtitulo2 => {label:'p',content:'¿Cómo cambiar tu contraseña de Claro drive es iOS y Android?​​',method:'find'},
    :seccion4 => {label:'p',content: 'Para clientes Telmex y con Cuenta de correo electrónico ​',method:'find'},
    :contenido4 => {label:'p',content: 'En la esquina superior derecha, haz clic en tu avatar (​',method:'find'},
    :seccion5 => {label:'p',content: 'Para Clientes Claro video Claro Música​',method:'find'},
    :contenido5 => {label:'p',content: 'Si necesitas recuperar o modificar tu contraseña es necesario te pongas en contacto con tu proveedor Claro o escríbenos a ',method:'find'},
    :seccion6 => {label:'p',content: 'Para clientes Telcel',method:'all'},
    :contenido6 => {label:'p',content: 'Escribe tu número Telcel a 10 dígitos​',method:'find'}
  }

  @hash_options_paymentInformation = { #Arreglo para opciones dentro de seccion 'Información de pago'
    :"payment information" => {label:'p',content:'Información de pago',method:'find'},
    :"change of plan" => {label:'p',content:'Elige un nuevo plan',method:'find'},
    :"I will lose my files if I cancel my CD subscription?" => {label:'p',content:'¿Perderé mis archivos si cancelo mi subscripción de Claro drive?',method:'find'},
    :"cancellation of plan" => {label:'p',content:'Cancelación de plan',method:'find'},
  }

  @hash_content_paymentInformation = { #Arreglo para contenido de 'Información de pago'
    :titulo => {label:'h1',content:'Información de pago',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para clientes Telmex',method:'find'},
    :contenido1 => {label:'p',content: 'Por ser cliente infinitum tienes sin costo 25GB ó 75GB ó 150GB según el paquete contratado.​',method:'find'},
    :seccion2 => {label:'p',content: 'Para clientes Telcel',method:'find'},
    :contenido2 => {label:'p',content: 'Por ser cliente Telcel tienes sin costo 25GB',method:'find'}
  }

  @hash_content_changePlanWeb = { #Arreglo para contenido de 'Elige un nuevo plan' dentro de la primera opcion 'Web'
    :titulo => {label:'h1',content:'Elige un nuevo plan',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cambiar tu plan en clarodrive.com, sigue estos pasos:',method:'find'},
    :contenido1 => {label:'a',content: 'Inicia sesión',method:'find'},
    :contenido2 => {label:'p',content: 'Mostrará un mensaje de que estas a punto de cambiar de plan',method:'find'}
  }

  @hash_content_changePlanAndroid = { #Arreglo para contenido de 'Elige un nuevo plan' dentro de la segunda opcion 'Android'
    :titulo => {label:'h1',content:'Elige un nuevo plan',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cambiar tu plan en Android, sigue estos pasos:​',method:'find'},
    :contenido1 => {label:'p',content: 'Inicia sesión en la aplicación',method:'find'},
    :contenido2 => {label:'p',content: 'Mostrará un mensaje de que estas a punto de cambiar de plan',method:'find'}
  }

  @hash_content_changePlanIOS = {
    :titulo => {label:'h1',content:'Elige un nuevo plan',method:'find'},
    :contenido3 => {label:'p',content: 'En dispositivos iOS no es posible cambiar tu plan, deberas de ingresar a Clarodrive.com para poder realizar el cambio del plan.​',method:'find'},
    :contenido2 => {label:'p',content: 'Si seleccionas un plan más bajo y superas la cantidad máxima de espacio de almacenamiento para el plan nuevo, no podrá concluirse la solicitud hasta que la cantidad de información no supere la cuota del plan seleccionado.​', method:'find'}
  }

  @hash_content_loseFiles = { #Arreglo para contenido de '¿Perderé mis archivos si cancelo mi suscripción de Claro drive?' dentro de la primera opcion 'Web'
    :titulo => {label:'h1',content:'¿Perderé mis archivos si cancelo mi subscripción de Claro drive?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Si . Todos los archivos y las carpetas se eliminan al cancelar tu suscripción',method:'find'}
  }

  @hash_content_cancellationPlanWeb = { #Arreglo para contenido de 'Cancelar Plan' dentro de la primera opcion 'Web'
    :titulo => {label:'h1',content:' ¿Cómo cancelar tu suscripción? ',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cancelar tu suscripción en , sigue estos pasos:',method:'find'},
    :contenido1 => {label:'a',content: 'Inicia sesión',method:'find'},
    :contenido2 => {label:'p',content: 'Haz clic en tu avatar () en la esquina superior derecha.',method:'find'},
    :contenido3 => {label:'p',content: 'Mostrará un mensaje de advertencia por cancelar el plan',method:'find'}
  }

  @hash_content_cancellationPlanAndroid = { #Arreglo para contenido de 'Cancelar Plan' dentro de la segunda opcion 'Android'
    :titulo => {label:'h1',content:'Cancelar Plan',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cancelar tu suscripción en Android, sigue estos pasos:​',method:'find'},
    :contenido1 => {label:'p',content: ' en la aplicación.',method:'find'},
    :contenido2 => {label:'p',content: 'Seleccionar la opción ',method:'find'},
    :contenido3 => {label:'p',content: 'Mostrará un mensaje de advertencia por cancelar el plan​',method:'find'}
  }

  @hash_content_cancellationPlanIOS = {
    :titulo => {label:'h1',content:'Elige un nuevo plan',method:'find'},
    :contenido3 => {label:'p',content: 'En dispositivos iOS no es posible cancelar tu suscripción, deberas de ingresar a Clarodrive.com para poder realizar la cancelacion del servicio.​​',method:'find'},
    :contenido2 => {label:'p',content: 'Si seleccionas un plan mas bajo y superas la cantidad máxima de espacio de almacenamiento para el plan nuevo, no podrá concluirse la solicitud hasta que la cantidad de informción no supere la cuota del plan seleccionado.', method:'find'}
  }

  @hash_options_howToUploadInformationToCD = { #Arreglo para opciones dentro de seccion '¿Cómo subir información a Claro drive?'
  }

  @hash_content_uploadInformationWeb = { #Arreglo para contenido de '¿Cómo subir información a Claro drive?' dentro de la primera opcion 'Web'
    :titulo => {label:'h1',content:'¿Cómo subir información a Claro drive?',method:'find'},
    :subtitulo1 => {label:'p',content:' donde al dar clic despliega un submenú con las opciones de Carpeta nueva, Cargar archivo, Cargar carpeta y Nuevo archivo de texto.',method:'find'},
    :seccion1 => {label:'p',content: 'Carpeta nueva',method:'find'},
    :contenido1 => {label:'p',content: 'Al seleccionar esta opción en automático nos pedirá un nombre el cual después de teclear solo necesitamos dar “Enter” o dar clic en “Crear” y se creará la carpeta, la cual se ira a la parte superior de los archivos y se ordenará de manera automática.',method:'find'},
    :seccion2 => {label:'p',content: 'Cargar archivo',method:'find'},
    :contenido2 => {label:'p',content: 'Al dar clic, se abre una ventana para poder buscar el archivo que se requiere subir, mediante ésta nos podemos desplazar por todas las ubicaciones dentro de nuestro equipo.',method:'find'},
    :seccion3 => {label:'p',content: 'Cargar carpeta',method:'find'},
    :contenido3 => {label:'p',content: 'Al dar clic en “Cargar carpeta”, selecciona los elementos a cargar y da clic en botón “Subir”.',method:'find'},
    :seccion4 => {label:'p',content: 'Nuevo archivo de texto',method:'find'},
    :contenido4 => {label:'p',content: 'Al seleccionar esta opción nos pedirá el nombre del archivo',method:'find'}
  }

  @hash_content_uploadInformationAndroid = { #Arreglo para contenido de '¿Cómo subir información a Claro drive?' dentro de la segunda opcion 'Android'
    :titulo => {label:'h1',content:'¿Cómo subir información a Claro drive?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Carpeta nueva',method:'find'},
    :contenido1 => {label:'p',content: 'Al seleccionar esta opción en automático nos pedirá un nombre el cual después de teclear solo necesitamos dar “Enter” o dar clic en “Crear” y se creará la carpeta, la cual se ira a la parte superior de los archivos y se ordenará de manera automática.',method:'find'},
    :seccion2 => {label:'p',content: 'Cargar archivo',method:'find'},
    :contenido2 => {label:'p',content: 'Al dar clic, se abre una ventana para poder buscar el archivo que se requiere subir, mediante ésta nos podemos desplazar por todas las ubicaciones dentro de nuestro equipo.',method:'find'}
  }

  @hash_content_uploadInformationIOS = { #Arreglo para contenido de '¿Cómo subir información a Claro drive?' dentro de la tercera opcion 'iOS'
    :titulo => {label:'h1',content:'¿Cómo subir información a Claro drive?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Carpeta nueva',method:'find'},
    :contenido1 => {label:'p',content: 'Al seleccionar esta opción en automático nos pedirá un nombre el cual después de teclear solo necesitamos dar “Enter” o dar clic en “Crear” y se creará la carpeta, la cual se ira a la parte superior de los archivos y se ordenará de manera automática.',method:'find'},
    :seccion2 => {label:'p',content: 'Cargar archivo',method:'find'},
    :contenido2 => {label:'p',content: 'Al dar clic, se abre una ventana para poder buscar el archivo que se requiere subir, mediante ésta nos podemos desplazar por todas las ubicaciones dentro de nuestro equipo.',method:'find'},
    :seccion3 => {label:'p',content: 'Cargar carpeta',method:'find'},
    :contenido3 => {label:'p',content: 'Al dar clic en “Cargar carpeta”, selecciona los elementos a cargar y da clic en botón “Subir”.',method:'find'}
  }

  @hash_options_shareFilesFolders = { #Arreglo para opciones dentro de seccion 'Compartir archivos y carpetas'
    :"how do I share files and folders?" => {label:'p',content:'¿Cómo comparto archivos y carpetas?',method:'find'},
    #:"share using an access link" => {label:'p',content:'Compartir mediante una liga de acceso',method:'find'},
    :"share by email" => {label:'p',content:'Compartir por correo electrónico',method:'find'},
                                      :"see shared files" => {label:'p',content:'Ver archivos compartidos',method:'find'},
    :"how can I change the configuration to a link?" => {label:'p',content:'¿Cómo puedo cambiar la configuración de una liga que ya compartí?',method:'find'},
    #:"how do I invite people to edit my files?" => {label:'p',content:'¿Cómo invito a personas a editar mis archivos?',method:'find'},

  }

  @hash_content_howDoIShareFilesFoldersWeb = {
    :titulo => {label:'h1',content:'¿Cómo comparto archivos y carpetas?',method:'find'},
    :subtitulo1 => {label:'p',content:'Para compartir archivos y carpetas sigue los siguientes pasos​:',method:'find'},
    :seccion1 => {label:'p',content: 'Para cancelar tu suscripción en , sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: 'Inicia sesión en Claro drive.',method:'find'},
    :contenido2 => {label:'p',content: 'Desplázate hasta el archivo o la carpeta que te interesa compartir.',method:'find'},
    :contenido3 => {label:'p',content: 'Da clic en el símbolo de compartir.',method:'find'},
    :contenido4 => {label:'p',content: 'Se desplegará una nueva ventana con las opciones para compartir o crear un enlace de acceso.',method:'find'}
  }

  @hash_content_howDoIShareFilesFoldersAndroid = {
    :titulo => {label:'h1',content:'¿Cómo comparto archivos y carpetas desde Android?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Compartir archivos',method:'find'},
    :contenido1 => {label:'p',content: '​RRSS o Mail',method:'find'},
    :contenido2 => {label:'p',content: 'Desplázate al archivo que te interesa compartir.',method:'find'},
    :seccion2 => {label:'p',content: 'Compartir carpeta',method:'find'},
    :contenido3 => {label:'p',content: '​Liga de acceso',method:'find'},
    :contenido4 => {label:'p',content: 'Desplázate al archivo que te interesa compartir.​',method:'find'},
  }

  @hash_content_howDoIShareFilesFoldersIOS = {
    :titulo => {label:'h1',content:'¿Cómo comparto archivos y carpetas desde iOS?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Compartir archivos',method:'find'},
    :contenido1 => {label:'p',content: '​RRSS o Mail',method:'find'},
    :contenido2 => {label:'p',content: 'Desplázate al archivo que te interesa compartir.',method:'find'},
    :seccion2 => {label:'p',content: 'Compartir carpeta',method:'find'},
    :contenido3 => {label:'p',content: '​Liga de acceso',method:'find'},
    :contenido4 => {label:'p',content: 'Desplázate al archivo que te interesa compartir.​',method:'find'}
  }

  @hash_content_shareUsingAccessLink = {
    :titulo => {label:'h1',content:'Compartir mediante una liga de acceso',method:'find'},
    :subtitulo1 => {label:'p',content:'La liga de acceso es un link que podrás compartir por cualquier medio y cualquier persona que cuente con ella, podrá tener acceso a los archivos o carpetas',method:'find'},
    :seccion1 => {label:'p',content: 'Sigue los siguientes pasos para configurar una liga de acceso:​',method:'find'},
    :contenido1 => {label:'p',content: '​En la parte inferior del recuadro se mostrara la opción para configurar la liga',method:'find'},
    :contenido2 => {label:'p',content: 'Permitir editar: La persona que cuente con esta liga podrá guardar cambios en los archivos compartidos​',method:'find'}
  }

  @hash_content_shareByEmail = {
    :titulo => {label:'h1',content:'Compartir por correo electrónico',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para compartir por correo electrónico sólo debes ingresar una dirección valida de correo electrónico.',method:'find'},
    :contenido1 => {label:'p',content: '​Puedes escribir un mensaje para el destinatario (opcional).',method:'find'},
    :contenido2 => {label:'p',content: 'Da clic en el botón inferior derecho Compartir.',method:'find'},
    :contenido4 => {label:'p',content: 'Se enviará un correo electrónico con el enlace para acceder al archivo o carpeta.',method:'find'}
  }

  @hash_content_howDoIInvitePeopleToEditMyFiles = {
    :titulo => {label:'h1',content:'¿Cómo invito a personas a editar mis archivos?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    #:contenido1 => {label:'p',content: '​',method:'find'}
  }

  @hash_content_howDoIKnowShareAFile = {
    :titulo => {label:'h1',content:'¿Cómo sé de qué forma compartí un archivo o una carpeta?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para verificar de qué forma compartiste un archivo o una carpeta, sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en Claro drive.',method:'find'},
    :contenido2 => {label:'p',content: 'Se muestra una lista de miembros que agregaste al archivo o a la carpeta y los permisos con los que cuenta (Edición, protegido por contraseña o archivo con vigencia) estos permisos se configuraron en el punto de “Compartir mediante una liga de acceso”.',method:'find'}
  }

  @hash_content_seeSharedFilesWeb = {
    :titulo => {label:'h1',content:'Ver archivos compartidos',method:'find'},
    :subtitulo1 => {label:'p',content:'Para visualizar tus archivo compartidos',method:'find'},
    :seccion1 => {label:'p',content: 'En Web:',method:'find'},
    :contenido1 => {label:'p',content: '​En el menú lateral de Claro drive, podrás visualizar la sección de compartidos.',method:'find'},
    :contenido2 => {label:'p',content: 'Esta opción mostrará todos los archivos que otras personas te han compartido.',method:'find'}
  }

  @hash_content_seeSharedFilesAndroid = {
    :titulo => {label:'h1',content:'Ver archivos compartidos',method:'find'},
    :subtitulo1 => {label:'p',content:'Dentro del menú en la parte inferior encontrarás la opción   al seleccionar esta opción se desplegaran las siguientes opciones:',method:'find'},
    :seccion1 => {label:'p',content: 'En dispositivos iOS:',method:'find'},
    :contenido1 => {label:'p',content: 'En el menú lateral de Claro drive, podrás visualizar la sección de compartidos.​',method:'find'},
    :contenido2 => {label:'p',content: 'Esta opción mostrará todos los archivos que otras personas te han compartido.',method:'find'}
  }

  @hash_content_seeSharedFilesIOS = {
    :titulo => {label:'h1',content:'Ver archivos compartidos',method:'find'},
    :subtitulo1 => {label:'p',content:'Dentro del menú en la parte inferior encontrarás la opción   al seleccionar esta opción se desplegaran las siguientes opciones:',method:'find'},
    :seccion1 => {label:'p',content: 'En dispositivos Android:',method:'find'},
    :contenido1 => {label:'p',content: '​En el menú lateral de Claro drive, podrás visualizar la sección de compartidos.',method:'find'},
    :contenido2 => {label:'p',content: 'Esta opción mostrará todos los archivos que otras personas te han compartido.',method:'find'}
  }

  @hash_options_familySpace = { #Arreglo para opciones dentro de seccion 'Espacio familiar'
    :"how do I share GB of my plan?" => {label:'p',content:'¿Cómo comparto los GB de mi plan?',method:'find'},
    :"status of additional accounts" => {label:'p',content:'Administrar tu espacio familiar',method:'find'},
    :"modify the space allocated to a guest" => {label:'p',content:'Modificar el espacio asignado a un invitado',method:'find'},
    :"cancel the space assigned to a guest" => {label:'p',content:'Cancelar el espacio asignado a un invitado',method:'find'},
    #:"leave the family space" => {label:'p',content:'Salir del espacio familiar',method:'find'},
  }

  @hash_content_familySpace = {
    :titulo => {label:'h1',content:'Espacio Familiar',method:'find'},
    :subtitulo1 => {label:'p',content:'Con Espacio Familiar,       comparte hasta cinco personas un plan de almacenamiento de Claro drive.',method:'find'}
  }

  @hash_content_howDoIShareGBOfMyPlanWeb = {
    :titulo => {label:'h1',content:'Espacio Familiar',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Inicia sesión en clarodrive.com',method:'find'},
    :contenido1 => {label:'p',content: '​Haz clic en el botón espacio familiar      en la barra superior​.',method:'find'},
    :contenido2 => {label:'p',content: 'Haz clic en añadir usuario​',method:'find'},
    :contenido3 => {label:'p',content: 'Ingresa una cuenta de correo electrónico valida​',method:'find'},
    :contenido4 => {label:'p',content: 'Indica la cantidad de almacenamiento que tendrá disponible.​',method:'find'}
  }

  @hash_content_howDoIShareGBOfMyPlanMobile = {
    :titulo => {label:'h1',content:'Espacio Familiar',method:'find'},
    :subtitulo1 => {label:'p',content:'Para invtar a compartir tu espacio desde Android o iOS, sigue estos pasos:',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en la App de Claro drive',method:'find'},
    :contenido2 => {label:'p',content: 'Ingresa al menú “Más”',method:'find'},
    :contenido3 => {label:'p',content: '​Ingresa a la sección espacio familiar',method:'find'},
    :contenido4 => {label:'p',content: 'Al terminar este proceso llegara un email de invitación al correo que ingresaste para que puede registrar su cuenta y empezar a compartir,.',method:'find'}
  }

  @hash_content_statusOfAdditionalAccountsWeb = {
    :titulo => {label:'h1',content:'Administrar tu espacio familiar',method:'find'},
    :subtitulo1 => {label:'p',content:'Administra el espacio asignado con tu espacio familiar',method:'find'},
    :seccion1 => {label:'p',content: 'Los estatus del espacio familiar son:',method:'find'},
    :contenido1 => {label:'p',content: 'Pendiente: Esto quiere decir que tu invitado aun no concluye el proceso de registro y aun no disfruta del espacio que le proporcionaste. Para que el usuario pueda empezar a disfrutar del espacio asignado es necesario aceptar la invitación que se envío por correo electrónico. En este caso podrás re-enviar el la invitación. Este estatus tiene un tiempo de espera de 30 días, si excede dicho tiempo el espacio se libera.​',method:'find'},
    :contenido2 => {label:'p',content: 'Activo: Cuándo un invitado concluyo su registro podrá empezar a subir y compartir archivos al espacio proporcionado.​',method:'find'}
  }

  @hash_content_modifyTheSpaceAllocatedToAGuestWeb = {
    :titulo => {label:'h1',content:'Modificar el espacio asignado a un invitado',method:'find'},
    :subtitulo1 => {label:'p',content:'Cuando el espacio de un invitado este a punto de agotarse podrás modificar la cuota de espacio compartida.',method:'find'},
    :seccion1 => {label:'p',content: 'Para editar el espacio desde clarodrive.com, sigue estos pasos',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en clarodrive.com',method:'find'},
    :contenido2 => {label:'p',content: 'Da clic en el botón espacio familiar en la barra superior',method:'find'}
  }

  @hash_content_modifyTheSpaceAllocatedToAGuestMobile = {
    :titulo => {label:'h1',content:'Modificar el espacio asignado a un invitado',method:'find'},
    :subtitulo1 => {label:'p',content:'Cuando el espacio de un invitado este a punto de agotarse podrás modificar la cuota de espacio compartida.',method:'find'},
    :seccion1 => {label:'p',content: 'Para editar el espacio desde Android o IOS, sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en la App de Claro drive',method:'find'},
    :contenido2 => {label:'p',content: 'Indica la cantidad de almacenamiento que tendrá disponible.',method:'find'}
  }

  @hash_content_cancelTheSpaceAssignedToAGuessWeb = {
    :titulo => {label:'h1',content:'Cancelar el espacio asignado a un invitado',method:'find'},
    :subtitulo1 => {label:'p',content:'Cuando el espacio de un invitado este a punto de agotarse o podrás modificar la cuota de espacio compartida',method:'find'},
    :seccion1 => {label:'p',content: 'Para editar el espacio desde clarodrive.com, sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en clarodrive.com',method:'find'},
    :contenido2 => {label:'p',content: 'Selecciona editar plan del invitado que desees modificar',method:'find'}
  }

  @hash_content_cancelTheSpaceAssignedToAGuessMobile = {
    :titulo => {label:'h1',content:'Cancelar el espacio asignado a un invitado',method:'find'},
    :subtitulo1 => {label:'p',content:'Cuando el espacio de un invitado este a punto de agotarse o podrás modificar la cuota de espacio compartida',method:'find'},
    :seccion1 => {label:'p',content: 'Para editar el espacio desde Android o IOS sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en la App de Claro drive',method:'find'},
    :contenido2 => {label:'p',content: 'Selecciona editar plan del invitado que desees modificar',method:'find'}
  }

  @hash_content_leaveTheFamilySpaceWeb = {
    :titulo => {label:'h1',content:'Salir del espacio familiar',method:'find'},
    :subtitulo1 => {label:'p',content:'Al salir de espacio familiar ya no tendrás acceso a los GB que te compartieron',method:'find'},
    :seccion1 => {label:'p',content: 'Para salir del espacio desde la versión Web, sigue estos pasos:​',method:'find'},
    :contenido1 => {label:'p',content: 'Inicia sesión en clarodrive.com​',method:'find'},
    :contenido2 => {label:'p',content: 'IMPORTANTE:Al aceptar salir del plan familiar tendrás 30 días para contratar tu propio plan o bajar tu contenido. De lo contrario tus archivos se eliminarán por completo',method:'find'}
  }

  @hash_content_leaveTheFamilySpaceMobile = {
    :titulo => {label:'h1',content:'Salir del espacio familiar',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para editar el espacio desde Android o iOS, sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en la App de Claro drive ',method:'find'},
    :contenido2 => {label:'p',content: 'IMPORTANTE:Al aceptar salir del plan familiar tendrás 30 días para contratar tu propio plan o bajar tu contenido. De lo contrario tus archivos se eliminarán por completo',method:'find'}
  }

  @hash_options_storage = { #Arreglo para opciones dentro de seccion 'Almacenamiento'
    :"current use of storage" => {label:'p',content:'Uso actual de almacenamiento',method:'find'},
    #:"how do I get more space?" => {label:'p',content:'¿Cómo puedo obtener más espacio?',method:'find'},
    :"what information can you see inside your storage?" => {label:'p',content:'¿Qué información puedes ver dentro de tu almacenamiento?',method:'find'}
  }

  @hash_content_currentUseOfStorageWeb = {
    :titulo => {label:'h1',content:'Uso actual de almacenamiento',method:'find'},
    :subtitulo1 => {label:'p',content:'En cualquier momento podrás ver el espacio que has consumido de tu plan contratado:',method:'find'},
    :seccion1 => {label:'p',content: 'En Versión Web:',method:'find'},
    :contenido1 => {label:'p',content: '​Después de iniciar sesión en la parte superior izquierda encontrarás la barra de uso:',method:'find'}
  }

  @hash_content_currentUseOfStorageMobile = {
    :titulo => {label:'h1',content:'Uso actual de almacenamiento',method:'find'},
    :subtitulo1 => {label:'p',content:'En cualquier momento podrás ver el espacio que has consumido de tu plan contratado:',method:'find'},
    :seccion1 => {label:'p',content: 'En Dispositivos Móviles iOS y Android​',method:'find'},
    :contenido1 => {label:'p',content: 'Debes iniciar sesión en el app Claro drive.​',method:'find'},
    :contenido2 => {label:'p',content: 'En la parte superior izquierda encontrarás la barra de uso.',method:'find'}
  }

  @hash_content_currentUseOfStorageDesktop = {
    :titulo => {label:'h1',content:'Uso actual de almacenamiento',method:'find'},
    :subtitulo1 => {label:'p',content:'En cualquier momento podrás ver el espacio que has consumido de tu plan contratado:',method:'find'},
    :seccion1 => {label:'p',content: 'En cliente de escritorio:',method:'find'},
    :contenido1 => {label:'p',content: '​Debes localizar el icono de Claro drive en la barra de menús.',method:'find'},
    :contenido2 => {label:'p',content: 'Da clic sobre el icono.',method:'find'}
  }

  @hash_content_howDoIGetMoreSpaceWeb = {
    :titulo => {label:'h1',content:'¿Cómo puedo obtener más espacio​?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cambiar tu plan en clarodrive.com sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en clarodrive.com.',method:'find'},
    :contenido2 => {label:'p',content: 'Da clic en tu imagen de perfil en la esquina superior derecha.',method:'find'}
  }

  @hash_content_howDoIGetMoreSpaceAndroid = {
    :titulo => {label:'h1',content:'¿Cómo puedo obtener más espacio​?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Para cambiar tu plan en Android sigue estos pasos:',method:'find'},
    :contenido1 => {label:'p',content: '​Inicia sesión en la aplicación.',method:'find'},
    :contenido2 => {label:'p',content: 'Da clic en Aumenta tu espacio.',method:'find'}
  }

  @hash_content_howDoIGetMoreSpaceIOS = {
    :titulo => {label:'h1',content:'¿Cómo puedo obtener más espacio​?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'En dispositivos IOS no es posible cambiar tu plan, deberas ingresar desde la plataforma web para poder realizar la cancelación del servicio.​',method:'find'},
    :contenido2 => {label:'p',content: 'Si seleccionas un plan más bajo y superas la cantidad máxima de espacio de almacenamiento para el plan nuevo, no podrá concluirse la solicitud hasta que la cantidad de información no supere la cuota del plan seleccionado.',method:'find'}
  }

  @hash_content_whatInformationCanYouSeeInsideYourStorage = {
    :titulo => {label:'h1',content:'¿Qué información puedes ver dentro de tu almacenamiento?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Las opciones a las que tienes acceso dentro de tu almacenamiento son:',method:'find'},
    :contenido1 => {label:'p',content: '​Todos los archivos: Visualización de todo tipo de archivos que se tenga almacenado​',method:'find'},
    :contenido2 => {label:'p',content: 'Reciente: Visualización delos archivos vistos o modificados recientemente',method:'find'},
    :contenido3 => {label:'p',content: 'Compartidos: Visualización de los archivos que otros usuarios han compartido y los que se han compartido desde la cuenta​',method:'find'},
    :contenido4 => {label:'p',content: 'Legales: Redirección a pagina con los términos y condiciones del producto',method:'find'}
  }

  @hash_options_desktopClient = { #Arreglo para opciones dentro de seccion 'Cliente de escritorio'
    :"menu bar" => {label:'p',content:'Barra de menús',method:'find'},
    :"how to download and install the Claro drive desktop application" => {label:'p',content:'Cómo descargar e instalar la aplicación de Claro drive para escritorio',method:'find'},
    :"force synchronization" => {label:'p',content:'Forzar sincronización',method:'find'},
    :"button open in clarodrive.com" => {label:'p',content:'Botón abrir en clarodrive.com',method:'find'}
  }

  @hash_content_menuBarWindows = {
    :titulo => {label:'h1',content:'Barra de menús',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Nos referimos a las barras que se encuentran en la parte superior o inferior de la pantalla de tu computadora como bandeja del sistema. Tu bandeja del sistema contiene el icono de Claro drive, desde donde accedes a la configuración de Claro drive.',method:'find'}
  }

  @hash_content_menuBarMac = {
    :titulo => {label:'h1',content:'Barra de menús',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Nos referimos a las barras que se encuentran en la parte superior o inferior de la pantalla de tu computadora como barra de menús.Tu barra de menús contiene el icono de Claro drive, desde donde accedes a la configuración de Claro drive.',method:'find'}
  }

  @hash_content_howToDownloadAndInstallCDDesktop = {
    :titulo => {label:'h1',content:'Cómo descargar e instalar la aplicación de Claro drive para escritorio',method:'all'},
    :seccion1 => {label:'p',content:'Para instalar la aplicación de Claro drive escritorio en una computadora con Mac o Windows, sigue estos simples pasos:',method:'find'},
    :contenido1 => {label:'p',content: 'Descarga la aplicación para escritorio en tu computadora.',method:'find'},
    :seccion2 => {label:'p',content: '​Paso a paso de instalación:',method:'find'},
    :contenido2 => {label:'p',content: 'Se ingresa a ventana de instalación, dar clic en “Instalar” y “Finalizar“',method:'find'},
    :seccion3 => {label:'p',content: '​Importante:',method:'find'},
    :contenido3 => {label:'p',content: 'Recuerda que la opción de No sincronizar archivos con un peso mayor a 500MB esta activa por default. Para poder subir todos tus archivos deshabilita esta opción.:',method:'find'}
  }

  @hash_content_forceSynchronization = {
    :titulo => {label:'h1',content:'Forzar sincronización',method:'find'},
    :subtitulo1 => {label:'p',content:'La aplicación de Claro drive para escritorio puede forzar la sincronización en caso de que alguna de las carpeteas que creaste no se vea refleja de en tu equipo de escritorio para esto sigue estos simples pasos:',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Haz clic en el icono de Claro drive en la barra de menús.​',method:'find'},
    :contenido2 => {label:'p',content: 'Haz clic en la opción Forzar sincronización',method:'find'}
  }

  @hash_content_buttonOpenInCD = {
    :titulo => {label:'h1',content:'Botón abrir en clarodrive.com',method:'find'},
    :subtitulo1 => {label:'p',content:'Siempre que desees puedes ingresar a clarodrive.com desde tu aplicación de escritorio para ver tus archivos.',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Haz clic en el icono de Claro drive en la barra de menús.',method:'find'},
    :contenido2 => {label:'p',content: 'Se abrirá una pantalla de tu navegador predefinido a la pagina clarodrive.com.',method:'find'}
  }

  @hash_options_mobile = { #Arreglo para opciones dentro de seccion 'Móvil'
    :"how can I access my files without connection?" => {label:'p',content:'¿Cómo puedo acceder a mis archivos sin conexión?',method:'find'},
    :"how do I disable without connection?" => {label:'p',content:'¿Cómo deshabilito sin conexión?',method:'find'},
    :"sync photos automatically" => {label:'p',content:'Sincronizar fotos automáticamente',method:'find'},
    :"contact backup" => {label:'p',content:'Respaldo de contactos',method:'find'}
  }

  @hash_content_howCanIAccessMyFilesWithoutConnectionAndroid = {
    :titulo => {label:'h1',content:'¿Cómo puedo acceder a mis archivos sin conexión?',method:'find'},
    :subtitulo1 => {label:'p',content:'Puedes tener siempre acceso a tus archivos desde cualquier lugar a tus archivos sin necesidad de una conexión a internet',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Posteriormente se mostrará un icono en el archivo que indica que se encuentra almacenado en tu dispositivo.​',method:'find'},
    :contenido2 => {label:'p',content: 'Al finalizar aparece de color verde el icono de sin conexión (ícono palomita verde)',method:'find'}
  }

  @hash_content_howCanIAccessMyFilesWithoutConnectionIOS = {
    :titulo => {label:'h1',content:'¿Cómo puedo acceder a mis archivos sin conexión?',method:'find'},
    :subtitulo1 => {label:'p',content:'Puedes tener siempre acceso a tus archivos desde cualquier lugar sin necesidad de una conexión a internet',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Basta con seleccionar el archivo que desees, al seleccionarlo se mostrará una barra de progreso.',method:'find'},
    :contenido2 => {label:'p',content: 'Posteriormente se mostrará un icono en el archivo que indica que se encuentra almacenado en tu dispositivo.',method:'find'}
  }

  @hash_content_howDoIDisableWithoutConnectionAndroid = {
    :titulo => {label:'h1',content:'¿Cómo deshabilito sin conexión?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Desplázate al archivo o carpeta que deseas ver sin conexión',method:'find'},
    :contenido2 => {label:'p',content: 'Selecciona el menú de opciones marcado con   localizado en la parte inferior derecha del archivo',method:'find'}
  }

  @hash_content_howDoIDisableWithoutConnectionIOS = {
    :titulo => {label:'h1',content:'¿Cómo deshabilito sin conexión?',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Seleccionar la opción de menú "Más"',method:'find'},
    :contenido2 => {label:'p',content: 'Dar clic en la opción de "Configuraciones"',method:'find'}
  }

  @hash_content_synchPhotosAutomaticallyAndroid = {
    :titulo => {label:'h1',content:'Sincronizar fotos automáticament',method:'find'},
    :subtitulo1 => {label:'p',content:'Con esta opción puedes mantener tus fotos siempre a salvo y que se subirán automáticamente a tu cuenta Claro drive y se sincronizarán con todos los dispositivos que tengas conectados para activar esta opción sigue los siguientes pasos:',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Dentro de las opciones de carga automática selecciona la opción "Configuración de carpetas".',method:'find'},
    :contenido2 => {label:'p',content: 'Las carpetas seleccionadas se marcarán en color azul',method:'find'}
  }

  @hash_content_synchPhotosAutomaticallyIOS = {
    :titulo => {label:'h1',content:'Sincronizar fotos automáticamente',method:'find'},
    :subtitulo1 => {label:'p',content:'Con esta opción puedes mantener tus fotos siempre a salvo y que se subirán automáticamente a tu cuenta Claro drive y se sincronizaran con todos los dispositivos que tengas conectados para activar esta opción sigue los siguientes pasos:',method:'find'},
    :seccion1 => {label:'p',content: 'Dentro de las opciones de sincronización activar:',method:'find'},
    :contenido1 => {label:'p',content: 'Sincroniza fotos. Al activar esta opción deberás de dar permisos a Claro drive para acceder al contenido de tu carrete. Posteriormente se iniciara la carga de tus fotos.',method:'find'},
    :contenido2 => {label:'p',content: 'Sincronizar videos: Al activar esta opción deberás de dar permisos a Claro drive para acceder al contenido de tu carrete. Posteriormente se iniciara la carga de tus videos.',method:'find'}
  }

  @hash_content_contactBackupAndroid = {
    :titulo => {label:'h1',content:'Respaldo de contactos',method:'find'},
    :subtitulo1 => {label:'p',content:'Con esta opción puedes tu libreta de contactos segura ya que Claro drive genera una copia de seguridad',method:'find'},
    :seccion1 => {label:'p',content: 'Dentro de las opciones de carga automática selecciona la opción “Contactos” ” y tendrás las siguientes opciones:',method:'find'},
    :contenido1 => {label:'p',content: '​Respaldo de contactos automático: Cada vez que realices un cambio o generes un nuevo contacto se sincronizara de manera automática',method:'find'},
    :contenido2 => {label:'p',content: 'Respaldar ahora: Es la forma manual de realizar una copia de seguridad con esta opción se realizará la copia de seguridad cada vez que selecciones esta opción',method:'find'}
  }

  @hash_content_contactBackupIOS = {
    :titulo => {label:'h1',content:'Respaldo de contactos',method:'find'},
    :subtitulo1 => {label:'p',content:'Con esta opción puedes tu libreta de contactos segura ya que Claro drive genera una copia de seguridad',method:'find'},
    :seccion1 => {label:'p',content: 'Seleccionar el menú opciones  localizado en la parte superior derecha',method:'find'},
    :contenido1 => {label:'p',content: '​Opciones de Respaldo: Permite respaldar contactos en automático y restaurar desde una fecha de última respaldo.',method:'find'},
    :contenido2 => {label:'p',content: 'Respaldar ahora: Es la forma manual de realizar una copia de seguridad con esta opción se realizara la copia de seguridad cada vez que selecciones esta opción',method:'find'}
  }

  @hash_options_fileProperties = { #Arreglo para opciones dentro de seccion 'Propiedades de los archivos'
    :"file tags" => {label:'p',content:'Etiquetas de archivo',method:'find'},
    :"version of documents" => {label:'p',content:'Versión de los documentos',method:'find'}
  }

  @hash_content_fileTags = {
    :titulo => {label:'h1',content:'Etiquetas de archivo',method:'find'},
    :subtitulo1 => {label:'p',content:'La opción Etiquetas de archivo permite colocar palabras clave y significativas al archivo para su fácil identificación.',method:'find'},
    :seccion1 => {label:'p',content: '¿Cómo crear etiquetas?',method:'find'},
    :contenido1 => {label:'p',content: '​Seleccionar la opción Detalles',method:'find'},
    :contenido2 => {label:'p',content: 'Del lado derecho de la pantalla se desplegará el detalle del archivo para poder dar clic en la opción Etiqueta y poder escribir palabras clave.',method:'find'},
    :seccion2 => {label:'p',content: '¿Cómo editar o eliminar una etiqueta?',method:'find'},
    :contenido3 => {label:'p',content: 'Selecciona la caja de texto donde escribes etiquetas y se desplegaran todas las opciones  de etiquetas.​',method:'find'},
    :contenido4 => {label:'p',content: 'IMPORTANTE: En dispositivos iOS y Android: No se muestra la opción detalles para poder etiquetar. El etiquetado se tendría que realizar desde la pagina WEB',method:'find'}
  }

  @hash_content_versionOfDocuments = {
    :titulo => {label:'h1',content:'Versión de los documentos',method:'find'},
    :subtitulo1 => {label:'p',content:'La opción versión de documentos nos permite visualizar cada cambio actualizados en cada documento o archivo.',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Seleccionar el archivo',method:'find'},
    :contenido2 => {label:'p',content: 'Si se desea regresar a una versión anterior solo deberás dar clic en la opción “Restaurar” al lado del archivo.',method:'find'}
  }

  @hash_options_manageAccount = { #Arreglo para opciones dentro de seccion 'Administrar Cuenta'
    :"account settings" => {label:'p',content:'Configuración de la cuenta',method:'find'}
  }

  @hash_content_accountSetttingsWeb = {
    :titulo => {label:'h1',content:'Configuración de la cuenta',method:'find'},
    :subtitulo1 => {label:'p',content:'En la esquina superior derecha, haz clic en tu avatar (imagen de perfil) y selecciona la opción “Configuraciones”',method:'find'},
    :seccion1 => {label:'p',content: 'En esta sección podemos modificar:',method:'find'},
    :contenido1 => {label:'p',content: '​Nombre',method:'find'},
    :contenido2 => {label:'p',content: 'Correo electrónico',method:'find'}
  }

  @hash_content_accountSettingsAndroid = {
    :titulo => {label:'h1',content:'Configuración de la cuenta',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Seleccionar la opción de Configuraciones',method:'find'},
    :contenido2 => {label:'p',content: 'Dar clic en el ícono de “Más”',method:'find'}
  }

  @hash_content_accountSettingsIOS = {
    :titulo => {label:'h1',content:'Configuración de la cuenta',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Una vez que ingresas a la cuenta se mostrará una ventana de configuración.',method:'find'},
    :contenido2 => {label:'p',content: 'Si no muestra la ventana de configuración, te puedes dirigir a la parte inferior derecha del dispositivo en el Icono de Más / Configuraciones.',method:'find'}
  }

  @hash_options_paperBin = { #Arreglo para opciones dentro de seccion 'Papelera'
    :"delete a file" => {label:'p',content:'Borrar un archivo',method:'find'},
    :"recover a deleted file" => {label:'p',content:'Recuperar un archivo borrado',method:'find'}
  }

  @hash_content_deleteAFileWeb = {
    :titulo => {label:'h1',content:'Borrar un archivo ',method:'find'},
    :subtitulo1 => {label:'p',content:'Seleccionar el archivo que deseas eliminar',method:'find'},
    :seccion1 => {label:'p',content: 'Da clic en Bote de basura.',method:'find'},
    :contenido1 => {label:'p',content: '​Parte superior derecha de la barra de menús y dar clic en “Archivos borrados”',method:'find'},
    :contenido2 => {label:'p',content: 'Volver a seleccionar el archivo y dar clic en el “bote de basura”',method:'find'}
  }

  @hash_content_deleteAFileAndroid = {
    :titulo => {label:'h1',content:'Borrar un archivo',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Abrirá una pantalla y seleccionaremos la opción eliminar Confirmar eliminación de archivo.​',method:'find'}
  }

  @hash_content_deleteAFileIOS = {
    :titulo => {label:'h1',content:'Borrar un archivo',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Deslizar hacia la izquierda sobre el archivo a eliminar y se desplegará la opción Eliminar.',method:'find'}
  }

  @hash_content_recoverAFileDeletedWeb = {
    :titulo => {label:'h1',content:'Recuperar un archivo borrado',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Dirigirnos a la parte superior derecha en la barra de menús y dar clic en “Archivos Borrados”​',method:'find'},
    :contenido2 => {label:'p',content: 'Seleccionar el archivo que deseamos recuperar y dar clic en el botón “Restaurar”.',method:'find'}
  }

  @hash_content_recoverAFileDeletedAndroid = {
    :titulo => {label:'h1',content:'Recuperar un archivo borrado',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Seleccionar icono de Mas de la parte superior derecha.​',method:'find'},
    :contenido2 => {label:'p',content: 'Seleccionar el (los) archivo (s) que se desean recuperar.',method:'find'}
  }

  @hash_content_recoverAFileDeletedIOS = {
    :titulo => {label:'h1',content:'Recuperar un archivo borrado',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Se abrirá una ventana en donde seleccionaremos la opción “Archivos Eliminados​',method:'find'},
    :contenido2 => {label:'p',content: 'Seleccionar la opción “Restaurar Archivo”',method:'find'}
  }

  @hash_options_activity = { #Arreglo para opciones dentro de seccion 'Actividad'. NOTA: Acualmente no tiene opciones dentro de esta seccion. Fecha: 24/06/2019
  }

  @hash_content_activityWeb = {
    :titulo => {label:'h1',content:'Actividad',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'En la parte superior izquierda se tiene un icono en forma de rayo, el cual te permitirá ver todas las actividades dentro de tu perfil:',method:'find'},
    :contenido1 => {label:'p',content: '​Todas las actividades: Muestra detalladamente las actividades realizadas.',method:'find'},
    :contenido2 => {label:'p',content: 'Por otros: Muestra la actividad realizada por otros usuarios respecto a los archivos compartidos.',method:'find'},
    :contenido3 => {label:'p',content: 'Archivos compartidos: Muestra la actividad realizada dentro de los archivos compartidos por nosotros.',method:'find'},
    :contenido4 => {label:'p',content: 'Comentarios: Muestra los comentarios realizados en los archivos.',method:'find'}
  }

  @hash_content_activityAndroid = {
    :titulo => {label:'h1',content:'Actividad',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Selecciona el icono Más  en la parte inferior derecha.',method:'find'},
    :contenido1 => {label:'p',content: 'Se abrirá una ventana. Selecciona la opción Actividad.​',method:'find'},
    :contenido2 => {label:'p',content: 'Observarás todas las actividades organizadas por fechas.',method:'find'}
  }

  @hash_content_activityIOS = {
    :titulo => {label:'h1',content:'Actividad',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'Selecciona el icono Más  en la parte inferior derecha.',method:'find'},
    :contenido1 => {label:'p',content: '​Se abrirá una ventana. Selecciona la opción Actividad.',method:'find'},
    :contenido2 => {label:'p',content: 'Observarás todas las actividades organizadas por fechas.',method:'find'}
  }

  @hash_options_photoEditing = { #Arreglo para opciones dentro de seccion 'Edición de Fotos'
    #:"edit" => {label:'p',content:'Editar',method:'find'},
    :"drawing" => {label:'p',content:'Dibujar de manera libre',method:'find'},
    :"text" => {label:'p',content:'Agregar texto',method:'find'},
    :"filters" => {label:'p',content:'Agregar filtros',method:'find'},
    :"adjust" => {label:'p',content:'Ajustar el tamaño y orientación de la foto',method:'find'},
    :"stickers" => {label:'p',content:'Incluir stickers',method:'find'}
  }

  @hash_content_EditMobile = {
    :titulo => {label:'h1',content:'Editar',method:'find'},
    :subtitulo1 => {label:'p',content:'La nueva funcionalidad incorporada en Claro drive, te permite la edición de fotos con 5 opciones principales:',method:'find'},
    :seccion1 => {label:'p',content: 'Dibujar de manera libre',method:'find'},
    :contenido1 => {label:'p',content: '​Ajustar el tamaño y orientación de la foto',method:'find'},
    :contenido2 => {label:'p',content: 'Para poder comenzar a editar una foto se debe seleccionar el icono que se encuentra a la derecha del nombre de la foto; al finalizar los cambios se puede guardar como una nueva imagen o compartirla.',method:'find'}
  }

  @hash_content_drawingMobile = {
    :titulo => {label:'h1',content:'Dibujo',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Se puede dibujar de manera libre sobre la imagen seleccionando tanto el color y grosor de la brocha, además es posible borrar las líneas dibujadas para hacer las correcciones necesarias.',method:'find'}
  }

  @hash_content_textMobile = {
    :titulo => {label:'h1',content:'Texto',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: 'Con ésta herramienta se permite agregar uno o más cuadros de texto los cuáles se pueden distribuir de manera libre sobre la imagen definiendo color y tamaño del texto.​',method:'find'}
  }

  @hash_content_filtersMobile = {
    :titulo => {label:'h1',content:'Filtros',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Para el ajuste de colores de la imagen se incorporaron 12 filtros.',method:'find'}
  }

  @hash_content_adjustMobile = {
    :titulo => {label:'h1',content:'Ajustar',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​En la sección de ajustes se podrá rotar la imagen así como ajustar el tamaño a dimensiones definidas o de manera libre.',method:'find'}
  }

  @hash_content_stickersMobile = {
    :titulo => {label:'h1',content:'Stickers',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​Se incluyen stickers con los cuáles se pueden agregar componentes a la imagen original; los sctickers pueden ser ajustados y posicionados en dónde se desee',method:'find'}
  }

  @hash_options_scanner = { #Arreglo para opciones dentro de seccion 'Escáner'. NOTA: Acualmente no tiene opciones dentro de esta seccion. Fecha: 24/06/2019
  }

  @hash_content_scannerAndroid = {
    :titulo => {label:'h1',content:'Escáner',method:'find'},
    :subtitulo1 => {label:'p',content:'La función Escaner permite al usuario generar archivos PDF a partir de capturas de documentos físicos que se desee digitalizar, una vez capturada la imagen podrá seleccionar el área de archivo que quiera guardar, de igual manera puede optar entre el color original, blanco y negro o escala de grises, cambiar la orientación y el orden de las imágenes. El archivo generado es almacenado directamente en su buzón.',method:'find'},
    :seccion1 => {label:'p',content: 'Dar clic en el signo de (+) ubicado en la parte inferior central del dispositivo, el cual te desplegarán varías opciones, entre ellas la opción de Escanear',method:'find'},
    :contenido1 => {label:'p',content: '​Se abrirá una sección de edición de la imagen si se desea aplicar un filtro de escala de grises o blanco y negro',method:'find'},
    :contenido2 => {label:'p',content: 'Dar clic en Guardar.',method:'find'}
  }

  @hash_content_ScannerIOS = {
    :titulo => {label:'h1',content:'Escáner',method:'find'},
    :subtitulo1 => {label:'p',content:'La función Escaner permite al usuario generar archivos PDF a partir de capturas de documentos físicos que se desee digitalizar, una vez capturada la imagen podrá seleccionar el área de archivo que quiera guardar, de igual manera puede optar entre el color original, blanco y negro o escala de grises, cambiar la orientación y el orden de las imágenes. El archivo generado es almacenado directamente en su buzón.',method:'find'},
    :seccion1 => {label:'p',content: 'Dar clic en el signo de (+) ubicado en la parte inferior central del dispositivo, el cual te desplegarán varías opciones, entre ellas la opción de Escanear',method:'find'},
    :contenido1 => {label:'p',content: 'Se abrirá una sección de edición de la imagen si se desea aplicar un filtro de escala de grises o blanco y negro​',method:'find'},
    :contenido2 => {label:'p',content: 'Dar clic en Guardar.',method:'find'}
  }

  ################## Comienza Claro drive Negocio

  @hash_sections_business = {
    :"exchange plan" => {label:'mat-expansion-panel[data-title="plan-de-intercambio"]',method:'find'},
    :"contract subscription" => {label:'mat-expansion-panel[data-title="contratar-subscripcion"]',method:'find'},
    :"manage licenses" => {label:'mat-expansion-panel[data-title="administrar-licencias"]',method:'find'}
  }

  @hash_options_exchangePlan = { #Arreglo para opciones dentro de seccion 'Plan de intercambio'
    :"upsell downsell" => {label:'p',content:'Upsell / Downsell',method:'find'}

  }

  @hash_content_upsellDownsell = {
    :titulo => {label:'h1',content:'Upsell / Downsell',method:'find'},
    :subtitulo1 => {label:'p',content:'Iniciar sesión en el Panel de Control Cloud en la URL https://cp.cloud.telmex.com. con usuario Partner.',method:'find'},
    :seccion1 => {label:'p',content: 'Realizar la búsqueda por ID de cuenta del usuario al que se desea realizar el ajuste de su actual Paquete Infinitum Negocio en la ruta:',method:'find'},
    :contenido1 => {label:'p',content: '​Inmediatamente después aparecerá el UG confirmando el cambio realizado',method:'find'},
    :contenido2 => {label:'p',content: 'NOTA:Para que el usuario final vea reflejado este cambio en su usuario de Claro Drive, debe entrar al panel de control y realizar la actualización de la capacidad de almacenamiento, ver el manual de Claro Drive – Administrar licencias UPGRADE o DOWNGRADE según sea necesario.',method:'find'}
  }

  @hash_options_contractSubscription = { #Arreglo para opciones dentro de seccion 'Contratar subscripción' NOTA: Acualmente no tiene opciones dentro de esta seccion. Fecha: 24/06/2019
  }

  @hash_content_contractSubscription = {
    :titulo => {label:'h1',content:'Contratar subscripción',method:'find'},
    :subtitulo1 => {label:'p',content:'En un navegador Web abrir la dirección URL https://telmex.com/web/negocios/clarodrive y hacer clic en Contrata ahora.',method:'find'},
    :seccion1 => {label:'p',content: 'En la siguiente ventana puedes.',method:'find'},
    :contenido1 => {label:'p',content: '​Al finalizar el proceso de contratación se mostrará el mensaje ¡Felicidades!, hacer clic en Ir a Claro Drive para acceder al servicio.',method:'find'},
    :contenido2 => {label:'p',content: 'También puedes abrir la dirección URL https://www.clarodrive.com/microsite/mexico/claronegocio e iniciar sesión con el usuario y contraseña previamente creado.',method:'find'}
  }

  @hash_options_manageLicenses = { #Arreglo para opciones dentro de seccion 'Administrar licencias'
    :"assign licenses" => {label:'p',content:'Asignar licencias',method:'find'},
    :"enable and disable user" => {label:'p',content:'Habilitar / Deshabilitar usuario',method:'find'},
    :"delete user" => {label:'p',content:'Borrar usuario',method:'find'},
    :"change resource limits" => {label:'p',content:'Cambiar límites de recursos',method:'find'},
    :upgrade => {label:'p',content:'Upgrade',method:'find'},
    :downgrade => {label:'p',content:'Downgrade',method:'find'},
    :graphics => {label:'p',content:'Gráficas',method:'find'},
  }

  @hash_content_assignLicenses = {
    :titulo => {label:'h1',content:'Asignar licencias',method:'find'},
    :subtitulo1 => {label:'p',content:'En el mosaico PLANES Y SUSCRIPCIONES hacer clic en ASIGNAR LICENCIA.',method:'find'},
    :seccion1 => {label:'p',content: 'Correo electrónico (Como inicio de sesión)',method:'find'},
    :contenido1 => {label:'p',content: 'Contraseña.​',method:'find'},
    :contenido2 => {label:'p',content: 'Hacer clic en ENVIAR.',method:'find'}
  }

  @hash_content_enableDisableUser = {
    :titulo => {label:'h1',content:'Habilitar / Deshabilitar usuario',method:'find'},
    :subtitulo1 => {label:'p',content:'En el menú Claro drive negocio, seleccionar Usuarios.',method:'find'},
    :seccion1 => {label:'p',content: 'Seleccionar la vista Lista, habilitar mediante la casilla verificadora el usuario que se desea habilitar o deshabilitar y posteriormente hacer clic en el botón HABILITAR o DESHABILITAR según sea necesario.',method:'find'},
    :contenido1 => {label:'p',content: 'Al actualizar la página de usuarios se mostrarán los cambios realizados.​',method:'find'}
  }

  @hash_content_deleteUser = {
    :titulo => {label:'h1',content:'Borrar usuario',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    #:seccion1 => {label:'p',content: '',method:'find'},
    :contenido1 => {label:'p',content: '​En el menú Claro drive negocio, seleccionar Usuarios.',method:'find'},
    :contenido2 => {label:'p',content: 'Al actualizar la página de usuarios se mostrarán los cambios realizados.',method:'find'}
  }

  @hash_content_changeResourceLimits = {
    :titulo => {label:'h1',content:'Cambiar límites de recursos',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'En el menú del lado izquierdo seleccionar Cuenta.',method:'find'},
    :contenido1 => {label:'p',content: '​En el menú Cuenta, seleccionar Suscripciones.',method:'find'},
    :contenido2 => {label:'p',content: 'El nuevo límite de recursos se verá reflejado automáticamente.',method:'find'}
  }

  @hash_content_upgrade = {
    :titulo => {label:'h1',content:'Upgrade',method:'find'},
    #:subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'En el menú Claro drive negocio, seleccionar Usuarios.',method:'find'},
    :contenido1 => {label:'p',content: '​NOTA:En caso de no tener licencias disponibles vea CAMBIAR LIMITES DE RECURSOS.',method:'find'},
    :contenido2 => {label:'p',content: 'El nuevo límite de almacenamiento se verá reflejado automáticamente.',method:'find'}
  }

  @hash_content_downgrade = {
    :titulo => {label:'h1',content:'Downgrade',method:'find'},
    :subtitulo1 => {label:'p',content:'',method:'find'},
    :seccion1 => {label:'p',content: 'En el menú Claro drive negocio, seleccionar Usuarios.',method:'find'},
    :contenido1 => {label:'p',content: '​Seleccionar la vista Mosaico y posteriormente hacer clic en EDITAR sobre el usuario al que se desea aumentar la capacidad de almacenamiento.',method:'find'},
    :contenido2 => {label:'p',content: 'NOTA:En caso de no tener licencias disponibles vea CAMBIAR LIMITES DE RECURSOS.',method:'find'}
  }

  @hash_content_graphics = {
    :titulo => {label:'h1',content:'Gráficas',method:'find'},
    :subtitulo1 => {label:'p',content:'En el menú Claro drive negocio, al seleccionar Tu Claro drive el administrador puede ver mediante una grafica el uso del servicio y realizar los siguientes filtros:',method:'find'},
    :seccion1 => {label:'p',content: 'Periodo de tiempo.',method:'find'},
    :contenido1 => {label:'p',content: 'Última semana.​',method:'find'},
    :contenido2 => {label:'p',content: 'Los últimos 6 meses.',method:'find'}
  }

  class << self
    def section_selector(section, type)
      case type.to_sym
      when :massive
        @result = @hash_sections_massive[section.to_sym]
        @result
      when :business
        @result = @hash_sections_business[section.to_sym]
        @result
      end
    end

    def option_selector(option, section, type)
      case type.to_sym
      when :massive
        case section.to_sym
        when :"registration and login"
          @result = @hash_options_registrationLogin[option.to_sym] if option != 0
          @result = @hash_options_registrationLogin if option == 0
          @result
        when :"payment information"
          @result = @hash_options_paymentInformation[option.to_sym] if option != 0
          @result = @hash_options_paymentInformation if option == 0
          @result
        when :"how to upload information to Claro drive"
          @result = @hash_options_howToUploadInformationToCD
          @result
        when :"share files and folders"
          @result = @hash_options_shareFilesFolders[option.to_sym] if option != 0
          @result = @hash_options_shareFilesFolders if option == 0
          @result
        when :"family space"
          @result = @hash_options_familySpace[option.to_sym]if option != 0
          @result = @hash_options_familySpace if option == 0
          @result
        when :"storage"
          @result = @hash_options_storage[option.to_sym]if option != 0
          @result = @hash_options_storage if option == 0
          @result
        when :"desktop client"
          @result = @hash_options_desktopClient[option.to_sym]if option != 0
          @result = @hash_options_desktopClient if option == 0
          @result
        when :"mobile"
          @result = @hash_options_mobile[option.to_sym]if option != 0
          @result = @hash_options_mobile if option == 0
          @result
        when :"file properties"
          @result = @hash_options_fileProperties[option.to_sym]if option != 0
          @result = @hash_options_fileProperties if option == 0
          @result
        when :"manage account"
          @result = @hash_options_manageAccount[option.to_sym]if option != 0
          @result = @hash_options_manageAccount if option == 0
          @result
        when :"paper bin"
          @result = @hash_options_paperBin[option.to_sym]if option != 0
          @result = @hash_options_paperBin if option == 0
          @result
        when :"activity"
          @result = @hash_options_activity
          @result
        when :"photo editing"
          @result = @hash_options_photoEditing[option.to_sym]if option != 0
          @result = @hash_options_photoEditing if option == 0
          @result
        when :"scanner"
          @result = @hash_options_scanner
          @result
        end
      when :business
        case section.to_sym
        when :"exchange plan"
          @result = @hash_options_exchangePlan[option.to_sym] if option != 0
          @result = @hash_options_exchangePlan if option == 0
          @result
        when :"contract subscription"
          @result = @hash_options_contractSubscription
          @result
        when :"manage licenses"
          @result = @hash_options_manageLicenses[option.to_sym]if option != 0
          @result = @hash_options_manageLicenses if option == 0
          @result
        end
      end
    end

    def validateContent(content,option, section, type)
      case type.to_sym
      when :massive
        case section.to_sym
        when :'registration and login'
          case option.to_sym
          when :'telmex account'
            @result = @hash_content_telmexAccountWeb if content == 1
            @result = @hash_content_telmexAccountMobile if content == 2
            @result
          when :'telcel account'
            @result = @hash_content_telcelAccountWeb if content == 1
            @result = @hash_content_telcelAccountMobile if content == 2
            @result
          when :'claro video and claro music account'
            @result = @hash_content_cvCmAccountWeb if content == 1
            @result = @hash_content_cvCmAccountMobile if content == 2
            @result
          when :'email account'
            @result = @hash_content_emailAccountWeb if content == 1
            @result = @hash_content_emailAccountMobile if content == 2
            @result
          when :'restore password'
            @result = @hash_content_restorePasswordWeb if content == 1
            @result = @hash_content_restorePasswordMobile if content == 2
            @result
          end
        when :'payment information'
          case option.to_sym
          when :'payment information'
            @result = @hash_content_paymentInformation if content == 0
            @result
          when :'change of plan'
            @result = @hash_content_changePlanWeb if content == 1
            @result = @hash_content_changePlanAndroid if content == 2
            @result = @hash_content_changePlanIOS if content == 3
            @result
          when :'I will lose my files if I cancel my CD subscription?'
            @result = @hash_content_loseFiles if content == 0
            @result
          when :'cancellation of plan'
            @result = @hash_content_cancellationPlanWeb if content == 1
            @result = @hash_content_cancellationPlanAndroid if content == 2
            @result = @hash_content_cancellationPlanIOS if content == 3
            @result
          end
        when :'how to upload information to Claro drive'
          @result = @hash_content_uploadInformationWeb if content == 1
          @result = @hash_content_uploadInformationAndroid if content == 2
          @result = @hash_content_uploadInformationIOS if content == 3
          @result
        when :"share files and folders"
          case option.to_sym
          when :"how do I share files and folders?"
            @result = @hash_content_howDoIShareFilesFoldersWeb if content == 1
            @result = @hash_content_howDoIShareFilesFoldersAndroid if content == 2
            @result = @hash_content_howDoIShareFilesFoldersIOS if content == 3
            @result
          when :"share using an access link"
            @result = @hash_content_shareUsingAccessLink if content == 0
            @result
          when :"share by email"
            @result = @hash_content_shareByEmail if content == 0
            @result
          when :"how can I change the configuration to a link?"
            @result = @hash_content_howDoIKnowShareAFile if content == 0
            @result
          when :"how do I invite people to edit my files?"
            @result = @hash_content_howDoIInvitePeopleToEditMyFiles if content == 0
            @result
          when :"see shared files"
            @result = @hash_content_seeSharedFilesWeb if content == 1
            @result = @hash_content_seeSharedFilesAndroid if content == 2
            @result = @hash_content_seeSharedFilesIOS if content == 3
            @result
          end
        when :'family space'
          @result = @hash_content_familySpace if content == 0
          @result
          case option.to_sym
            when :'how do I share GB of my plan?'
            @result = @hash_content_howDoIShareGBOfMyPlanWeb if content == 1
            @result = @hash_content_howDoIShareGBOfMyPlanMobile if content == 2
            @result
          when :'status of additional accounts'
            @result = @hash_content_statusOfAdditionalAccountsWeb if content == 1
            @result
          when :'modify the space allocated to a guest'
            @result = @hash_content_modifyTheSpaceAllocatedToAGuestWeb if content == 1
            @result = @hash_content_modifyTheSpaceAllocatedToAGuestMobile if content == 2
            @result
          when :'cancel the space assigned to a guest'
            @result = @hash_content_cancelTheSpaceAssignedToAGuessWeb if content == 1
            @result = @hash_content_cancelTheSpaceAssignedToAGuessMobile if content == 2
            @result
          when :'leave the family space'
            @result = @hash_content_leaveTheFamilySpaceWeb if content == 1
            @result = @hash_content_leaveTheFamilySpaceMobile if content == 2
            @result
          end
        when :'storage'
          case option.to_sym
          when :'current use of storage'
            @result = @hash_content_currentUseOfStorageWeb if content == 1
            @result = @hash_content_currentUseOfStorageMobile if content == 2
            @result = @hash_content_currentUseOfStorageDesktop if content == 3
            @result
          when :"how do I get more space?"
            @result = @hash_content_howDoIGetMoreSpaceWeb if content == 1
            @result = @hash_content_howDoIGetMoreSpaceAndroid if content == 3
            @result = @hash_content_howDoIGetMoreSpaceIOS if content == 2
            @result
          when :'what information can you see inside your storage?'
            @result = @hash_content_whatInformationCanYouSeeInsideYourStorage if content == 0
            @result
          end
        when :'desktop client'
          case option.to_sym
          when :'menu bar'
            @result = @hash_content_menuBarWindows if content == 1
            @result = @hash_content_menuBarMac if content == 2
            @result
          when :'how to download and install the Claro drive desktop application'
            @result = @hash_content_howToDownloadAndInstallCDDesktop if content == 0
            @result
          when :'force synchronization'
            @result = @hash_content_forceSynchronization if content == 1
            @result
          when :'button open in clarodrive.com'
            @result = @hash_content_buttonOpenInCD if content == 0
            @result
          end
        when :'mobile'
          case option.to_sym
          when :"how can I access my files without connection?"
            @result = @hash_content_howCanIAccessMyFilesWithoutConnectionAndroid if content == 2
            @result = @hash_content_howCanIAccessMyFilesWithoutConnectionIOS if content == 1
            @result
          when :"how do I disable without connection?"
            @result = @hash_content_howDoIDisableWithoutConnectionAndroid if content == 2
            @result = @hash_content_howDoIDisableWithoutConnectionIOS if content == 1
            @result
          when :"sync photos automatically"
            @result = @hash_content_synchPhotosAutomaticallyAndroid if content == 2
            @result = @hash_content_synchPhotosAutomaticallyIOS if content == 1
            @result
          when :"contact backup"
            @result = @hash_content_contactBackupAndroid if content == 2
            @result = @hash_content_contactBackupIOS if content == 1
            @result
          end
        when :'file properties'
          case option.to_sym
          when :'file tags'
            @result = @hash_content_fileTags if content == 1
            @result
          when :'version of documents'
            @result = @hash_content_versionOfDocuments if content == 1
            @result
          end
        when :'manage account'
          case option.to_sym
          when :'account settings'
            @result = @hash_content_accountSetttingsWeb if content == 1
            @result = @hash_content_accountSettingsAndroid if content == 3
            @result = @hash_content_accountSettingsIOS if content == 2
            @result
          end
        when :'paper bin'
          case option.to_sym
          when :'delete a file'
            @result = @hash_content_deleteAFileWeb if content == 1
            @result = @hash_content_deleteAFileAndroid if content == 3
            @result = @hash_content_deleteAFileIOS if content == 2
            @result
          when :'recover a deleted file'
            @result = @hash_content_recoverAFileDeletedWeb if content == 1
            @result = @hash_content_recoverAFileDeletedAndroid if content == 3
            @result = @hash_content_recoverAFileDeletedIOS if content == 2
            @result
          end
        when :'activity'
          @result = @hash_content_activityWeb if content == 1
          @result = @hash_content_activityAndroid if content == 3
          @result = @hash_content_activityIOS if content == 2
          @result

        when :'photo editing'
          case option.to_sym
          when :'edit'
            @result = @hash_content_EditMobile if content == 1
            @result
          when :'drawing'
            @result = @hash_content_drawingMobile if content == 1
            @result
          when :'text'
            @result = @hash_content_textMobile if content == 1
            @result
          when :'filters'
            @result = @hash_content_filtersMobile if content == 1
            @result
          when :'adjust'
            @result = @hash_content_adjustMobile if content == 1
            @result
          when :'stickers'
            @result = @hash_content_stickersMobile if content == 1
          end
        when :'scanner'
          @result = @hash_content_scannerAndroid if content == 2
          @result = @hash_content_ScannerIOS if content == 1
          @result
        end
      when :business
        case section.to_sym
        when :'exchange plan'
          case option.to_sym
          when :'upsell downsell'
            @result = @hash_content_upsellDownsell if content == 0
          end
        when :'contract subscription'
            @result = @hash_content_contractSubscription if content == 0
        when :'manage licenses'
          case option.to_sym
          when :'assign licenses'
            @result = @hash_content_assignLicenses if content == 0
            @result
          when :'enable and disable user'
            @result = @hash_content_enableDisableUser if content == 0
            @result
          when :'delete user'
            @result = @hash_content_deleteUser if content == 0
            @result
          when :'change resource limits'
            @result = @hash_content_changeResourceLimits if content == 0
          when :upgrade
            @result = @hash_content_upgrade if content == 0
            @result
          when :downgrade
            @result = @hash_content_downgrade if content == 0
            @result
          when :graphics
            @result = @hash_content_graphics if content == 0
            @result
          end

        end
      end
    end
  end
end