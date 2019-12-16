Feature: Subscription in claro drive
  subscription in claro drive with all partners in all available plans
  - User in email plan 75GB
  - User in email plan 150GB
  - User in email plan 1024GB
  - User in Telmex plan 25GB
  - User in Telcel plan 25GB
  - User in Telcel plan 75GB
  - User in Telcel plan 150GB
  - User in Telcel plan 1024GB
  - User in claro musica plan 75GB
  - User in Claro Musica plan 150GB
  - User in Claro Musica plan 1024GB
  - User in Claro Video plan 75GB
  - User in Claro Video plan 150GB
  - User in Claro Video plan 1024GB


#Feature: Subscription with partner email

  @p0 @mx @email
    #TC-3659
  Scenario: Validate a subscription in partner email with payment method telmex with plan 25gb
    Given I am an "new" user
    #And I clean "a new user telmex" from partner "email" for "email" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    #And I enter "a new user telmex" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex2" payment method
    And I enter "a valid number" in payment method "telmex"
    And  I click on "accept" button from "plans" page
    Then I should see message "25gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telmex" from partner "email" for "email" in the app "drive"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3667
  Scenario: Validate a subscription in partner email with payment method credit card plan 75gb
    Given I am an "new" user
    When I open the app
    And I logout if a session is started
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
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "Google play" on popup page
    And I should see "Google logo" from google play page
    And I click on "App store" on popup page
    And I should see "Apple logo" from app store page
    And I click on "Claro desktop" on popup page
    And I should see "Download buttons" from Claro drive page
    And I click on "Terminos y privacidad" on popup page
    And I should see "Clarodrive logo" from Claro drive page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3668
  Scenario: Validate a subscription in partner email with payment method credit card plan 150gb
    Given I am an "new" user
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "150gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "150gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3669
  Scenario: Validate a subscription in partner email with payment method credit card plan 1024gb
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
    And I click on "1024gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "1024gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    #Then I should see "user" page
    Then I logout

  @p0 @mx @email
    #TC-3663
  Scenario: Validate a subscription in partner email with payment method telcel with plan 25gb
    Given I am an "new" user
    #And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"
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
    #TC-3664
  Scenario: Validate a subscription in partner email with payment method telcel with plan 75gb
    Given I am an "new" user
    #And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email email" page
    And I enter "a new user telcel" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"

  @p0 @mx @email
    #TC-3665
  Scenario: Validate a subscription in partner email with payment method telcel with plan 150gb
    Given I am an "new" user
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email email" page
    And I enter "a new user telcel" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "150gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "150gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"

  @p0 @mx @email
    #TC-3666
  Scenario: Validate a subscription in partner email with payment method telcel with plan 1024gb
    Given I am an "new" user
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email email" page
    And I enter "a new user telcel" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "1024gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see message "1024gb"
    And I click on "continue" button from "congratulations" page
    Then I logout
    And I clean "a new user telcel" from partner "email" for "telcel" in the app "drive"

#Feature: Subscription with partner claro video

  @p0 @mx @video
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

  @p0 @mx @video
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

  @p0 @mx @video @chrome
  Scenario: Validate subscription 75gb in partner claro video with payment method telcel
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
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "75gb"
    #And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout
    And I clean "correct user with same email" from partner "claro video" for "telcel" in the app "drive"

  @p0 @mx @video
  Scenario: Validate subscription 150gb in partner claro video with payment method telcel
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
    And I click on "150gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "150gb"
    #And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout
    And I clean "correct user with same email" from partner "claro video" for "telcel" in the app "drive"

  @p0 @mx @video
  Scenario: Validate subscription 1024gb in partner claro video with payment method telcel
    Given  I am an "registered" user
    When I generate "correct user" in claro video
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with same email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "1024gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "1024gb"
    #And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout
    And I clean "correct user with same email" from partner "claro video" for "telcel" in the app "drive"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
  Scenario: Validate subscription 75gb in partner claro video with payment method credit card
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
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "75gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
  Scenario: Validate subscription 150gb in partner claro video with payment method credit card
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
    And I click on "150gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "150gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
  Scenario: Validate subscription 1024gb in partner claro video with payment method credit card
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
    And I click on "1024gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I wait "4"
    And I click on "accept" button from "plans" page
    Then I should see message "1024gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I logout

