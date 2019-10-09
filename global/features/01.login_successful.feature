Feature: Login
  The users could login from home page with all partners.
  Login with user types:
    - A registered user in email with payment method Telcel.
    - A registered user in email with payment method Telmex.
    - A registered user in email with payment method credit card.
    - A registered user in email without subscription.
    - A registered user in telcel partner.
    - A registered user in telmex partner.
    - A registered user in claro musica with payment method Telcel.
    - A registered user in claro musica with payment method Telmex.
    - A registered user in claro musica with payment method credit card.
    - A registered user in claro videowith payment method Telcel.
    - A registered user in claro videowith payment method Telmex.
    - A registered user in claro videowith payment method credit card.

#Feature: Login with partner email

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3349
  Scenario: Login as registered user with email and payment method credit card
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And  I logout

  #@p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3350
  Scenario: Login as registered user with email and payment method Telmex
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  @p0 @mx @email #No sirve con ningun navegador
    #TC-3351
  Scenario: Login as registered user with email and payment method Telcel
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telcel" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  #@p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3355
  Scenario: Login as registered user with email, option show
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "show" button from "login email" page
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  #@p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3356
  Scenario: Login as registered user with email, option show and hide
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "show" button from "login email" page
    And I click on "hide" button from "login email" page
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3357
  Scenario: Go to registration page from login page
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I click on "registration-login" button from "login email" page
    Then  I should see "registration email" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3361
  Scenario: Login as registered user with email and payment method credit card
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And  I logout
 
  #@p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3362
  Scenario: Login as registered user with email and payment method Telmex
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

  @p0 @mx @email #No sirve con ningun navegador
    #TC-3363
  Scenario: Login as registered user with email and payment method Telcel
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telcel" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

 # @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3364
  Scenario: Login as registered user with email and payment method Telmex
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with telmex" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user" page
    And I logout

#Feature: Login with telmex users

  #@p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3380
  Scenario: Login as registered user with telmex
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "user" page
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3382
  Scenario:Login as registered user with telmex, option show
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "show" button from "login telmex" page
    And I click on "next" button from "login telmex" page
    Then I should see "user" page
    And  I logout

  #@p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3383
  Scenario:Login as registered user with telmex, option show and hide
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "show" button from "login telmex" page
    And I click on "hide" button from "login telmex" page
    And I click on "next" button from "login telmex" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3384
  Scenario: Go to registration page from login page
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I click on "registration-login" button from "login telmex" page
    Then  I should see "registration telmex" page


#Feature: Login with telcel users

  @p0 @mx @telcel @chrome @mozilla
    #TC-3370
  Scenario: Login as registered user with telcel
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
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
    #Then I should see "popup" page
    And I click on "close" button from "popup" page
    And  I logout

  @p0 @mx @telcel @chrome @mozilla @edge @ie
    #TC-3371
  Scenario: Go to registration page from login page
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I click on "registration-login" button from "login telcel" page
    Then  I should see "registration telcel" page

  #@p0 @mx @telcel
    #TC-3370
  Scenario: Login as registered user with telcel resend password
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "correct number" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    And I click on "resend" button from "login telcel" app
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    Then I should see "user" page
    And  I logout

#Feature: Login with Claro Musica users

  @p0 @mx @musica
    #TC-3254
  Scenario: Login as registered user with payment method telmex in partner claro musica
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with telmex" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user" page
    And  I logout

  @p1 @mx @musica
    #TC-3255
  Scenario: Login as registered user with payment method telcel in partner claro musia
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with telcel" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @musica
    #TC-3256
  Scenario: Login as registered user with payment method credit card in partner claro musica
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @musica @chrome @edge @ie
    #TC-3258
  Scenario: Login as registered user in claro musica and claro video in partner claro musica
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user claro video and claro musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user" page
    And  I logout


  @chrome @mozilla @edge @ie
    #TC-3259
  Scenario: Validate that the screen of terms and privacy, is displayed correctly on the hijack screen
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "cancel" button from "plans" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "hijack" page
    And I click on "termns and conditions" button from "hijack" page
    Then I should see "terms and conditions" page

  @chrome @mozilla @edge @ie
    #TC-3260
  Scenario: Validate the hijack screen with users claro musica and video
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "cancel" button from "plans" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "hijack" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page

  @chrome @edge @ie
    #TC-3265
  Scenario: Validate login in partner claro musica with payment method credit card, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    #And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
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
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3264
  Scenario: Validate login in partner claro musica with payment method telcel, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3263
  Scenario: Validate login in partner claro musica with payment method telmex, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

