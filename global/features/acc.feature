Feature: Seleccionar foto de perfil desde Claro drive.

  @email @chrome @mozilla @safari @edge @ie
  Scenario: Login as registered user with email and payment method credit card
    Given I am an "registered" user
   # And I click on "list view" button from "user" page
    Then I should see "contacts" element
    And I click on "share contact" button from "user" page
    And I click on "config link" button from "user" page
    And I stop sharing for "link contact"
    And I wait "3"
    And I click on "share contact" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I click on "cerrar modal compartir" button from "user" page
    And I stop sharing for "email contact"
    And I wait "3"
    And I click on "share contact" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    And I click on "cerrar modal compartir" button from "user" page
    And I stop sharing for "email contact"
    And I wait "3"
    And I download a file "contact-pdf"
    Then I should see "contact-pdf" file downloaded
    And I download a file "contact-csv"
    Then I should see "contact-csv" file downloaded
    And I download a file "contact-vcf"
    Then I should see "contact-vcf" file downloaded
    And I wait "5"

 @email @chrome @mozilla @safari @edge @ie
 Scenario: Login as registered user with email and payment method credit card
   Given I am an "registered" user
   When I open the app
   And I click on "login" button from "home" page
   And I wait "1"
   Then I should see "partners" page
   And I click on "telmex" partner option
   And I wait "1"
   And I click on "telcel" partner option
   And I wait "1"
   And I click on "claro musica" partner option
   And I wait "1"
   And I click on "claro video" partner option
   And I wait "1"
   And I click on "email" partner option
   And I wait "1"
   And I click on "claro video" partner option
   And I wait "1"
   And I click on "claro musica" partner option
   And I wait "1"
   And I click on "telcel" partner option
   And I wait "1"
   And I click on "telmex" partner option
   And I wait "3"
   #Then I should see "login email" page
   And I enter "correct user with credit card" in partner "login email"
   And I wait "3"
   And I click on "next" button from "login email" page
   #Then I should see "user" page
   And I wait "3"
   And  I logout