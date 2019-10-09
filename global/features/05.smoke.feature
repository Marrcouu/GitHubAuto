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

  #Inicia Validación del landing Smoke Test

  @p0 @mx @landing @chrome
    #TC-11458
  Scenario: Validate the link of Claro video in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro video" link in the "Claro drive" landing
    When I make click on this "Claro video" link in the "Claro drive" landing
    Then I should see the "Claro video" page
  @p0 @mx @landing
    #TC-11459
  Scenario: Validate the link of Claro música in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro música" link in the "Claro drive" landing
    When I make click on this "Claro música" link in the "Claro drive" landing
    Then I should see the "Claro música" page
  @p0 @mx @landing
    #TC-11460
  Scenario: Validate the link of Claro shop in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro shop" link in the "Claro drive" landing
    When I make click on this "Claro shop" link in the "Claro drive" landing
    Then I should see the "Claro shop" page
  @p0 @mx @landing
    #TC-11461
  Scenario: Validate the country options in the header
    Given The Landing page
    When I open the app
    And I should see the "Paises" link in the "Claro drive" landing
    When I make click on this "Paises" link in the "Claro drive" landing
    Then I should see all Paises links
    And I make click on this "Country" link in the "Claro drive" landing
    Then I should see the "Colombia" page
  @p0 @mx @landing
  Scenario: Validate the link Descubre of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descubre" link in the "Claro drive" landing
    When I make click on this "Descubre" link in the "Claro drive" landing
    Then I should see the "Descubre" page
  @p0 @mx @landing
  Scenario: Validate the link Comparte of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Comparte" link in the "Claro drive" landing
    When I make click on this "Comparte" link in the "Claro drive" landing
    Then I should see the "Comparte" page
  @p0 @mx @landing
  Scenario: Validate the link Respalda of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Respalda" link in the "Claro drive" landing
    When I make click on this "Respalda" link in the "Claro drive" landing
    Then I should see the "Respalda" page
  @p0 @mx @landing
  Scenario: Validate the link Descarga of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga" link in the "Claro drive" landing
    When I make click on this "Descarga" link in the "Claro drive" landing
    Then I should see the "Descarga" page
  @p0 @mx @landing
  Scenario: Validate the link Opciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Opciones" link in the "Claro drive" landing
    When I make click on this "Opciones" link in the "Claro drive" landing
    Then I should see the "Opciones" page
  @p0 @mx @landing
  Scenario: Validate the link Planes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Planes" link in the "Claro drive" landing
    When I make click on this "Planes" link in the "Claro drive" landing
    Then I should see the "Planes" page
  @p0 @mx @landing
  Scenario: Validate the link Descarga la app Android of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app Android" link in the "Claro drive" landing
    When I make click on this "Descarga la app Android" link in the "Claro drive" landing
    Then I should see the "Descarga la app Android" page
  @p0 @mx @landing
  Scenario: Validate the link Descarga la app iOS of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app iOS" link in the "Claro drive" landing
    When I make click on this "Descarga la app iOS" link in the "Claro drive" landing
    Then I should see the "Descarga la app iOS" page
  @p0 @mx @landing
  Scenario: Validate the link Descarga la app Desktop of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app" link in the "Claro drive" landing
    When I make click on this "Descarga la app" link in the "Claro drive" landing
    Then I should see the "Descarga la app" page
  @p0 @mx @landing
  Scenario: Validate the link Preguntas Frecuentes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Preguntas Frecuentes" link in the "Claro drive" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro drive" landing
    Then I should see the "Preguntas Frecuentes" page
  @p0 @mx @landing
  Scenario: Validate the link Correo Electrónico of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Correo Electrónico" link in the "Claro drive" landing
  @p0 @mx @landing
  Scenario: Validate the link Formas de Pago Telmex of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telmex" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telmex" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telmex" page
  @p0 @mx @landing
  Scenario: Validate the link Formas de Pago Telcel of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telcel" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telcel" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telcel" page
  @p0 @mx @landing
  Scenario: Validate the link Formas de Pago TDC of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago TDC" link in the "Claro drive" landing
    When I make click on this "Formas de pago TDC" link in the "Claro drive" landing
    Then I should see the "Formas de pago TDC" page
  @p0 @mx @landing
  Scenario: Validate the link Terminos y Condiciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Terminos y Condiciones" link in the "Claro drive" landing
    When I make click on this "Terminos y Condiciones" link in the "Claro drive" landing
    Then I should see the "Terminos y Condiciones" page

  #Termina la Validación de Landing para el Smoke Test
  #Y empieza Claro video

  @p0 @mx @vid
  Scenario: Validate subscription 25gb in partner claro video with payment method telmex
    Given  I am an "registered" user
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
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout
    And I clean "correct user with same email" from partner "claro video" for "email" in the app "drive"

  @p0 @mx @vid
  Scenario: Validate subscription 25gb in partner claro video with payment method telcel
    Given  I am an "registered" user
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
    And I click on "25gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout
    And I clean "correct user with same email" from partner "claro video" for "telcel" in the app "drive"

  @p0 @mx @video
  Scenario: Validate subscription 75gb in partner claro video with payment method credit card
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
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
    Then I should see "user" page
    Then I logout

  @p0 @mx @video
    #TC-3306
  Scenario: Login as registered user with payment method credit card in partner claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And  I logout

  @p0 @mx @video
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element

  @p0 @mx @video
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element

  @p0 @mx @vid
  Scenario: Validate the upload a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "upload file" button from "user" page
    And I select a "jpg" file to upload
    Then I should see "window of uploads" element
    Then I should see "file uploaded" element

  @p0 @mx @video
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

  @p0 @mx @video
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

  @p0 @mx @video
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

  @p0 @mx @video
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element

  @p0 @mx @video
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element

  @p0 @mx @video
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I click on "help" button from "user" page
    Then I should see "help" element

  @p0 @mx @video
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element

  @p0 @mx @video
  Scenario: Validate to invite a new user to family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page

  @p0 @mx @video
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @video
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @video
  Scenario: Close session
    Given I am an "registered" user
    When I open the app
    And I logout

  @p0 @mx @video
  Scenario: Login as user in read only in claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "read only user" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "read only" element
    And  I logout

  @p0 @mx @video
    #TC-3330
  Scenario: Validate hijack page in partner claro video with user registered by email
    Given I am an "new" user
    When I generate "correct user" in claro video
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user with same email" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "hijack" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page


     #Smoke claro musica

  @p0 @mx @mus
  Scenario: Validate subscription 25gb in partner claro musica with payment method telmex
    Given  I am an "registered" user
    And I clean "user musica" from partner "claro musica" for "email" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "email" in the app "drive"
    And I clean "user musica" from partner "claro musica" for "email" in the app "drive"

  @p0 @mx @mus
  Scenario: Validate subscription 25gb in partner claro musica with payment method telcel
    Given  I am an "registered" user
    And I clean "user musica" from partner "claro musica" for "telmex" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"

  @p0 @mx @musica
  Scenario: Validate subscription 75gb in partner claro musica with payment method credit card
    Given  I am an "registered" user
    #And I clean "user musica" from partner "claro musica" for "email" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "email" in the app "drive"

  @p0 @mx @musica
    #TC-3256
  Scenario: Login as registered user with payment method credit card in partner claro musica
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @musica
  Scenario: Validate the creation of a new folder in partner musica
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element

  @p0 @mx @musica
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element

  @p0 @mx @mus
  Scenario: Validate the upload a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "upload file" button from "user" page
    And I select a "jpg" file to upload
    Then I should see "window of uploads" element
    Then I should see "file uploaded" element

  @p0 @mx @musica
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

  @p0 @mx @musica
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

  @p0 @mx @musica
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

  @p0 @mx @musica
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element

  @p0 @mx @musica
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element

  @p0 @mx @musica
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I click on "help" button from "user" page
    Then I should see "help" element

  @p0 @mx @musica
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element

  @p0 @mx @musica
  Scenario: Validate to invite a new user to family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page

  @p0 @mx @musica
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @musica
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @musica
    Scenario: Close session
    Given  I am an "registered" user
    When I open the app
    And I logout

  @p0 @mx @musica
  Scenario: Login as user in read only user in claro musica
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "read only user" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "read only" element
    And  I logout

    #Smoke Telmex

  @p0 @mx @telmex
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

  @p0 @mx @telmex
  Scenario: Login as registered user with telmex
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "user" page
    And I logout

  @p0 @mx @telmex
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element

  @p0 @mx @telmex
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element

  @p0 @mx @tel
  Scenario: Validate the upload a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "upload file" button from "user" page
    And I select a "jpg" file to upload
    Then I should see "window of uploads" element
    Then I should see "file uploaded" element

  @p0 @mx @telmex
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

  @p0 @mx @telmex
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

  @p0 @mx @telmex
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

  @p0 @mx @telmex
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element

  @p0 @mx @telmex
  Scenario: Validate the correct change of name in profile
    Given I am an "registered" user
    When I open the app
    And I click on "personal" button from "user" page
    And I enter "new name" in "home" page
    Then I should see "new name" element

  @p0 @mx @telmex
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element

  @p0 @mx @telmex
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I click on "help" button from "user" page
    Then I should see "help" element

  @p0 @mx@telmex
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element

  @p0 @mx@telmex
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @telmex
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @telmex
  Scenario: Close session
    Given I am an "registered" user
    When I open the app
    And I logout

  @p0 @mx @telmex
  Scenario: Validate to invite a new user to family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "user telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout


    #Smoke Correo

  @p0 @mx @em
    #TC-3659
  Scenario: Validate a subscription in partner email with payment method telmex with plan 25gb
    Given I am an "new" user
    And I clean "a new user telmex" from partner "email" for "email" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "a new user telmex" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And  I click on "accept" button from "plans" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telmex" from partner "email" for "email" in the app "drive"

  @p0 @mx @em
    #TC-3663
  Scenario: Validate a subscription in partner email with payment method telcel with plan 25gb
    Given I am an "new" user
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "a new user telcel" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"

  @p0 @mx @email
    #TC-3667
  Scenario: Validate a subscription in partner email with payment method credit card plan 75gb
    Given I am an "new" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "150gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p0 @mx @email
    #TC-3350
  Scenario: Login as registered user with email and payment method Telmex
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  @p0 @mx @email
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element

  @p0 @mx @email
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element

  @p0 @mx @em
  Scenario: Validate the upload a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "upload file" button from "user" page
    And I select a "jpg" file to upload
    Then I should see "window of uploads" element
    Then I should see "file uploaded" element

  @p0 @mx @email
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

  @p0 @mx @email
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

  @p0 @mx @email
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

  @p0 @mx @email
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element

  @p0 @mx @email
  Scenario: Validate the correct change of name in profile
    Given I am an "registered" user
    When I open the app
    And I click on "personal" button from "user" page
    And I enter "new name" in "home" page
    Then I should see "new name" element

  @p0 @mx @email
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element

  @p0 @mx @email
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I click on "help" button from "user" page
    Then I should see "help" element

  @p0 @mx @email
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element

  @p0 @mx @email
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @email
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @email
  Scenario: Validate to invite a new user to family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page

  @p0 @mx @email
  Scenario: close session
    Given I am an "registered" user
    When I open the app
    And I logout

  @p0 @mx @email
  Scenario: Login as read only user with email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "read only user" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "read only" element
    And I logout

    #Smoke Telcel

  @p0 @mx @telcel
    #TC-3370
  Scenario: Login as registered user with telcel
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "correct number" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @telcel
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "correct number" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element

  @p0 @mx @telcel
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element

  @p0 @mx @tel
  Scenario: Validate the upload a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I click on "upload file" button from "user" page
    And I select a "video" file to upload
    Then I should see "window of uploads" element
    Then I should see "file uploaded" element

  @p0 @mx @telcel
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

  @p0 @mx @telcel
  Scenario: Validate the correct share element for email to user in claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

  @p0 @mx @telcel
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

  @p0 @mx @telcel
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element

  @p0 @mx @telcel
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element

  @p0 @mx @telcel
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I click on "help" button from "user" page
    Then I should see "help" element

  @p0 @mx @telcel
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element

  @p0 @mx @telcel
  Scenario: Validate to add a new user to family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page

  @p0 @mx @telcel
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @telcel
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element

  @p0 @mx @telcel
  Scenario: Close session
    Given I am an "registered" user
    When I open the app
    And I logout



