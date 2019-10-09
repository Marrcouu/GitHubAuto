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


  #Feature: Wrong login with partner telmex

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3547
  Scenario: Validate when i enter a wrong email and password in login telmex, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "wrong email and password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "wrong email and password" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3548
  Scenario: Validate when i enter a wrong password in login telmex, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    #When I make click on this "25 GB gratis con telcel o telmex" link in the "Claro drive" landing
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct email and wrong password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see " wrong password" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3549
  Scenario:Validate when i didn't enter email, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "empty email" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "empty email" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3550
  Scenario: Validate when i didn't enter password, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "empty password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "empty password" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3551
  Scenario: Validate when i leave empty fields, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I click on "next" button from "login telmex" page
    Then I should see "empty fields" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3552
  Scenario: Validate when i enter a user of another partner doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "user claro video" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "wrong user" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3553
  Scenario: validate when i enter a user without subscription, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "user without subscription" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "user without subscription" error in partner "telmex"

  @p0 @mx @telmex @chrome @mozilla @safari @edge @ie
    #TC-3554
  Scenario: Validate when i enter a correct email and incorrect password 3 times the account will block
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "wrong password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "invalid credentials" error in partner "telmex"
    And I enter "wrong password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "invalid credentials" error in partner "telmex"
    And I enter "wrong password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "invalid credentials" error in partner "telmex"
    And I enter "wrong password" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    Then I should see "user blocked" error in partner "telmex"

    #Feature: Wrong login with partner telcel

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3539
  Scenario: Validate when i enter a wrong number in login telcel, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "wrong number and password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong email and password" error in partner "telcel"

  #@p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3540
  Scenario:  Validate when i enter a wrong password in login telcel, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "correct number and wrong password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong password" error in partner "telcel"

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3541
  Scenario: Validate when i didn't enter number, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "empty number" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "empty number" error in partner "telcel"

  #@p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3542
  Scenario: Validate when i didn't enter password, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "empty password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "empty password" error in partner "telcel"

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3544
  Scenario: Validate when i enter a user of another partner doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "user telmex" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong user" error in partner "telcel"

  @p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3545
  Scenario: Validate when i enter a user without suscription
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "user without subscription" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "user without subscription" error in partner "telcel"

  #@p0 @mx @telcel @chrome @mozilla @safari @edge @ie
    #TC-3546
  Scenario: Validate when i enter a correct number and incorrect password 3 times the account will block
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "correct number and wrong password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong password" error in partner "telcel"
    And I enter "correct number and wrong password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong password" error in partner "telcel"
    And I enter "correct number and wrong password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "wrong password" error in partner "telcel"
    And I enter "correct number and wrong password" in partner "login telcel"
    And I click on "next" button from "login telcel" page
    Then I should see "user blocked" error in partner "telcel"


    #Feature: Wrong login with partner claro musica

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3391
  Scenario: Validate when i didn't enter email doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "empty email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "empty email" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3392
  Scenario: Validate when i 1n't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "empty password" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "empty password" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3393
  Scenario: Validate when i enter a short password doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "short password" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "short password" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3394
  Scenario: Validate when i enter a invalid email doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "invalid email" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "invalid email" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3395
  Scenario: Validate when i leave empty fields doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I click on "next" button from "login claro musica" page
    Then I should see "empty fields" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3399
  Scenario: Validate when i enter a user erased doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user erased" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user erased" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3400
  Scenario: Validate when i enter a user claro video doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro video" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user claro video" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3401
  Scenario: Validate when i enter a user telmex doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user telmex" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user telmex" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3402
  Scenario: Validate when i enter a user claro video doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro video" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "user claro video" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3403
  Scenario: Validate the app leave me cancel the selection of plan correctly in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "cancel" button from "plans" page
    #Then I should see "home" page

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3404
  Scenario: Validate the app leave me cancel the selection of payment method in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3405
  Scenario: Validate when i enter a number of another company doesn't  allow me continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "not telcel" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "not telcel" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3406
  Scenario: Validate when i enter a number invalid doesn't  allow me continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "number invalid" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "number invalid" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3407
  Scenario: Validate when i didn't enter a number doesn't allow me continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I click on "accept" button from "plans" page

  @p0 @mx @musica #Falla en todos los navegaores
    #TC-3408
  Scenario: Validate when i enter a wrong password doesn't allow me continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "wrong password" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "wrong password" error in partner "claro musica"

  @p0 @mx @musica #Falla en todos los navegadores
    #TC-3409
  Scenario: Validate when i didn't enter password doesn't allow me continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I click on "resend" button from "plans" page
    And I click on "accept" button from "plans" page

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3412
  Scenario: Validate that leave me cancel the payment method correctly in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I click on "back" button from "plans" page
    Then I should see "plans" page

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3414
  Scenario: Validate when i enter invalid number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "invalid number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3415
  Scenario: Validate when i didn't enter card number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty card number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3416
  Scenario: Validate when i didn't enter card name doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty card name" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3417
  Scenario: Validate when i didn't enter card date doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty date" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field date in red" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3418
  Scenario: Validate when i enter wrong date doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "wrong month" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3419
  Scenario: Validate when i didn't enter security number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty security number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3420
  Scenario: Validate when i enter wrong security number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "wrong card code" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro musica"

  @p0 @mx @musica #Falta insumo de TDC cancelada
    #TC-3421
  Scenario: Validate when i enter a credit card canceled doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "credit card canceled" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro musica"

  @p0 @mx @musica #Error al plantear
    #TC-3422
  Scenario: Validate when i enter a credit card expired doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "credit card expired" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3423
  Scenario: Validate when leave me cancel the payment method telmex correctly in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I click on "back" button from "plans" page
    Then I should see "plans" page

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3424
  Scenario: Validate when i enter an another number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "another number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "another number telmex" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3425
  Scenario: Validate when i enter an invalid number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "invalid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "invalid number telmex" error in partner "claro musica"

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3426
  Scenario: Validate when i didn't enter number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I click on "accept" button from "plans" page

  @p0 @mx @musica @chrome @mozilla @safari @edge @ie
    #TC-3427
  Scenario: Validate when i enter short number doesn't allow me to continue in partner claro musica
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user claro musica without subscription" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "short number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "short number" error in partner "claro musica"


