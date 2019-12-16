Feature: Tests
  Validate of all elements in the Test Section

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I wait "5"
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I wait "5"
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @email @chrome @mozilla
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    And I click on "close" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout




  #@p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate Inicio Sesión
    Given The Landing page
    When I open the app
    And I should see the "Logo Claro drive" link in the "Claro drive" landing
    When I make click on this "Inicia sesión" link in the "Claro drive" landing
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page

 # @p0 @mx @chrome @musica
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

    ########## Partner Correo ##########
  #@chrome @mozilla @edge @ie
  Scenario: Registration of a new user
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
    #Comienza validación de 'Espacio familiar' -----
    #Scenario: Family space
    #When I open the app
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
    #And I wait "10"
    #And I change to "first" tab
    #And I click on "family space" button from "user" page
    #And I click on "edit plan" button from "user" page
    #And I enter "more space" in "home" page
    #Then I should see "user whitin family space" element
    #And I click on "edit plan" button from "user" page
  # ----- Realiza downsell a usuario dentro de espcacio familiar
  #@chrome @mozilla
  #Scenario: Downsell to a user invited
    #And I enter "less space" in "home" page
    #Then I should see "user whitin family space" element
  # ----- Cancela invitación aceptada -----
  #@chrome @mozilla
  #Scenario: Cancel invitation accepted
    #And I click on "edit plan" button from "user" page
    #And I click on "cancel invitation accepted" button from "user" page
    #Then I should see "invitation canceled" element

    #Scenario: Create a folder
  # ----- Creación de carpeta -----

    #And I click on "new folder" button from "user" page
    #And I enter "name folder" in "home" page
     #Then I should see "folder" element

  #@chrome @mozilla
  #Scenario: create a file txt
  # ----- Creación de archivo de texto 'txt' -----

    #And I click on "new file" button from "user" page
    #And I enter "name file" in "home" page
    #Then I should see "editor" element
    #And I enter "testing text" in "home" page
    #Then I should see "file" element

#Comienza validación de 'compartir'
  #@chrome @mozilla
  #Scenario: Share by link
  # ----- Compartición por enlace -----
  #  And I click on "share" button from "user" page
   # And I click on "config link" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared by link
  # ----- Validar ligas compartidas -----
    #And I click on "compartidos" button from "user" page
    #And I click on "ligas compartidas" button from "user" page
    #And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file by link
  # ----- Deja de compartir archivo
    #And I click on "home" button from "user" page
    #Then I should see "file shared for link" element
    #And I stop sharing for "link"
  #@chrome @mozilla
  #Scenario: Share to an account of Claro drive
  # ----- Comparticion a usuario registrado en CD -----
  #  And I click on "share" button from "user" page
  #  And I enter "target user email" in "home" page
  #  And I click on "sharing confirm" button from "user" page
  #  And I click on "cerrar modal compartir" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared to an account of Claro drive
  # ----- Validar archivo compartido -----
  #  And I click on "compartidos" button from "user" page
  #  And I click on "compartiste" button from "user" page
  #  And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file to an account of Claro drive
  # ----- Dejar de compartir archivo
  #  And I click on "home" button from "user" page
  #  And I click on "share" button from "user" page
  #  Then I should see "target user email" element
  #  And I stop sharing for "email"
  #@chrome @mozilla
  #Scenario: Share to a person without account of Claro drive
  # ----- Comparticion a usuario no registrado en CD -----
  #  And I click on "share" button from "user" page
  #  And I enter "target email" in "home" page
  #  And I click on "sharing confirm" button from "user" page
  #  And I click on "cerrar modal compartir" button from "user" page
  #@chrome @mozilla
  #Scenario: Validate files shared to a person without account of Claro drive
  # ----- Validar archivo compartido -----
  #  And I click on "compartidos" button from "user" page
  #  And I click on "compartiste" button from "user" page
  #  And I should see "compartiste" element
  #@chrome @mozilla
  #Scenario: Unshare a file to a person without account of Claro drive
  # ----- Dejar de compartir archivo
  #  And I click on "home" button from "user" page
  #  And I click on "share" button from "user" page
  #  Then I should see "target email" element
  #  And I stop sharing for "email"
  #@chrome @mozilla
  #Scenario: Validate a file shared to me
  # ----- Validación de 'Te compartieron'
  #  And I click on "compartidos" button from "user" page
  #  And I click on "te compartieron" button from "user" page
    #And I should see "te compartieron" element
