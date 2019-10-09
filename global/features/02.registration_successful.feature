Feature: Registry in Claro Drive
  The users could register from home page with all partners.
  register for user types:
  - A registered user in email with payment method Telcel.
  - A registered user in email with payment method Telmex.
  - A registered user in email with payment method credit card.
  - A registered user in telcel partner.
  - A registered user in telmex partner.
  - A registered user in claro musica with payment method Telcel.
  - A registered user in claro musica with payment method Telmex.
  - A registered user in claro musica with payment method credit card.
  - A registered user in claro video with payment method Telcel.
  - A registered user in claro video with payment method Telmex.
  - A registered user in claro video with payment method credit card.

#Feature: Registry with partner telcel

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3586
  Scenario: Registry with partner telcel and see terms and conditions
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I click on "terms and conditions" button from "registration telcel" page
    Then I should see "terms and conditions" page

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3587
  Scenario: Registry with partner telcel and login page telcel
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I click on "i am user" button from "registration telcel" page
    Then I should see "login telcel" page

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie ##Se ejecuta una a la ves por cada navegador
    #TC-3588
  Scenario: Registry with partner telcel
    Given I am an "new" user
    When I open the app
   # Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "correct number" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see message "send password" in "telcel"
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    #And I enter "password" in partner "telcel"
    And I click on "login"
    Then I should see "user" page
    Then I logout

  @p0 @mx @telcel @chrome @mozilla #@safari @edge @ie
    #TC-3589
  Scenario: Registry with partner telcel and resend password
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "correct number" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see message "send password" in "telcel"
    And I click on "resend password" button from "registration telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    #And I enter "password" in partner "telcel"
    And I click on "login"
    Then I should see "user" page
    Then I logout


#Feature: Registry with partner email

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    # TC-3579
  Scenario: Registry with partner email and see terms and conditions
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I click on "terms and conditions" button from "registration email" page
    Then I should see "terms and conditions" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3580
  Scenario: Registry with partner email and login page email
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I click on "i am user" button from "registration email" page
    Then I should see "login email" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3581
  Scenario: Validate when i click on show, and register button send to the plans screen
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "show" button from "registration email" page
    And I click on "login"
    Then I should see "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-7288
  Scenario: Validate when i click on show and hide, and register button send to the plans screen
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "show" button from "registration email" page
    And I click on "hide" button from "registration email" page
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3582
  Scenario: Validate all plans with user without subscription
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    #And I click on "registration" button from "registration email" page
    And I click on "login"
    Then I should see "plans" page
    And I click on "25gb" plan
    And I wait "7"
    And I click on "back" plan
    Then I should see "plans" page
    And I click on "75gb" plan
    And I wait "7"
    And I click on "back" plan
    Then I should see "plans" page
    And I click on "150gb" plan
    And I wait "7"
    And I click on "back" plan
    Then I should see "plans" page
    And I click on "1024gb" plan
    And I wait "7"
    And I click on "back" plan
    Then I should see "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3583
  Scenario: Validate when i click on cancel i'll be send to the plans screen
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "login"
    Then I should see "plans" page
    And I click on "cancel" button from "plans" page
    #Then I should see "home" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3585
  Scenario: Validate when i click on cancel i'll be send to the plans screen
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "login"
    Then I should see "plans" page
    And I click on "cancel" button from "plans" page
    #Then I should see "home" page

#Feature: Registry with partner telmex

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3590
  Scenario: Registry with partner telmex and see terms and conditions
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I click on "terms and conditions" button from "registration telmex" page
    Then I should see "terms and conditions" page

  #@p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3591
  Scenario: Registry with partner telmex and login page telmex
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I click on "i am user" button from "registration telmex" page
    Then I should see "login telmex" page

