Feature: Wrong registration and login with partner claro movil.
  Countries with claro movil
  - Brazil
  - Argentina
  - Uruguay
  - Paraguay

   #Feature: wrong registry with claro movil in colombia
  @p0 @co
  Scenario: Validate when I didn't enter a phone number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I click on "registration" button from "claro" page
    Then I should see "missing number" error in partner "claro"

  @p0 @co
  Scenario: Validate when I didn't select a checkbox doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "empty check" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see "missing check" error in partner "claro"

  @p0 @co
  Scenario: Validate when I enter a 6 digit number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "short number" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see "short number" error in partner "claro"

  @p0 @co
  Scenario: Validate when I enter a number of another company doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "not claromovil" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see "invalid number" error in partner "claro"

  @p1 @co
  Scenario: Validate when I enter a number already registered doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "existing number" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see "invalid number" error in partner "claro"

  @p0 @co
  Scenario: Validate when I didn't enter a password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "valid number" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see message "send password" in "claro"
    And I click on "accept" button from "claro" page
    Then I should see "missing password" error in partner "claro"

  @p1 @co
  Scenario: Validate when I enter a wrong password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "claro" partner option
    Then I should see "claro" page
    And I enter "valid number" in partner "claro"
    And I click on "registration" button from "claro" page
    Then I should see message "send password" in "claro"
    And I enter "wrong password" in partner "claro"
    And I click on "accept" button from "claro" page
    Then I should see "incorrect password" error in partner "claro"

#Feature: Wrong login with Claro Movil colombia

  @p0 @co @gt @hn
  Scenario: Wrong login with incorrect number in partner claro movil
    Given I am an "new" user
    When  I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "wrong number" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "invalid number" error in partner "login claro"

  @p0 @CO
  Scenario: Wrong login with incorrect number and incorrect password in partner claro movil
    Given I am an "new" user
    When  I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "wrong number and password" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "wrong number and password" error in partner "login claro"

  @p0 @CO
  Scenario: Validate when i enter a wrong password in login telcel, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "correct number and wrong password" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "wrong password" error in partner "login claro"

  @p0 @CO
  Scenario: Validate when i didn't enter number, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "empty number" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "empty number" error in partner "login claro"

  @p0 @CO
  Scenario: Validate when i didn't enter password, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "empty password" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "empty password" error in partner "login claro"

  @p0 @CO
  Scenario: Validate when i leave empty fields, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I click on "accept" button from "login claro" page
    Then I should see "empty fields" error in partner "login claro"

  @p0 @CO
  Scenario: Validate when i enter a user of another partner doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "user telmex" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "wrong user" error in partner "login claro"

  @p0 @CO
  Scenario: usuario no subscription
    Given I am an "registered" user
    When I open the app
    Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "login claro" partner option
    Then I should see "login claro" page
    And I enter "user without subscription" in partner "login claro"
    And I click on "accept" button from "login claro" page
    Then I should see "user without subscription" error in partner "login claro"