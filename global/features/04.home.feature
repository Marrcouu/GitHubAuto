Feature: Home user
  Validate the the correct functionality of the functions of the user home in the app Claro drive.
  -Create a new folder
  -Create a new text file
  -Share to an user
  -Share for email
  -Share for link
  -Erase or restore
  -change password
  -Change name
  -Validate links in home

   #home with partner claro video

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    
    And I click on "configuration" button from "user" page
    And I click on "security" button from "config user" page
    And I click on "close sesion" button from "config user" page


    #And I click on "new folder" button from "user" page
    #And I enter "name folder" in "home" page
    #Then I should see "folder" element
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And  I logout

    @p0 @mx @video @chrome @mozilla @safari
    Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

    @p0 @mx @video @chrome @mozilla @safari
    Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element
    And I click on "home" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "help" button from "user" page
    Then I should see "help" element
    And I logout

  @p0 @mx @video @chrome @mozilla
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element
    And I logout

  @p0 @mx @video @chrome @mozilla
  Scenario: Validate to add a new user to family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate an upsell in the account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate an downsell in the account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  @chrome @mozilla @edge @ie @safari
  Scenario: Validate the configuration user section
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "configuration" button from "user" page
    Then I should see "config user" page
    And I click on "information" button from "config user" page
    And I change profile picture
    And I erase the profile picture
    #And I enter "new name" in "home" page
    #Then I should see "new name" element
    And I click on "security" button from "config user" page
    And I click on "close sesion" button from "config user" page
    And I click on "activity" button from "user" page
    Then I should see "Option Created" element
    Then I should see "Option Renamed" element
    Then I should see "Option Favorite Files" element
    Then I should see "Option Deleted" element
    Then I should see "Option Restored" element
    Then I should see "Option Favorites" element
    Then I should see "Option Shared" element
    Then I should see "Option Other Server" element
    Then I should see "Option Download" element
    Then I should see "Option Comments" element
    Then I should see "Option Labels" element
    And I click on "additional config" button from "config user" page
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video @edge @ie
  Scenario: Validate the upload a image jpg in partner claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a music mp3 in partner  claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I Upload a file "mp3"
    Then I should see "window of uploads" element
    Then I should see "mp3" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a video mp4 in partner claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I Upload a file "mp4"
    Then I should see "window of uploads" element
    Then I should see "mp4" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a file txt in partner  claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I Upload a file "txt"
    Then I should see "window of uploads" element
    Then I should see "txt" file
    And  I logout

  @chrome @mozilla @edge @ie
  Scenario: Validate the add favorite for carpet, image, music, video and txt
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I add favorite to "image"
    And I add favorite to "video"
    And I add favorite to "music"
    And I add favorite to "carpet"
    And I add favorite to "txt"
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in all files
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "recent" button from "user" page
    Then I should do all functions for "image" element
    And I click on "close file" button from "user" page
    And I download a file "jpg"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music" element
    And I click on "close file" button from "user" page
    And I download a file "mp3"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video" element
    And I click on "close file" button from "user" page
    And I download a file "mp4"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt" element
    And I click on "close file" button from "user" page
    And I download a file "txt"
    Then I should see "txt" file downloaded
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for carpet, image, music, video and txt in favorites
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro video" partner option
    Then I should see "login claro video" page
    And I enter "correct user with credit card" in partner "claro video"
    And I click on "next" button from "login claro video" page
    And I click on "favorites" button from "user" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout

    #home with partner claro musica

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element
    And  I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And  I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "help" button from "user" page
    Then I should see "help" element
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element
    And I logout

  @p0 @mx @musica @chrome @mozilla
  Scenario: Validate to add a new user to family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  @p0 @mx @musica @chrome @mozilla @safari
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "claro musica" partner option
    Then I should see "login claro musica" page
    And I enter "correct user with credit card" in partner "claro musica"
    And I click on "next" button from "login claro musica" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

    #home with partner Telmex

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the creation of a new folder in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element
    And  I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And  I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element
    And I logout

  #@p0 @mx @telmex @chrome @mozilla
  Scenario: Validate the correct change of name in profile
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "personal" button from "user" page
    And I enter "new name" in "home" page
    Then I should see "new name" element
    And I logout

  #@p0 @mx @telmex #No sirve para ningun navegador
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "help" button from "user" page
    Then I should see "help" element
    And I logout

  #@p0 @mx @telmex @chrome @mozilla @safari
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element
    And I logout

  #@p0 @mx @telmex @chrome @mozilla
  Scenario: Validate to add a new user to family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "user telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout

  #@p0 @mx @telmex @chrome @mozilla
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  #@p0 @mx @telmex @chrome @mozilla
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telmex" partner option
    Then I should see "login telmex" page
    And I enter "correct user with telmex" in partner "login telmex"
    And I click on "next" button from "login telmex" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  #home with partner email

  @p0 @mx @email @chrome @mozilla @safari
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
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element
    And  I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate the creation of a new file in partner email
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And  I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user register in claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @email @chrome @mozilla
  Scenario: Validate the correctly share to element for link
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the correct function of delete and restore of a file
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element
    And I logout

  @p0 @mx @email @chrome @mozilla @mozilla @safari
  Scenario: Validate the correct change of name in profile
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "personal" button from "user" page
    And I enter "new name" in "home" page
    Then I should see "new name" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the page about claro drive
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the page help
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "help" button from "user" page
    Then I should see "help" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari @edge @ie
  Scenario: Validate the page terms and conditions
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element
    And I logout

  @p0 @mx @email @chrome
  Scenario: Validate to add a new user to family space
    Given I am an "registered" user
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
    And I click on "close" button from "popup" page
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate an upsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  @p0 @mx @email @chrome @mozilla @safari
  Scenario: Validate an downsell in and account within family space
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

   @chrome @mozilla @edge @ie @safari
  #Registro 75GB
  Scenario: Validate the configuration user section
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "configuration" button from "user" page
    Then I should see "config user" page
    And I click on "information" button from "config user" page
    And I change profile picture
    And I erase the profile picture
    And I enter "new name" in "home" page
    Then I should see "new name" element
    And I click on "security" button from "config user" page
    And I click on "close sesion" button from "config user" page
    And I click on "activity" button from "user" page
    Then I should see "Option Created" element
    Then I should see "Option Renamed" element
    Then I should see "Option Favorite Files" element
    Then I should see "Option Deleted" element
    Then I should see "Option Restored" element
    Then I should see "Option Favorites" element
    Then I should see "Option Shared" element
    Then I should see "Option Other Server" element
    Then I should see "Option Download" element
    Then I should see "Option Comments" element
    Then I should see "Option Labels" element
    And I click on "additional config" button from "config user" page
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video @edge @ie
  Scenario: Validate the upload a image jpg in partner claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a music mp3 in partner  claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I Upload a file "mp3"
    Then I should see "window of uploads" element
    Then I should see "mp3" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a video mp4 in partner claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I Upload a file "mp4"
    Then I should see "window of uploads" element
    Then I should see "mp4" file
    And  I logout

  @p0 @mx @chrome @mozilla @safari @video
  Scenario: Validate the upload a file txt in partner  claro video
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I Upload a file "txt"
    Then I should see "window of uploads" element
    Then I should see "txt" file
    And  I logout

  @chrome @mozilla @edge @ie
  #Registro 75GB
  Scenario: Validate the add favorite for carpet, image, music, video and txt
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I add favorite to "image"
    And I add favorite to "video"
    And I add favorite to "music"
    And I add favorite to "carpet"
    And I add favorite to "txt"
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in all files
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for image, music, video and txt in recent
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "recent" button from "user" page
    Then I should do all functions for "image" element
    And I click on "close file" button from "user" page
    And I download a file "jpg"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music" element
    And I click on "close file" button from "user" page
    And I download a file "mp3"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video" element
    And I click on "close file" button from "user" page
    And I download a file "mp4"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt" element
    And I click on "close file" button from "user" page
    And I download a file "txt"
    Then I should see "txt" file downloaded
    And  I logout

  @p0 @mx @video @chrome @mozilla @safari
  Scenario: Validate details for carpet, image, music, video and txt in favorites
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "correct user with credit card" in partner "login email"
    And I click on "next" button from "login email" page
    And I click on "favorites" button from "user" page
    Then I should do all functions for "carpet2" element
    And I click on "close file" button from "user" page
    And I download a file "carpet2"
    Then I should see "carpet" file downloaded
    Then I should do all functions for "image2" element
    And I click on "close file" button from "user" page
    And I download a file "jpg2"
    Then I should see "jpg" file downloaded
    Then I should do all functions for "music2" element
    And I click on "close file" button from "user" page
    And I download a file "mp32"
    Then I should see "mp3" file downloaded
    Then I should do all functions for "video2" element
    And I click on "close file" button from "user" page
    And I download a file "mp42"
    Then I should see "mp4" file downloaded
    Then I should do all functions for "txt2" element
    And I click on "close file" button from "user" page
    And I download a file "txt2"
    Then I should see "txt" file downloaded
    And  I logout

     ########## Partner Claro Música ##########
  @chrome @mozilla @safari
  Scenario: Registro Claro Música - 75 GB
    Given I am an "registered" user
    When I go to "claro musica"
    And I click on "listen free" button from "claro musica" app
    And I enter "correct user" in "claro musica"
    And I click on "accept" button from "claro musica" app
    And I "confirm" the user in "claro musica"
    And I close tab
  #Scenario: Login
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
    #Then I should see "user" page
    Then I logout

 # @p0 @mx @telcel @chrome @mozilla
  Scenario: Login as registered user with telcel
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
    Then I should see "user" page

    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I click on "home" button from "user" page

    And I click on "help" button from "user" page
    Then I should see "help" element
    And I click on "home" button from "user" page

    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I click on "home" button from "user" page

    #Scenario: Family space
  # ----- Comienza validación de 'Espacio familiar' -----
    And I click on "family space" button from "user" page

  #----- Invita a usuarios a espacio familiar -----
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I wait "5"

  #----- Cancela invitaciones no aceptadas -----
    And I click on "cancel invitations" button from "user" page
    And I click on "home" button from "user" page

   #Scenario: Create a folder
  # ----- Creación de carpeta -----
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    And I click on "close file" button from "user" page
    Then I should see "folder" element

   #Scenario: create a file txt
   # ----- Creación de archivo de texto 'txt' -----
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    And I click on "close file" button from "user" page
    Then I should see "file" element

    #Scenario: Unshare a file to an account of Claro drive
  # ----- Dejar de compartir archivo
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"

    #Scenario: Share to an account of Claro drive
  # ----- Comparticion a usuario registrado en CD -----
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"

   #Scenario: Share by link
  # ----- Compartición por enlace -----
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page

    #Scenario: Validate files shared by link
  #----- Validar ligas compartidas -----
    And I click on "compartidos" button from "user" page
    And I click on "ligas compartidas" button from "user" page
    And I should see "compartiste" element

    #Scenario: Unshare a file by link
  # ----- Deja de compartir archivo
    And I click on "home" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"

    #Scenario: Erase and restore a file
  # ----- Borra archivo -----
    And I click on "home" button from "user" page
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    And I click on "home" button from "user" page
    Then I should see "file" element

   #Scenario: Upload files an image
  # ----- Carga una imagen 'jpg' -----
    And I click on "home" button from "user" page
    And I Upload a file "jpg"
    Then I should see "window of uploads" element
    Then I should see "jpg" file

   #Scenario: Upload an audio
  # ----- Carga un audio 'mp3' -----
    And I Upload a file "mp3"
    Then I should see "mp3" file

   #Scenario: Upload a video
  # ----- Carga un video 'mp4' -----
    And I Upload a file "mp4"
    Then I should see "mp4" file

    #Scenario: Upload file txt
  # ----- Carga un archivo de texto 'txt' -----
    And I Upload a file "txt"
    Then I should see "txt" file

   # ----- Cambiar foto de perfil desde Claro drive -----
    And I upload the profile pictures

  # ----- Cambiar foto de perfil -----
    And I change the profile picture
    And I wait "5"

   #Scenario: Change of name
  # ----- Cambio de nombre y Validación de Configuraciones-----
    And I enter "new name" in "home" page
    Then I should see "new name" element
    And I click on "security" button from "config user" page
    And I click on "close sesion" button from "config user" page
    And I click on "activity" button from "user" page
    Then I should see "Option Created" element
    Then I should see "Option Renamed" element
    Then I should see "Option Favorite Files" element
    Then I should see "Option Deleted" element
    Then I should see "Option Restored" element
    Then I should see "Option Favorites" element
    Then I should see "Option Shared" element
    Then I should see "Option Other Server" element
    Then I should see "Option Download" element
    Then I should see "Option Comments" element
    Then I should see "Option Labels" element
    And I click on "additional config" button from "config user" page

   #Scenario: Download the app from user menu
  # ------ Descarga de APP (Windows y iOS) ------
    And I click on "home" button from "user" page
    And I click on "descargar" button from "user" page

   #Scenario: Validate order by
  #Galeria
  # ----- Validar 'Ordenar por' -----
    And I click on "home" button from "user" page
    Then I click on this "gallery" button
    And I click on this "order by" button
    Then I should see the correctly function of the "order by" button

   #Scenario: Validate the button Todo from Galery
  # ----- Validar 'Todo' -----
    And I click on this "Todo" button
    Then I should see the correctly function of the "Todo" button
    And I click on "home" button from "user" page
    And I logout




    #Then I should see "user" page
    #Then I should see "popup" page
    #And I click on "close" button from "popup" page
    #And  I logout


  #home with partner telcel
  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the creation of a new folder in partner email
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
    And I click on "new folder" button from "user" page
    And I enter "name folder" in "home" page
    Then I should see "folder" element
    And  I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the creation of a new file in partner email
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
    And I click on "new file" button from "user" page
    And I enter "name file" in "home" page
    Then I should see "editor" element
    And I enter "testing text" in "home" page
    Then I should see "file" element
    And  I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the correctly share to element for email to user don´t register in claro drive
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
    And I click on "share" button from "user" page
    And I enter "target email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the correct share element for email to user in claro drive
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
    And I click on "share" button from "user" page
    And I enter "target user email" in "home" page
    And I click on "sharing confirm" button from "user" page
    Then I should see "target user email" element
    And I stop sharing for "email"
    And I logout

  @p0 @mx @telcel @@chrome @mozilla @safari
  Scenario: Validate the correctly share to element for link
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
    And I click on "share" button from "user" page
    And I click on "config link" button from "user" page
    Then I should see "file shared for link" element
    And I stop sharing for "link"
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the correct function of delete and restore of a file
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
    And I click on "delete" button from "user" page
    And I click on "erased files" button from "user" page
    And I click on "restore" button from "user" page
    Then I should see "file" element
    And I logout

  @p0 @mx @telcel
  Scenario: Validate the page about claro drive
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
    And I click on "about claro drive" button from "user" page
    Then I should see "about claro drive" element
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the page help
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
    And I click on "help" button from "user" page
    Then I should see "help" element
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate the page terms and conditions
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
    And I click on "terms and conditions" button from "user" page
    Then I should see "terms and conditions" element
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate to add a new user to family space
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
    And I click on "family space" button from "user" page
    And I enter "new email" in "home" page
    Then I should see "invitations" element
    And I click on "cancel invitations" button from "user" page
    And I logout
    Then I validate email of "family space" send

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate an upsell in and account within family space
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
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "more space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

  @p0 @mx @telcel @chrome @mozilla @safari
  Scenario: Validate an downsell in and account within family space
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
    And I click on "family space" button from "user" page
    And I click on "edit plan" button from "user" page
    And I enter "less space" in "home" page
    Then I should see "user whitin family space" element
    And I logout