#Feature: Subscription with partner musica

  @p0 @mx @musica
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

  @p0 @mx @musica
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
  Scenario: Validate subscription 75gb in partner claro musica with payment method telcel
    Given  I am an "registered" user
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"
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
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "75gb"
    #And I click on "continue" button from "congratulations" page
    #Then I should see "popup" page
    #And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"

  @p0 @mx @musica
  Scenario: Validate subscription 150gb in partner claro musica with payment method telcel
    Given  I am an "registered" user
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "150gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "150gb"
    #And I click on "continue" button from "congratulations" page
    #Then I should see "popup" page
    #And I click on "close" button from "popup" page
    Then I should see "user" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"

  @p0 @mx @musica
  Scenario: Validate subscription 1024gb in partner claro musica with payment method telcel
    Given  I am an "registered" user
    #And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "1024gb" plan
    And I click on "telcel" payment method
    And I enter "number of subscription" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I get the password from mobile device
    And I enter "password" in payment method "telcel"
    And I click on "accept" button from "registration telcel" page
    #Then I should see message "1024gb"
    #And I click on "continue" button from "congratulations" page
    #Then I should see "popup" page
    #And I click on "close" button from "popup" page
    #Then I should see "user" page
    Then I logout
    And I clean "user musica" from partner "claro musica" for "telcel" in the app "drive"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
  Scenario: Validate subscription 75gb in partner claro musica with payment method credit card
    Given I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    #And I "confirm" the user in "claro musica"
    And I close tab
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
    Then I should see "user" page

  #@p0 @mx @musica @chrome @mozilla @safari @edge @ie
  Scenario: Validate subscription 150gb in partner claro musica with payment method credit card
    Given I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    And I close tab
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "150gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "150gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page

  #@p0 @mx @musica @mozilla @safari @edge @ie
  Scenario: Validate subscription 1024gb in partner claro musica with payment method credit card
    Given I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    And I close tab
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with same email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "1024gb" plan
    And I click on "credit card" payment method
    And I enter "correct data of credit card" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see message "1024gb"
    And I click on "continue" button from "congratulations" page
    Then I should see "popup" page
    And I click on "close" button from "popup" page
    Then I should see "user" page

#Feature: Subscription with partner telmex

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

#Feature: Subscription with partner telcel

  @p1 @mx
  Scenario: Registry with partner telcel and resend password 25gb
    Given I am an "new" user
    When I open the app
    And I logout if a session is started
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "valid number" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see message "send password" in "telcel"
    And I click on "resend password" button from "registration telcel" page
    And I enter "password" in partner "telcel"
    And I click on "accept" button from "registration telcel" page
    Then I should see "user" page
    And I click on "need more space?" button from "user" page
    And I click on "75gb" button from "user" page
    Then I should see message "upgrade"
    And I click on "continue" button from "congratulations" page
    Then I should see "user" page
    Then I logout

  @p0 @mx
  Scenario: Registry with partner telcel and resend password 75gb
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
    And I click on "need more space?" button from "user" page
    And I click on "75gb" button from "user" page
    And I click on "confirm" button from "user" page
    Then I should see message "upgrade"
    And I click on "confirm" button from "user" page
    Then I should see message "plan updated"
    Then I logout

  @p0 @mx
  Scenario: Registry with partner telcel and resend password 150gb
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
    And I click on "need more space?" button from "user" page
    And I click on "150gb" button from "user" page
    And I click on "confirm" button from "user" page
    Then I should see message "upgrade"
    And I click on "confirm" button from "user" page
    Then I should see message "plan updated"
    Then I logout

  @p0 @mx
  Scenario: Registry with partner telcel and resend password 1024gb
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
    And I click on "need more space?" button from "user" page
    And I click on "1024gb" button from "user" page
    And I click on "confirm" button from "user" page
    Then I should see message "upgrade"
    And I click on "confirm" button from "user" page
    Then I should see message "plan updated"
    Then I logout


