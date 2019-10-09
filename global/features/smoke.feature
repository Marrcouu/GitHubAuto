Feature: Smoke Test
  The basic cases for validation and functionality test for the app Claro drive.
    -Validate landing
    -Login with partner Telmex
    -Login with partner Telcel
    -Login with partner Email
    -Login with partner Claro musica
    -Login with partner Claro video
    -Registration with partner Telmex
    -Registration with partner Telcel
    -Registration with partner Email
    -Registration with partner Claro musica
    -Registration with partner Claro video
    -Validation home
    -Validation profile

  #Inicia Validación de Landing para el Smoke Test

  # Claro drive #
  @p0 @mx @chrome @mozilla @safari @edge @ie
    #TC-11458
  Scenario: Validate the link of Claro video in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro video" link in the "Claro drive" landing
    When I make click on this "Claro video" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Claro video" page
  @p0 @mx @chrome @mozilla @safari
    #TC-11459
  Scenario: Validate the link of Claro música in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro música" link in the "Claro drive" landing
    When I make click on this "Claro música" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Claro música" page
  @p0 @mx @chrome @mozilla @safari
    #TC-11460
  Scenario: Validate the link of Claro shop in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro shop" link in the "Claro drive" landing
    When I make click on this "Claro shop" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Claro shop" page
  @p0 @mx @chrome @mozilla @safari
    #TC-11461
  Scenario: Validate the country options in the header
    Given The Landing page
    When I open the app
    And I should see the "Paises" link in the "Claro drive" landing
    When I make click on this "Paises" link in the "Claro drive" landing
    Then I should see all Paises links
    And I make click on this "Country" link in the "Claro drive" landing
    Then I should see the "Colombia" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link of the Claro drive logo in the header
    Given The Landing page
    When I open the app
    And I should see the "Logo Claro drive" link in the "Claro drive" landing
    When I make click on this "Logo Claro drive" link in the "Claro drive" landing
    Then I should see the "Claro drive" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link register of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "registered" link in the "Claro drive" landing
    When I make click on this "registered" link in the "Claro drive" landing
    Then I should see the "registered" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link login of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Inicia sesión" link in the "Claro drive" landing
    When I make click on this "Inicia sesión" link in the "Claro drive" landing
    Then I should see the "Inicia sesión" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descubre of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descubre" link in the "Claro drive" landing
    When I make click on this "Descubre" link in the "Claro drive" landing
    Then I should see the "Descubre" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Comparte of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Comparte" link in the "Claro drive" landing
    When I make click on this "Comparte" link in the "Claro drive" landing
    Then I should see the "Comparte" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Respalda of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Respalda" link in the "Claro drive" landing
    When I make click on this "Respalda" link in the "Claro drive" landing
    Then I should see the "Respalda" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga" link in the "Claro drive" landing
    When I make click on this "Descarga" link in the "Claro drive" landing
    Then I should see the "Descarga" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Opciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Opciones" link in the "Claro drive" landing
    When I make click on this "Opciones" link in the "Claro drive" landing
    Then I should see the "Opciones" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Planes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Planes" link in the "Claro drive" landing
    When I make click on this "Planes" link in the "Claro drive" landing
    Then I should see the "Planes" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    Then I should see the "Negocio" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the button Usa tus 25 Gb of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Boton 25 GB gratis con telcel o telmex" link in the "Claro drive" landing
    When I make click on this "Boton 25 GB gratis con telcel o telmex" link in the "Claro drive" landing
    Then I should see the "registered2" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the button Inicia Sesión of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Boton Inicia sesión" link in the "Claro drive" landing
    When I make click on this "Boton Inicia sesión" link in the "Claro drive" landing
    Then I should see the "Inicia sesión" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Preguntas Frecuentes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Preguntas Frecuentes" link in the "Claro drive" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro drive" landing
    Then I should see the "Preguntas Frecuentes" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Correo Electrónico of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Correo Electrónico" link in the "Claro drive" landing
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Formas de Pago Telmex of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telmex" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telmex" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telmex" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Formas de Pago Telcel of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telcel" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telcel" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telcel" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Formas de Pago TDC of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago TDC" link in the "Claro drive" landing
    When I make click on this "Formas de pago TDC" link in the "Claro drive" landing
    Then I should see the "Formas de pago TDC" page
  @p0 @mx @chrome @mozilla
  Scenario: Validate the link Acerca de of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Acerca de" link in the "Claro drive" landing
    When I make click on this "Acerca de" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Acerca de" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Terminos y condiciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Terminos y condiciones" link in the "Claro drive" landing
    When I make click on this "Terminos y condiciones" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Terminos y condiciones" page
  @p0 @mx @chrome @mozilla
  Scenario: Validate the link Politica de privacidad of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Politica de privacidad" link in the "Claro drive" landing
    When I make click on this "Politica de privacidad" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Politica de privacidad" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app Android of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app Android" link in the "Claro drive" landing
    When I make click on this "Descarga la app Android" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app Android" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app iOS of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app iOS" link in the "Claro drive" landing
    When I make click on this "Descarga la app iOS" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app iOS" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app Windows / Mac of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app" link in the "Claro drive" landing
    When I make click on this "Descarga la app" link in the "Claro drive" landing
    Then I should see the "Descarga la app" page

    # Claro drive Negocio #
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Caracteristicas" link in the "Claro negocio" landing
    Then I should see the "Caracteristicas" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Descarga" link in the "Claro negocio" landing
    Then I should see the "Descarga" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    Then I should see the "Comparar planes" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Claro drive personal" link in the "Claro negocio" landing
    Then I should see the "Claro drive" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio Preguntas Frecuentes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Preguntas Frecuentes" link in the "Claro negocio" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro negocio" landing
    Then I should see the "Preguntas Frecuentes" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio Correo Electrónico of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Correo Electrónico" link in the "Claro negocio" landing
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Formas de pago Claro drive Negocio" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Acerca de" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Acerca de" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Terminos y condiciones" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Negocio Terminos y condiciones" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Politica de privacidad" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Politica de privacidad" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app Android of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app Android" link in the "Claro drive" landing
    When I make click on this "Descarga la app Android" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app Android" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app iOS of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app iOS" link in the "Claro drive" landing
    When I make click on this "Descarga la app iOS" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app iOS" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Descarga la app Windows / Mac of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app" link in the "Claro drive" landing
    When I make click on this "Descarga la app" link in the "Claro drive" landing
    Then I should see the "Descarga la app" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Negocio Comienza Ahora" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    And I make click on this "Obtener 250Gb" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    And I make click on this "Obtener 1Tb" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page