@chrome @mozilla @safari
    #TC-3268
  Scenario: Validate login in partner claro musica with payment method credit card, with a user registered in claro musica with credit card
    Given  I am an "registered" user
    #When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    Then I should see "claro musica home" page
    And I click on "ajustes" button from "claro musica" app
    And I click on "formas pago" button from "claro musica" app
    And I enter data of "credit card" in "claro musica"
    And I click on "continuar" button from "claro musica" app
    And I click on "suscripcion" button from "claro musica" app
    And I click on "99" button from "claro musica" app
    And I click on "aceptar" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
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
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3267
  Scenario: Validate login in partner claro musica with payment method telcel, with a user registered in claro musica with credit card
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3266
  Scenario: Validate login in partner claro musica with payment method telmex, with a user registered in claro musica with credit card
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3273
  Scenario: Validate login in partner claro musica with payment method credit card, with a user just registered in claro musica and registered in claro video with credit card
    Given I am an "new" user
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
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
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3272
  Scenario: Validate login in partner claro musica with payment method telcel, with a user just registered in claro musica and registered in claro video with credit card
    Given I am an "new" user
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3271
  Scenario: Validate login in partner claro musica with payment method telmex, with a user just registered in claro musica and registered in claro video with credit card
    Given I am an "new" user
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3280
  Scenario: Validate hijack page in partner claro musica with user registered by email and with user in claro musica
    Given I am an "new" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
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
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "hijack" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page

  @p1@mx
    #TC-3270
  Scenario: Validate login in partner claro musica with payment method telmex, with a user just registered in musica
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout


  @p1@mx
  Scenario: Validate login in partner claro musica with payment method telcel, with a user just registered in musica
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
  Scenario: Validate login in partner claro musica with payment method telmex, with a user just registered in claro muscia with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
  Scenario: Validate login in partner claro musica with payment method telcel, with a user just registered in claro muscia with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
  Scenario: Validate login in partner claro musica with payment method credit card, with a user just registered in claro muscia with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
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
    Then I should see "user" page
    Then I logout

    #login with partner claro video

  @p1@mx
    #TC-3304
  Scenario: Login as registered user with payment method telmex in partner claro video
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with telmex" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user" page
    And  I logout

  @p1@mx
    #TC-3305
  Scenario: Login as registered user with payment method telcel in partner claro video
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with telcel" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user" page
    And  I logout

  @p0 @mx @video
    #TC-3306
  Scenario: Login as registered user with payment method credit card in partner claro video
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user" page
    And  I logout

  @p1@mx
    #TC-3309
  Scenario: Validate that the screen of terms and privacy policies is displayed correctly on the hijack screen
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "cancel" button from "plans" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "hijack" page
    And I click on "terms and conditions" button from "hijack" page
    Then I should see "terms and conditions" page

  @p1@mx
    #TC-3309
  Scenario: Validate that the screen of terms and privacy policies is displayed correctly on the hijack screen
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "cancel" button from "plans" page
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

  @p1@mx
    #TC-3315
  Scenario: Validate login in partner claro video with payment method credit card, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
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

  @p1@mx
    #TC-3314
  Scenario: Validate login in partner claro video with payment method telcel, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3313
  Scenario: Validate login in partner claro video with payment method telmex, with a user registered in claro musica and video with credit card
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3318
  Scenario: Validate login in partner claro video with payment method credit card, with a user registered in claro video with credit card and just registered in musica
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    And I click on "next" button from "claro video" app
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
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

  @p1@mx
    #TC-3317
  Scenario: Validate login in partner claro video with payment method telcel, with a user registered in claro video with credit card and just registered in musica
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    And I click on "next" button from "claro video" app
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3316
  Scenario: Validate login in partner claro video with payment method telmex, with a user registered in claro video with credit card and just registered in musica
    Given  I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I go to "claro video"
    And I click on "registration" button from "claro video" app
    And I enter "correct user with credit card and same email" in "claro video"
    And I enter data of "credit card" in "claro video"
    And I click on "next" button from "claro video" app
    Then I should see "claro video home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3323
  Scenario: Validate login in partner claro video with payment method credit card, with a user registered in claro musica with credit card
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user with same email" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
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

  @p1@mx
    #TC-3322
  Scenario: Validate login in partner claro video with payment method telcel, with a user registered in claro musica with credit card
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
    #TC-3321
  Scenario: Validate login in partner claro video with payment method telmex, with a user registered in claro musica with credit card and just registered in video
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I enter data of "credit card" in "claro musica"
    And I click on "accept" button from "claro musica" app
    Then I should see "claro musica home" page
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p1@mx
  Scenario: Validate login in partner claro video with payment method telmex, with a user just registered in video
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "a valid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout
    
  @p1@mx
  Scenario: Validate login in partner claro video with payment method telcel, with a user just registered in video
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout


  @p0 @mx @video
    #TC-3330
  Scenario: Validate hijack page in partner claro video with user registered by email
    Given I am an "new" user
    When I generate "correct user" in claro video
    When I open the app
    #Then I should see "home" page
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

  @p1@mx
  Scenario: Login in partner claro video after to change password in claro video platform
    Given I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I go to "claro video"
    And I click on "login" button from "claro video" app
    And I login in "claro video" platform
    Then I should see "claro video home" page
    And I click on "my profile" button from "claro video" app
    And I click on "change password" button from "claro video" app
    And I change "password" in claro video
    Then I should see message "successful update" in "claro video"
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with other password" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page



