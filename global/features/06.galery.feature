Feature: every cases for Galery in Claro drive

  #Validate the gallery in Claro video
  @p0 @mx @video @chrome @mozilla @safari
    #New Case
  Scenario: Validate the gallery in video partner
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    And I click on "claro video" partner option
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I should see the correctly function of the "gallery" button
    And  I logout
  @p0 @mx @video @chrome @mozilla @safari
    #New Case
  Scenario: Validate the order by button in gallery with video partner
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button
    And  I logout
  @p0 @mx @video @chrome @mozilla @safari
    #New Case
  Scenario: Validate the new file button in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "new file" button
    #Then I should see the correctly function of the "new file" button
    And  I logout
  @p0 @mx @video @chrome @mozilla @safari
    #New Case
  Scenario: Validate the Todo button in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
    And  I logout
  @p0 @mx @video @chrome @mozilla @safari
    #New Case
  Scenario: Validate the Albums button in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "Albums" button
    Then I should see the correctly function of the "Albums" button
    And  I logout
  @p0 @mx @video
    #New Case
  Scenario: Validate the Compartidos button in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "Compartidos" button
    Then I should see the correctly function of the "Compartidos" button
    And  I logout
  @p0 @mx @video
    #New Case
  Scenario: Validate the full view in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "user with video account" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I click on this "gallery" button
    And I click on this "Todo" button
    And I click on this "photo 2" button
    Then I should see the correctly function of the "photo 2" button
    And I click on this "close full view" button
    And  I logout

  #Validate the gallery in Claro música

  @p0 @mx @musica @chrome @mozilla @safari
    #New Case
  Scenario: Validate the gallery in musica partner
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    And I click on "claro musica" partner option
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I should see the correctly function of the "gallery" button
    And  I logout
  @p0 @mx @musica @chrome @mozilla @safari
    #New Case
  Scenario: Validate the order by button in gallery with musica partner
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button
    And  I logout
  @p0 @mx @musica @chrome @mozilla @safari
    #New Case
  Scenario: Validate the new file button in gallery with musica partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "new file" button
    #Then I should see the correctly function of the "new file" button
    And  I logout
  @p0 @mx @musica @chrome @mozilla @safari
    #New Case
  Scenario: Validate the Todo button in gallery with musica partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
    And  I logout
  @p0 @mx @musica @chrome @mozilla @safari
    #New Case
  Scenario: Validate the Albums button in gallery with musica partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user musica" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "Albums" button
    Then I should see the correctly function of the "Albums" button
    And  I logout
  @p0 @mx @musica
    #New Case
  Scenario: Validate the Compartidos button in gallery with musica partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user with musica account" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "Compartidos" button
    Then I should see the correctly function of the "Compartidos" button
    And  I logout
  @p0 @mx @musica
    #New Case
  Scenario: Validate the full view in gallery with video partner
    Given I am an "registered" user
    When I open the app
    #Then I should see "home" page
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "user with video account" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    Then I click on this "gallery" button
    And I click on this "Todo" button
    And I click on this "photo 2" button
    Then I should see the correctly function of the "photo 2" button
    And I click on this "close full view" button
    And  I logout