#Termina Validación de 'Landing' para el Smoke Test

    ########## Partner Correo ##########
    @chrome @mozilla @edge @ie
    Scenario: Registration of a new user
    #Registro 75GB
    Given I am an "registered" user
    #Scenario: Smoke Test - Correo
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page

    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I click on "home" button from "user" page

    And I click on "help" button from "user" page
    Then I should see "help" element
    And I click on "home" button from "user" page

    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I click on "home" button from "user" page

    #Scenario: Family space
  # ----- Comienza validación de 'Espacio familiar' -----
    And I click on "family space" button from "user" page

  #----- Invita a usuarios a espacio familiar -----
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I wait "5"

  #----- Cancela invitaciones no aceptadas -----
    And I click on "cancel invitations" button from "user" page
    And I click on "home" button from "user" page

   #Scenario: Create a folder
  # ----- Creación de carpeta -----
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    And I click on "close file" button from "user" page
    Then I should see "folder" element

   #Scenario: create a file txt
   # ----- Creación de archivo de texto 'txt' -----
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    And I click on "close file" button from "user" page
    Then I should see "file" element

    #Scenario: Unshare a file to an account of Claro drive
  # ----- Dejar de compartir archivo
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

    #Scenario: Share to an account of Claro drive
  # ----- Comparticion a usuario registrado en CD -----
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

   #Scenario: Share by link
  # ----- Compartición por enlace -----
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page

    #Scenario: Validate files shared by link
   #----- Validar ligas compartidas -----
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element

    #Scenario: Unshare a file by link
  # ----- Deja de compartir archivo
    And I click on "home" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

    #Scenario: Erase and restore a file
  # ----- Borra archivo -----
    And I click on "home" button from "user" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element

   #Scenario: Upload files an image
  # ----- Carga una imagen 'jpg' -----
    And I click on "home" button from "user" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file

   #Scenario: Upload an audio
  # ----- Carga un audio 'mp3' -----
    And I Upload a file "mp3"
    Then I should see "mp3" file

   #Scenario: Upload a video
  # ----- Carga un video 'mp4' -----
    And I Upload a file "mp4"
    Then I should see "mp4" file

    #Scenario: Upload file txt
  # ----- Carga un archivo de texto 'txt' -----
    And I Upload a file "txt"
    Then I should see "txt" file

   # ----- Cambiar foto de perfil desde Claro drive -----
    And I upload the profile pictures

  # ----- Cambiar foto de perfil -----
    And I change the profile picture
    And I wait "5"

   #Scenario: Change of name
  # ----- Cambio de nombre y Validación de Configuraciones-----
    And I enter "new name" in "home" page
    Then I should see "new name" element
    And I click on "security" button from "config user" page
    And I click on "close sesion" button from "config user" page
    And I click on "activity" button from "user" page
    Then I should see "Option Created" element
    Then I should see "Option Renamed" element
    Then I should see "Option Favorite Files" element
    Then I should see "Option Deleted" element
    Then I should see "Option Restored" element
    Then I should see "Option Favorites" element
    Then I should see "Option Shared" element
    Then I should see "Option Other Server" element
    Then I should see "Option Download" element
    Then I should see "Option Comments" element
    Then I should see "Option Labels" element
    And I click on "additional config" button from "config user" page

   #Scenario: Download the app from user menu
  # ------ Descarga de APP (Windows y iOS) ------
    And I click on "home" button from "user" page
    And I click on "descargar" button from "user" page

   #Scenario: Validate order by
  #Galeria
  # ----- Validar 'Ordenar por' -----
    And I click on "home" button from "user" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button

   #Scenario: Validate the button Todo from Galery
  # ----- Validar 'Todo' -----
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
    And I click on "home" button from "user" page
    And I logout



    ########## Partner Claro Video ##########
  @chrome @mozilla @edge @ie
  Scenario: Registro Claro Video - 75 GB
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    #Then I should see "user" page
    Then I logout

    ########## Partner Claro Música ##########
  @chrome @mozilla
  Scenario: Registro Claro Música - 75 GB
    Given I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    And I close tab
  #Scenario: Login
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    #Then I should see "user" page
    Then I logout



  ######### Partner Telcel ##########
  @chrome @mozilla
  Scenario: Smoke Test - Telcel 25 GB
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "25" in partner "telcel" - smoke
    #And I wait "5"
    And I click on "next" button from "login telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    Then I should see "user" page
    #Then I should see "popup" page
    #And I click on "close" button from "popup" page
