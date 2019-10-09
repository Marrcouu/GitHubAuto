Feature: Login
  The users could login from home page with all partners.

  @p0 @mx @chrome @mozilla @safari
    #TC-3349
  Scenario: Login as registered user with email and payment method credit card
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I get the time used to login on "correo" partner
    And  I logout

  @p0 @mx @chrome @mozilla @safari
    #TC-3380
  Scenario: Login as registered user with telmex
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I get the time used to login on "telmex" partner
    And I logout

  # @p0 @mx @chrome @mozilla @safari
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
    And I get the time used to login on "telcel" partner
    And  I logout

  @p0 @mx @chrome @mozilla @safari
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
    And I get the time used to login on "claro musica" partner
    And  I logout

  @p0 @mx @chrome @mozilla @safari
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
    And I get the time used to login on "claro video" partner
    And  I logout
