Feature: Test
  upsell challengue

@p0 @mx @video @chrome @mozilla @safari
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

  And I click on "config" on clarodrive page
  And I click on "payment info" on config page
  And I click on "250 GB" on payment info page
  And I click on "security code" on upsellGB
  And I enter "code" on security code
  And I logout

@p0 @mx @video @chrome @mozilla @safari
Scenario: Validate Clarodrive landing
  Given The Landing page
  When I open the app
  And I should see "Clarodrive logo" from landing page


  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the options in gallery
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page

    And I click on "Image open menu" button on files section
    #And I click on "Move or copy" button on open menu section
    And I click on "Folder" button on Move or copy section
    And I click on "Move" button on folder section



  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the options in gallery
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "Gallery button" on claro drive page
    And I click on "image" on gallery section
    And I click on "close" on image section
    And I click on "video" on gallery view
    And I click on "play" button from video
    And I click on "pause" button from video
    And I click on "close" on image section
    And I click on "audio" on gallery album
    And I click on "Order by" on gallery page
    And i click on "Oldest first" on order by button
    And I click on "Order by" on gallery page
    And I click on "Recent first" on order by button
    And I click on "All button" on gallery page
    And I click on "Albums button" on gallery page
    And I click on "Shared button" on gallery page



  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the options in gallery
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page

    And I click on "Activity button" on claro drive
    And I click on "By you" on activity
    And I click on "By others" on activity
    And I click on "Favorites" on activity
    And I click on "Shared files" on activity
    And I click on "Security" on activity
    And I click on "Shared files" on activity
    And I click on "Comments" on activity