#Comienza validación de 'Espacio familiar' -----
  #@chrome @mozilla
  #Scenario: Family space
    #When I open the app
    And I click on "family space" button from "user" page
  # ----- Invita a usuarios a espacio familiar -----
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I wait "5"
  # ----- Cancela invitaciones no aceptadas -----
    And I click on "cancel invitations" button from "user" page
  # ----- Invitar a usuario a espacio 1 -----
  #@chrome @mozilla
  #Scenario: Invitar a espacio 1
    #And I enter "family space" in "home" page
    #And I "accept" the invitation in "home" page
    #And I enter "empty email" in partner "email"
    #And I click on "registration" button from "registration email" page
    #And I click on "start to enjoy" button from "user" page
  # ----- Realiza upsell a usuario dentro de espcacio familiar
  #@chrome @mozilla
  #Scenario: Upsell to a user invited
    And I wait "10"
    And I change to "first" tab
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    #Then I should see "user whitin family space" element
    And I click on "edit plan" button from "user" page
  # ----- Realiza downsell a usuario dentro de espcacio familiar
  #@chrome @mozilla
  #Scenario: Downsell to a user invited
    And I enter "less space" in "home" page
    #Then I should see "user whitin family space" element
  # ----- Cancela invitación aceptada -----
  #@chrome @mozilla
  #Scenario: Cancel invitation accepted
    #And I click on "edit plan" button from "user" page
    #And I click on "cancel invitation accepted" button from "user" page
    #Then I should see "invitation canceled" element