#Feature: Wrong login with partner claro video

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3461
  Scenario: Validate when i didn't enter email doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "empty email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "empty email" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3462
  Scenario: Validate when i didn't enter password doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "empty password" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "empty password" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3463
  Scenario: Validate when i enter a short password doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "short password" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "short password" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3464
  Scenario: Validate when i enter a invalid email doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "invalid email" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "invalid email" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3465
  Scenario: Validate when i leave empty fields doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I click on "next" button from "login claro video" page
    Then I should see "empty fields" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3469
  Scenario: Validate when i enter a user erased doesn't allow me to continue in partner claro videp
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user erased" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user erased" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3470
  Scenario: Validate when i enter a user claro musica doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro musica" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user claro video" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3471
  Scenario: Validate when i enter a user telmex doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user telmex" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "user telmex" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari
    #TC-3473
  Scenario: Validate the app leave me cancel the selection of plan correctly in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "cancel" button from "plans" page
    #Then I should see "home" page

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3474
  Scenario: Validate when leave me cancel the payment method telcel correctly in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I click on "back" button from "plans" page
    Then I should see "plans" page

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3475
  Scenario: Validate when i enter a another number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "another number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "another number" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3476
  Scenario: Validate when i enter invalid number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "number invalid" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "invalid number" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3477
  Scenario: Validate when i didn't enter number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I click on "accept" button from "plans" page

  #@p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3479
  Scenario: Validate when i didn't enter password doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page

  #@p0 @mx @video @chrome
    #TC-3478
  Scenario: Validate when i enter wrong password doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telcel" payment method
    And I enter "a valid number" in payment method "telcel"
    And I click on "accept" button from "plans" page
    And I enter "wrong password" in payment method "telcel"
    And I click on "accept" button from "plans" page
    Then I should see "wrong password" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3482
  Scenario: Validate when leave me cancel the payment method credit card correctly in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I click on "back" button from "plans" page
    Then I should see "plans" page

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3484
  Scenario: Validate when i enter invalid number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "invalid number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3485
  Scenario: Validate when i didn't enter card number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty card number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3486
  Scenario: Validate when i didn't enter card name doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty card name" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field name in red" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3487
  Scenario: Validate when i didn't enter card date doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty date" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field date in red" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3488
  Scenario: Validate when i enter wrong date doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "wrong month" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3489
  Scenario: Validate when i didn't enter security number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "empty security number" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "field number in red" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3490
  Scenario: Validate when i enter wrong security number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "wrong card code" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro video"

  @p0 @mx @video #No sirve con todos los navegadores
    #TC-3491
  Scenario: Validate when i enter a credit card canceled doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "credit card canceled" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro video"

  @p0 @mx @video #No sirve con todos los navegadores
    #TC-3492
  Scenario: Validate when i enter a credit card expired doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "credit card" payment method
    And I enter "credit card expired" in payment method "credit card"
    And  I click on "accept" button from "plans" page
    Then I should see "check your credit card" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3493
  Scenario: Validate then leave me cancel the payment method telmex correctly in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "75gb" plan
    And I click on "telmex" payment method
    And I click on "back" button from "plans" page
    Then I should see "plans" page

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3494
  Scenario: Validate when i enter an another number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "another number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "another number telmex" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3495
  Scenario: Validate when i enter an invalid number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "invalid number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "invalid number telmex" error in partner "claro video"

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3496
  Scenario: Validate when i didn't enter number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I click on "accept" button from "plans" page

  @p0 @mx @video @chrome @mozilla @safari @edge @ie
    #TC-3497
  Scenario: Validate when i enter short number doesn't allow me to continue in partner claro video
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user claro video without subscription" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should see "plans" page
    And I click on "25gb" plan
    And I click on "telmex" payment method
    And I enter "short number" in payment method "telmex"
    And I click on "accept" button from "plans" page
    Then I should see "short number" error in partner "claro video"

