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

#Feature: wrong registration with telmex

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3642
  Scenario: Validate when I didn't enter a phone number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    ##Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "telmex registration" page
    And I enter "empty number" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "missing number" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3643
  Scenario: Validate when I enter a invalid email doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "telmex registration" page
    And I enter "invalid email" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "missing number" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    # TC-3644
  Scenario: Validate when I didn't enter a email doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "empty email" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "invalid email" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3645
  Scenario: Validate when I didn't enter a password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "empty password" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "invalid password" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3646
  Scenario: Validate when I enter a short password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "short password" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "invalid password" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3647
  Scenario: Validate when I enter a password with only numbers doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "password numeric" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "not just numbers" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3648
  Scenario: Validate when I enter a password with only capital letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "password capital letters" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "not just capital letters" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3649
  Scenario: Validate when I enter a password with only lowercase letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "password lowercase letters" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "not just lowercase letters" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3650
  Scenario: Validate when I enter a password with lowercase letters and capital letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "password lowercase letters and capital letters" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "missing numbers" error in partner "telmex"

  @p1 @mx @telmex #Función eliminada
    #TC-3651
  Scenario: Validate when I didn't select terms and conditions doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "empty check" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "empty check" error in partner "telmex"

  @p1 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3652
  Scenario: Validate when I only select terms and conditions doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "only check" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "only check" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3653
  Scenario: Validate when I enter a number already registered doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "existing number" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "number already exist" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3653
  Scenario: Validate when I enter a short number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "short number" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "short number" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #agregar
  Scenario: Validate when I enter a unregistered number with a email already registered doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "existing email" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "email already exist" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3655
  Scenario: Validate when I enter a invalid number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "invalid number" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "invalid number" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
   #TC-3656
  Scenario: Validate when I enter a number of another company doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "another number" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "another number" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3657
  Scenario: Validate when I enter a number with debt doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    And I click on "telmex" partner option
    Then I should see "registration telmex" page
    And I enter "number with debt" in partner "telmex"
    And I click on "registration" button from "registration telmex" page
    Then I should see "number with debt" error in partner "telmex"



#Feature: Wrong registry with Telcel partner

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
   #TC-3635
  Scenario: Validate when I didn't enter a phone number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I click on "registration" button from "registration telcel" page
    Then I should see "missing number" error in partner "telcel"

  @p0 @mx @telcel #Función eliminada
    #TC-3636
  Scenario: Validate when I didn't select a checkbox doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "empty check" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see "missing check" error in partner "telcel"

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3637
  Scenario: Validate when I enter a 8 digit number doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "short number" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see "short number" error in partner "telcel"

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3638
  Scenario: Validate when I enter a number of another company doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "registration telcel" page
    And I enter "not telcel" in partner "telcel"
    And I click on "registration" button from "registration telcel" page
    Then I should see "invalid number" error in partner "telcel"

#Feature: Wrong registry with Email partner

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3604
  Scenario: Validate when I leave empty fields doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I click on "registration" button from "registration email" page
    Then I should see "empty fields" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3605
  Scenario: Validate when I didn't enter a email doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "empty email" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "missing email" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3606
  Scenario: Validate when I didn't enter a password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "empty password" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "missing password" error in partner "email"

  @p1 @mx @email #Función eliminada
    #TC-3607
  Scenario: Validate when I didn't select checkbox doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "empty checkbox" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "unselect checkbox" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3608
  Scenario: Validate when I enter a short password doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "short password" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "short password" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3609
  Scenario: Validate when I enter a password with only letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password lowercase letters" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password letters" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3610
  Scenario: Validate when I enter a password with numbers and lowercase letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password numeric and lowercase letters" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password numeric and lowercase letters" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3611
  Scenario: Validate when I enter a password with numbers and capital letters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password numeric and capital letters" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password numeric and capital letters" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3612
  Scenario: Validate when I enter a password with only numbers doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password numeric" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password numeric" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3613
  Scenario: Validate when I enter a password same as the email doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password same as the email" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password same as the email" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3614
  Scenario: Validate when I enter a password with same characters doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "password same characters" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "password same characters" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3615
  Scenario: Validate when I leave empty payment method telcel, doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I click on "accept" button from "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3616
  Scenario: Validate when I enter a short number in payment method telcel, send error message
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "short number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "short number telcel" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3617
  Scenario: Validate when I leave empty payment method telmex, doesn't allow me to continue
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I click on "accept" button from "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3618
  Scenario: Validate when I enter a short number in payment method telmex, send error message
    Given I am an "new" user
    When I open the app
    #Then I should see "home" page
    And I click on "registration" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "registration email" page
    And I enter "correct user" in partner "email"
    And I click on "registration" button from "registration email" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I enter "short number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "short number" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3619
  Scenario: Validate when I leave empty payment method credit card, doesn't allow me to continue
    Given I am an "new" user
    When I open the app
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
    And I click on "accept" button from "plans" page

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3620
  Scenario: Validate when I din't enter name and it turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty card name" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field name in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3621
  Scenario: Validate when I enter numbers characters in field name this be empty and it turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "number in name" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field name in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3622
  Scenario: Validate when I enter specials characters in field name this be empty and it turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "special characters" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field name in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3623
  Scenario: Validate when I leave empty number this be empty and it turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty card number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3624
  Scenario: Validate when I leave empty field date this turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty date" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field date in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3625
  Scenario: Validate when I leave empty field month this turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty month" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field month in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3626
  Scenario: Validate when I leave empty field year this turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty year" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field year in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3627
  Scenario: Validate when I enter a short number in field number this turns red in payment method credit car
    Given I am an "new" user
    When I open the app
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
    And I enter "short card number" in payment method "credit card"
    Then I should see "field number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3628
  Scenario: Validate when I enter a letters in field number this turns red in payment method credit car
    Given I am an "new" user
    When I open the app
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
    And I enter "letters card number" in payment method "credit card"
    Then I should see "field number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3629
  Scenario: Validate when I enter characters in field number this be empty and it turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "characters specials card number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3630
  Scenario: Validate when I leave empty field security number this turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "empty security number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field security number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3631
  Scenario: Validate when I enter a short number in field number this turns red in payment method credit card
    Given I am an "new" user
    When I open the app
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
    And I enter "short card code" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3632
  Scenario: Validate when I enter a long number in field security number, send a message error
    Given I am an "new" user
    When I open the app
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
    And I enter "card code long" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3633
  Scenario: Validate when I enter a incorrect security number, send a message error
    Given I am an "new" user
    When I open the app
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
    And I enter "wrong card code" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3634
  Scenario: Validate when I enter a incorrect month, send a message error
    Given I am an "new" user
    When I open the app
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
    And I enter "wrong month" in payment method "credit card"
    And I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "email"