#Comienza validación de 'Boton más'
  #@chrome @mozilla
  #Scenario: Upload files an image
  # ----- Carga una imagen 'jpg' -----
    And I click on "home" button from "user" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file
  #@chrome @mozilla
  #Scenario: Upload an audio
  # ----- Carga un audio 'mp3' -----
    And I Upload a file "mp3"
    Then I should see "mp3" file
  #@chrome @mozilla
  #Scenario: Upload a video
  # ----- Carga un video 'mp4' -----
    And I Upload a file "mp4"
    Then I should see "mp4" file
  #@chrome @mozilla
  #Scenario: Upload file txt
  # ----- Carga un archivo de texto 'txt' -----
    And I Upload a file "txt"
    Then I should see "txt" file
  # ----- Cambiar foto de perfil desde Claro drive -----
    And I upload the profile pictures
  #@chrome @mozilla
  #Scenario: Create a folder
  # ----- Creación de carpeta -----
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element
  #@chrome @mozilla
  #Scenario: create a file txt
  # ----- Creación de archivo de texto 'txt' -----
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
#Comienza validación de 'compartir'
  #@chrome @mozilla
  #Scenario: Share by link
  # ----- Compartición por enlace -----
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared by link
  # ----- Validar ligas compartidas -----
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file by link
  # ----- Deja de compartir archivo
    And I click on "home" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
  #@chrome @mozilla
  #Scenario: Share to an account of Claro drive
  # ----- Comparticion a usuario registrado en CD -----
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I click on "cerrar modal compartir" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared to an account of Claro drive
  # ----- Validar archivo compartido -----
    And I click on "compartidos" button from "user" page
    And I click on "compartiste" button from "user" page
    And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file to an account of Claro drive
  # ----- Dejar de compartir archivo
    And I click on "home" button from "user" page
    And I click on "share" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
  #@chrome @mozilla
  #Scenario: Share to a person without account of Claro drive
  # ----- Comparticion a usuario no registrado en CD -----
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I click on "cerrar modal compartir" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared to a person without account of Claro drive
  # ----- Validar archivo compartido -----
    And I click on "compartidos" button from "user" page
    And I click on "compartiste" button from "user" page
    And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file to a person without account of Claro drive
  # ----- Dejar de compartir archivo
    And I click on "home" button from "user" page
    And I click on "share" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
  #@chrome @mozilla
  #Scenario: Validate a file shared to me
  # ----- Validación de 'Te compartieron'
    And I click on "compartidos" button from "user" page
    And I click on "te compartieron" button from "user" page
    #And I should see "te compartieron" element
#Borrar 'Archivo' y 'Carpeta'
  #@chrome @mozilla
  #Scenario: Erase and restore a file
  # ----- Borra archivo -----
    And I click on "home" button from "user" page
    And I click on "delete" button from "user" page
  # ----- Borra carpeta -----
    #And I click on "home" button from "user" page
    #And I click on "delete2" button from "user" page
  # ----- Restaura los dos primeros archivos -----
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    #And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element
    #Eliminar 'Archivo' y 'Carpeta' Sin funciónamiento
      # ----- Borra archivo -----
        #And I click on "delete" button from "user" page
      # ----- Borra carpeta -----
        #And I click on "delete2" button from "user" page
      # ----- Elimina los dos primeros archivos -----
        #And I click on "erased files" button from "user" page
        #And I click on "delete" button from "user" page
        #And I click on "delete2" button from "user" page
  # ----- Cambiar foto de perfil -----
    And I change the profile picture
    And I wait "5"
#Cambio de nombre
  #@chrome @mozilla
  #Scenario: Change of name
    And I enter "new name" in "home" page
    Then I should see "new name" element
#Descarga de APP (Windows y iOS)
  #@chrome @mozilla
  #Scenario: Download the app from user menu
   #VALIDAR EL LINK DE DESCARGA
    And I click on "home" button from "user" page
    And I click on "descargar" button from "user" page