#Feature: Wrong login with partner email

 @p0 @mx @email @chrome @mozilla @safari @edge @ie
   #TC-3532
 Scenario: Validate when i enter a wrong email and password in login email, doesn't allow me to continue
   Given I am an "registered" user
   When I open the app
   #Then I should see "home" page
   And I click on "login" button from "home" page
   Then I should see "partners" page
   And I click on "email" partner option
   Then I should see "login email" page
   And I enter "wrong email and password" in partner "login email"
   And I click on "next" button from "login email" page
   Then I should see "wrong email and password" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-7289
  Scenario: Validate when i enter a wrong password in login email, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct email and wrong password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "wrong password" error in partner "email"
	
  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3533
  Scenario: Validate when i didn't enter email, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "empty email" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "empty email" error in partner "email"
	
  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3534
  Scenario: Validate when i didn't enter a password, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "empty password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "empty password" error in partner "email"
	
  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3535
  Scenario: Validate when i leave empty fields, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I click on "next" button from "login email" page
    Then I should see "empty fields" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3536
  Scenario: Validate when i enter a user of another partner doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "user claro video" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "wrong user" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
    #TC-3537
  Scenario: validate when i enter a user without subscription, doesn't allow me to continue
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "user without subscription" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user without subscription" error in partner "email"

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
   #TC-3538
  Scenario: Validate when i enter a correct email and incorrect password 3 times the account will block
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct email and wrong password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "invalid credentials" error in partner "email"
    And I enter "correct email and wrong password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "invalid credentials" error in partner "email"
    And I enter "correct email and wrong password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "invalid credentials" error in partner "email"
    And I enter "correct email and wrong password" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should see "user block" error in partner "email"
