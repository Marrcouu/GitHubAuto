Feature: Validate the function of the deeplinks
  #validacion de los deep links con sesión iniciada
  ##Partner Claro video
  @p0 @mx @chrome
  Scenario: Validate the home deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "home" deep link
    Then I should see the correct funtion of "home" deep link
    #And  I logout
  @p0 @mx
  Scenario: Validate the settings deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "settings" deep link
    #Then I should see the correct funtion of "home" deep link
    And  I logout
  @p0 @mx
  Scenario: Validate the Family deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "Familiar" deep link
    #Then I should see the correct funtion of "home" deep link
    And  I logout
  @p0 @mx
  Scenario: Validate the get more space deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "Obtén más espacio" deep link
    #Then I should see the correct funtion of "home" deep link
    And  I logout
  @p0 @mx
  Scenario: Validate the galery deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "Galería" deep link
    #Then I should see the correct funtion of "home" deep link
    And  I logout
  @p0 @mx
  Scenario: Validate the favorites deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "Favoritos" deep link
    #Then I should see the correct funtion of "home" deep link
    And  I logout
  #validación de los deeep links sin sesión iniciada
  @p0 @mx
  Scenario: Validate the home deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    #Then I should see "user" page
    And I make the visit to "home" deep link
    Then I should see the correct funtion of "home" deep link
    And  I logout
  @p0 @mx
  Scenario: Validate the home deep link with active session
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    #Then I should see "user" page
    And I make the visit to "home" deep link
    Then I should see the correct funtion of "home" deep link
    And  I logout
  #validación de los deeep links sin sesión iniciada