#Borrar 'Archivo' y 'Carpeta'
  #@chrome @mozilla
  #Scenario: Erase and restore a file
  # ----- Borra archivo -----
  #  And I click on "home" button from "user" page
  #  And I click on "delete" button from "user" page
  # ----- Borra carpeta -----
    #And I click on "home" button from "user" page
    #And I click on "delete2" button from "user" page
  # ----- Restaura los dos primeros archivos -----
  #  And I click on "erased files" button from "user" page
  #  And I click on "restore" button from "user" page
    #And I click on "restore" button from "user" page
  #  And I click on "home" button from "user" page
  #  Then I should see "file" element
    #Eliminar 'Archivo' y 'Carpeta' Sin funciónamiento
      # ----- Borra archivo -----
        #And I click on "delete" button from "user" page
      # ----- Borra carpeta -----
        #And I click on "delete2" button from "user" page
      # ----- Elimina los dos primeros archivos -----
        #And I click on "erased files" button from "user" page
        #And I click on "delete" button from "user" page
        #And I click on "delete2" button from "user" page
    #Scenario: Validate files shared to an account of Claro drive
  # ----- Validar archivo compartido -----
    #And I click on "compartidos" button from "user" page
    #And I click on "compartiste" button from "user" page
    #And I should see "compartiste" element

    #Scenario: Validate files shared to a person without account of Claro drive
  # ----- Validar archivo compartido -----
    #And I click on "compartidos" button from "user" page
    #And I click on "ligas compartidas" button from "user" page
    #And I should see "compartiste" element

    #Scenario: Validate a file shared to me
  # ----- Validación de 'Te compartieron'
    #And I click on "compartidos" button from "user" page
    #And I click on "te compartieron" button from "user" page
    #And I should see "te compartieron" element

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

  #@p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

    ########## Partner Correo ##########

 # @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "recent" button from "user" page
    Then I should do all functions for "image" element
    And I click on "close file" button from "user" page
    And I download a file "jpg"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music" element
    And I click on "close file" button from "user" page
    And I download a file "mp3"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video" element
    And I click on "close file" button from "user" page
    And I download a file "mp4"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt" element
    And I click on "close file" button from "user" page
    And I download a file "txt"
    Then I should see "txt" file downloaded
    And  I logout

 # @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in all files
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout


 # @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for carpet, image, music, video and txt in favorites
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "favorites" button from "user" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout


  @chrome @mozilla @edge @ie @safari
  #Registro 75GB
  Scenario: Validate the configuration user section
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "configuration" button from "user" page
    #Then I should see "config user" page
    #And I click on "information" button from "config user" page
    #And I change profile picture
    #And I erase the profile picture
    #And I enter "new name" in "home" page
    #Then I should see "new name" element
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
    And  I logout

    #Then I should see "Created folder" element
    #Then I should see "Created file" element
    #Then I should see "Rename folder" element
    #Then I should see "Rename file" element


  #----------------------------------------------------------------------------------------

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I delete "image"
    And I wait "5"
    And I delete "music"
    And I wait "5"
    And I delete "video"
    And I wait "5"
    And I delete "txt"
    And I wait "5"
    And I delete "carpet"
    And I wait "5"
    And I delete "file"
    And I wait "5"
    And I delete "pic1"
    And I wait "5"
    And I delete "pic2"
    And I wait "5"
    And I delete "pic3"
    And I wait "5"
    And I delete "pic4"
    And I wait "5"
    And I delete "pic5"
    And I wait "5"
    And I click on "garbage" button from "user" page
    And I click on "delete files" button from "user" page
    And  I logout

  @p0 @mx @chrome @mozilla
  Scenario: Validate the subscription with telmex partner plan 25gb
    Given I am an "new" user
    #And I clean "new user telmex" from partner "telmex" for "email" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "new user telmex" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "new user telmex" from partner "telmex" for "email" in the app "drive"






  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "images" button from "user" page
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" fi                 le downloaded
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "videos" button from "user" page
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    And  I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "delete video" button from "user" page
    And I click on "garbage" button from "user" page
    And I click on "restore video" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "video" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "delete audio" button from "user" page
    And I click on "garbage" button from "user" page
    And I click on "restore audio" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "audio" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "delete image" button from "user" page
    And I click on "garbage" button from "user" page
    And I click on "restore image" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "image" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "delete text" button from "user" page
    And I click on "garbage" button from "user" page
    And I click on "restore text" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "text" element
    And I logout