#Galeria
  #@chrome @mozilla
  #Scenario: Validate order by
  # ----- Validar 'Ordenar por' -----
    And I click on "home" button from "user" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button
  #@chrome @mozilla
  #Scenario: Validate the button Todo from Galery
  # ----- Validar 'Todo' -----
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
    And I click on "home" button from "user" page
    And I logout


      ########## Partner Correo - Safari ########## ################## ##################
  @safari
  Scenario: Smoke Test - Correo
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
#Comienza validación de 'Espacio familiar' -----
    And I click on "family space" button from "user" page
  # ----- Invita a usuarios a espacio familiar -----
    And I enter "new email" in "home" page
    Then I should see "invitations" element
  # ----- Cancela invitaciones no aceptadas -----
    And I click on "cancel invitations" button from "user" page
#Comienza validación de 'compartir'
  # ----- Compartición por enlace -----
    And I click on "home" button from "user" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
  # ----- Validar ligas compartidas -----
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element
  # ----- Dejar de compartir archivo
    And I click on "home" button from "user" page
#Borrar 'Archivo' y 'Carpeta'
  # ----- Borra archivo -----
    And I click on "home" button from "user" page
    And I click on "delete" button from "user" page
  # ----- Borra carpeta -----
    #And I click on "home" button from "user" page
    #And I click on "delete2" button from "user" page
  # ----- Restaura los dos primeros archivos -----
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    #And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element
    #Comienza validación de 'Boton más'
  # ----- Carga una imagen 'jpg' -----
    And I click on "home" button from "user" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file
  # ----- Carga un audio 'mp3' -----
    And I Upload a file "mp3"
    Then I should see "window of uploads" element
    Then I should see "mp3" file
  # ----- Carga un video 'mp4' -----
    And I Upload a file "mp4"
    Then I should see "window of uploads" element
    Then I should see "mp4" file
  # ----- Carga un archivo de texto 'txt' -----
    And I Upload a file "txt"
    Then I should see "window of uploads" element
    Then I should see "txt" file
#Galeria
  # ----- Validar 'Ordenar por' -----
    #And I click on "home" button from "user" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button
  # ----- Validar 'Todo' -----
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
   # ----- Cambiar foto de perfil -----
    And I change the profile picture
    And I wait "5"
    And I logout

    ########## Partner Claro video - Safari ##########
  @safari
  Scenario: Smoke Test - Correo
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I logout
    
    ########## Partner Música ##########
  @safari
  Scenario: Smoke Test - Música
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I logout

        ########## Partner Telcel ##########
  @safari
  Scenario: Smoke Test - Telcel
    Given I am an "registered" user
    And I create a new tab
    And I change to "first" tab
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "25" in partner "telcel" - smoke
    #And I wait "5"
    And I click on "next" button from "login telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    Then I should see "user" page
  #Comienza validación de 'Espacio familiar' -----
    And I click on "family space" button from "user" page
  # ----- Invita a usuarios a espacio familiar -----
    And I enter "new email" in "home" page
    Then I should see "invitations" element
  # ----- Cancela invitaciones no aceptadas -----
    And I click on "cancel invitations" button from "user" page
#Comienza validación de 'compartir'
  # ----- Compartición por enlace -----
    And I click on "home" button from "user" page
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
  # ----- Validar ligas compartidas -----
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element
  # ----- Dejar de compartir archivo
    And I click on "home" button from "user" page
#Borrar 'Archivo' y 'Carpeta'
  # ----- Borra archivo -----
    And I click on "home" button from "user" page
    And I click on "delete" button from "user" page
  # ----- Borra carpeta -----
    #And I click on "home" button from "user" page
    #And I click on "delete2" button from "user" page
  # ----- Restaura los dos primeros archivos -----
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    #And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element
    #Comienza validación de 'Boton más'
  # ----- Carga una imagen 'jpg' -----
    And I click on "home" button from "user" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file
  # ----- Carga un audio 'mp3' -----
    And I Upload a file "mp3"
    Then I should see "window of uploads" element
    Then I should see "mp3" file
  # ----- Carga un video 'mp4' -----
    And I Upload a file "mp4"
    Then I should see "window of uploads" element
    Then I should see "mp4" file
  # ----- Carga un archivo de texto 'txt' -----
    And I Upload a file "txt"
    Then I should see "window of uploads" element
    Then I should see "txt" file
#Galeria
  # ----- Validar 'Ordenar por' -----
    #And I click on "home" button from "user" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button
  # ----- Validar 'Todo' -----
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
   # ----- Cambiar foto de perfil -----
    And I change the profile picture
    And I wait "5"
    And I logout