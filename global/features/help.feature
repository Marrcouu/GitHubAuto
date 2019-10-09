Feature: Help page.
    - Validate all the sections,options and contents in Help page since Landing page from Claro drive Massive
    - Validate all the sections,options and contents in Help page since User page from Claro drive Massive partner Telmex
    - Validate all the sections,options and contents in Help page since User page from Claro drive Massive partner Telcel
    - Validate all the sections,options and contents in Help page since Landing page from Claro drive Business
    - Validate all the sections,options and contents in Help page from User page in Claro drive Business


  @chrome @mozilla @safari @edge @ie
  Scenario: Validate all the sections,options and contents in Help page since Landing page from Claro drive massive
    Given I am an "registered" user
    #When I open the page "https://test-portal.clarodrive.com/mexico/help/"
    When I open the app
    When I make click on this "Preguntas Frecuentes" link in the "Claro drive" landing
  #Validación de sección 'Registro e inicio de sesión'
    And I make click on "registration and login" section from "massive"
    Then I validate the options inside "registration and login" section from "massive"
    And I make click on "telmex account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telmex account" in section "registration and login" from "massive"
    And I make click on "telcel account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telcel account" in section "registration and login" from "massive"
    And I make click on "claro video and claro music account" option from "registration and login" in "massive"
    Then I validate the content inside the option "claro video and claro music account" in section "registration and login" from "massive"
    And I make click on "email account" option from "registration and login" in "massive"
    Then I validate the content inside the option "email account" in section "registration and login" from "massive"
    And I make click on "restore password" option from "registration and login" in "massive"
    Then I validate the content inside the option "restore password" in section "registration and login" from "massive"
  #Validación de sección 'Información de pago'
    And I make click on "payment information" section from "massive"
    Then I validate the options inside "payment information" section from "massive"
    And I make click on "payment information" option from "payment information" in "massive"
    Then I validate the content inside the option "payment information" in section "payment information" from "massive" - without tabs
    And I make click on "change of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "change of plan" in section "payment information" from "massive"
    And I make click on "I will lose my files if I cancel my CD subscription?" option from "payment information" in "massive"
    Then I validate the content inside the option "I will lose my files if I cancel my CD subscription?" in section "payment information" from "massive" - without tabs
    And I make click on "cancellation of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "cancellation of plan" in section "payment information" from "massive"
  #Validación de sección '¿Cómo subir Información a Claro drive?'
    And I make click on "how to upload information to Claro drive" section from "massive"
    Then I validate the options inside "how to upload information to Claro drive" section from "massive"
    Then I validate the content inside the option "how to upload information to Claro drive" in section "how to upload information to Claro drive" from "massive"
  #Validación de sección 'Compartir archivos y carpetas'
    And I make click on "share files and folders" section from "massive"
    Then I validate the options inside "share files and folders" section from "massive"
    And I make click on "how do I share files and folders?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how do I share files and folders?" in section "share files and folders" from "massive"
    And I make click on "share by email" option from "share files and folders" in "massive"
    Then I validate the content inside the option "share by email" in section "share files and folders" from "massive" - without tabs
    And I make click on "see shared files" option from "share files and folders" in "massive"
    Then I validate the content inside the option "see shared files" in section "share files and folders" from "massive"
    And I make click on "how can I change the configuration to a link?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how can I change the configuration to a link?" in section "share files and folders" from "massive" - without tabs
  #Validación de sección 'Espacio Familiar'
    And I make click on "family space" section from "massive"
    Then I validate the options inside "family space" section from "massive"
    #Then I validate the content inside the option "family space" in section "family space" from "massive"
    And I make click on "how do I share GB of my plan?" option from "family space" in "massive"
    Then I validate the content inside the option "how do I share GB of my plan?" in section "family space" from "massive"
    And I make click on "status of additional accounts" option from "family space" in "massive"
    Then I validate the content inside the option "status of additional accounts" in section "family space" from "massive"
    And I make click on "modify the space allocated to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "modify the space allocated to a guest" in section "family space" from "massive"
    And I make click on "cancel the space assigned to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "cancel the space assigned to a guest" in section "family space" from "massive"
  #Validación de sección 'Almacenamiento'
    And I make click on "storage" section from "massive"
    Then I validate the options inside "storage" section from "massive"
    And I make click on "current use of storage" option from "storage" in "massive"
    Then I validate the content inside the option "current use of storage" in section "storage" from "massive"
    And I make click on "what information can you see inside your storage?" option from "storage" in "massive"
    Then I validate the content inside the option "what information can you see inside your storage?" in section "storage" from "massive" - without tabs
  #Validación de sección 'Cliente de Escritorio'
    And I make click on "desktop client" section from "massive"
    Then I validate the options inside "desktop client" section from "massive"
    And I make click on "menu bar" option from "desktop client" in "massive"
    Then I validate the content inside the option "menu bar" in section "desktop client" from "massive"
    And I make click on "how to download and install the Claro drive desktop application" option from "desktop client" in "massive"
    Then I validate the content inside the option "how to download and install the Claro drive desktop application" in section "desktop client" from "massive" - without tabs
    And I make click on "force synchronization" option from "desktop client" in "massive"
    Then I validate the content inside the option "force synchronization" in section "desktop client" from "massive"
    And I make click on "button open in clarodrive.com" option from "desktop client" in "massive"
    Then I validate the content inside the option "button open in clarodrive.com" in section "desktop client" from "massive" - without tabs
  #Validación de sección 'Móvil'
    And I make click on "mobile" section from "massive"
    Then I validate the options inside "mobile" section from "massive"
    And I make click on "how can I access my files without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how can I access my files without connection?" in section "mobile" from "massive"
    And I make click on "how do I disable without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how do I disable without connection?" in section "mobile" from "massive"
    And I make click on "sync photos automatically" option from "mobile" in "massive"
    Then I validate the content inside the option "sync photos automatically" in section "mobile" from "massive"
    And I make click on "contact backup" option from "mobile" in "massive"
    Then I validate the content inside the option "contact backup" in section "mobile" from "massive"
  #Validación de sección 'Propiedades de los archivos'
    And I make click on "file properties" section from "massive"
    Then I validate the options inside "file properties" section from "massive"
    And I make click on "file tags" option from "file properties" in "massive"
    Then I validate the content inside the option "file tags" in section "file properties" from "massive"
    And I make click on "version of documents" option from "file properties" in "massive"
    Then I validate the content inside the option "version of documents" in section "file properties" from "massive"
  #Validación de sección 'Administrar Cuenta'
    And I make click on "manage account" section from "massive"
    Then I validate the options inside "manage account" section from "massive"
    And I make click on "account settings" option from "manage account" in "massive"
    Then I validate the content inside the option "account settings" in section "manage account" from "massive"
  #Validación de sección 'Papelera'
    And I make click on "paper bin" section from "massive"
    Then I validate the options inside "paper bin" section from "massive"
    And I make click on "delete a file" option from "paper bin" in "massive"
    Then I validate the content inside the option "delete a file" in section "paper bin" from "massive"
    And I make click on "recover a deleted file" option from "paper bin" in "massive"
    Then I validate the content inside the option "recover a deleted file" in section "paper bin" from "massive"
  #Validación de sección 'Actividad'
    And I make click on "activity" section from "massive"
    Then I validate the options inside "activity" section from "massive"
    Then I validate the content inside the option "activity" in section "activity" from "massive"
  #Validación de sección 'Edición de fotos'
    And I make click on "photo editing" section from "massive"
    Then I validate the options inside "photo editing" section from "massive"
    #And I make click on "edit" option from "photo editing" in "massive"
    #Then I validate the content inside the option "edit" in section "photo editing" from "massive"
    And I make click on "drawing" option from "photo editing" in "massive"
    Then I validate the content inside the option "drawing" in section "photo editing" from "massive"
    And I make click on "text" option from "photo editing" in "massive"
    Then I validate the content inside the option "text" in section "photo editing" from "massive"
    And I make click on "filters" option from "photo editing" in "massive"
    Then I validate the content inside the option "filters" in section "photo editing" from "massive"
    And I make click on "adjust" option from "photo editing" in "massive"
    Then I validate the content inside the option "adjust" in section "photo editing" from "massive"
    And I make click on "stickers" option from "photo editing" in "massive"
    Then I validate the content inside the option "stickers" in section "photo editing" from "massive"
  #Validación de sección 'Escáner'
    And I make click on "scanner" section from "massive"
    Then I validate the options inside "scanner" section from "massive"
    Then I validate the content inside the option "scanner" in section "scanner" from "massive"

  @chrome @mozilla @safari @edge @ie
  Scenario: Validate all the sections,options and contents in Help page since User page from Claro drive massive partner Telmex
    Given I am an "registered" user
    When I open the app
    And I logout if a session is started
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "email" partner option
    Then I should see "login email" page
    And I enter "75" in partner "email" - smoke
    And I click on "next" button from "login email" page
    And I click on "help" button from "user" page
    Then I wait "3"
 #Validación de sección 'Registro e inicio de sesión'
    And Help Page is "User page"
    And I make click on "registration and login" section from "massive"
    Then I validate the options inside "registration and login" section from "massive"
    And I make click on "telmex account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telmex account" in section "registration and login" from "massive"
    And I make click on "telcel account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telcel account" in section "registration and login" from "massive"
    And I make click on "claro video and claro music account" option from "registration and login" in "massive"
    Then I validate the content inside the option "claro video and claro music account" in section "registration and login" from "massive"
    And I make click on "email account" option from "registration and login" in "massive"
    Then I validate the content inside the option "email account" in section "registration and login" from "massive"
    And I make click on "restore password" option from "registration and login" in "massive"
    Then I validate the content inside the option "restore password" in section "registration and login" from "massive"
  #Validación de sección 'Información de pago'
    And I make click on "payment information" section from "massive"
    Then I validate the options inside "payment information" section from "massive"
    And I make click on "payment information" option from "payment information" in "massive"
    Then I validate the content inside the option "payment information" in section "payment information" from "massive" - without tabs
    And I make click on "change of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "change of plan" in section "payment information" from "massive"
    And I make click on "I will lose my files if I cancel my CD subscription?" option from "payment information" in "massive"
    Then I validate the content inside the option "I will lose my files if I cancel my CD subscription?" in section "payment information" from "massive" - without tabs
    And I make click on "cancellation of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "cancellation of plan" in section "payment information" from "massive"
  #Validación de sección '¿Cómo subir Información a Claro drive?'
    And I make click on "how to upload information to Claro drive" section from "massive"
    Then I validate the options inside "how to upload information to Claro drive" section from "massive"
    Then I validate the content inside the option "how to upload information to Claro drive" in section "how to upload information to Claro drive" from "massive"
  #Validación de sección 'Compartir archivos y carpetas'
    And I make click on "share files and folders" section from "massive"
    Then I validate the options inside "share files and folders" section from "massive"
    And I make click on "how do I share files and folders?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how do I share files and folders?" in section "share files and folders" from "massive"
    And I make click on "share by email" option from "share files and folders" in "massive"
    Then I validate the content inside the option "share by email" in section "share files and folders" from "massive" - without tabs
    And I make click on "see shared files" option from "share files and folders" in "massive"
    Then I validate the content inside the option "see shared files" in section "share files and folders" from "massive"
    And I make click on "how can I change the configuration to a link?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how can I change the configuration to a link?" in section "share files and folders" from "massive" - without tabs
  #Validación de sección 'Espacio Familiar'
    And I make click on "family space" section from "massive"
    Then I validate the options inside "family space" section from "massive"
    And I make click on "how do I share GB of my plan?" option from "family space" in "massive"
    Then I validate the content inside the option "how do I share GB of my plan?" in section "family space" from "massive"
    And I make click on "status of additional accounts" option from "family space" in "massive"
    Then I validate the content inside the option "status of additional accounts" in section "family space" from "massive"
    And I make click on "modify the space allocated to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "modify the space allocated to a guest" in section "family space" from "massive"
    And I make click on "cancel the space assigned to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "cancel the space assigned to a guest" in section "family space" from "massive"
    And I make click on "leave the family space" option from "family space" in "massive"
    Then I validate the content inside the option "leave the family space" in section "family space" from "massive"
  #Validación de sección 'Almacenamiento'
    And I make click on "storage" section from "massive"
    Then I validate the options inside "storage" section from "massive"
    And I make click on "current use of storage" option from "storage" in "massive"
    Then I validate the content inside the option "current use of storage" in section "storage" from "massive"
    And I make click on "what information can you see inside your storage?" option from "storage" in "massive"
    Then I validate the content inside the option "what information can you see inside your storage?" in section "storage" from "massive" - without tabs
  #Validación de sección 'Cliente de Escritorio'
    And I make click on "desktop client" section from "massive"
    Then I validate the options inside "desktop client" section from "massive"
    And I make click on "menu bar" option from "desktop client" in "massive"
    Then I validate the content inside the option "menu bar" in section "desktop client" from "massive"
    And I make click on "how to download and install the Claro drive desktop application" option from "desktop client" in "massive"
    Then I validate the content inside the option "how to download and install the Claro drive desktop application" in section "desktop client" from "massive" - without tabs
    And I make click on "force synchronization" option from "desktop client" in "massive"
    Then I validate the content inside the option "force synchronization" in section "desktop client" from "massive"
    And I make click on "button open in clarodrive.com" option from "desktop client" in "massive"
    Then I validate the content inside the option "button open in clarodrive.com" in section "desktop client" from "massive" - without tabs
  #Validación de sección 'Móvil'
    And I make click on "mobile" section from "massive"
    Then I validate the options inside "mobile" section from "massive"
    And I make click on "how can I access my files without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how can I access my files without connection?" in section "mobile" from "massive"
    And I make click on "how do I disable without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how do I disable without connection?" in section "mobile" from "massive"
    And I make click on "sync photos automatically" option from "mobile" in "massive"
    Then I validate the content inside the option "sync photos automatically" in section "mobile" from "massive"
    And I make click on "contact backup" option from "mobile" in "massive"
    Then I validate the content inside the option "contact backup" in section "mobile" from "massive"
  #Validación de sección 'Propiedades de los archivos'
    And I make click on "file properties" section from "massive"
    Then I validate the options inside "file properties" section from "massive"
    And I make click on "file tags" option from "file properties" in "massive"
    Then I validate the content inside the option "file tags" in section "file properties" from "massive"
    And I make click on "version of documents" option from "file properties" in "massive"
    Then I validate the content inside the option "version of documents" in section "file properties" from "massive"
  #Validación de sección 'Administrar Cuenta'
    And I make click on "manage account" section from "massive"
    Then I validate the options inside "manage account" section from "massive"
    And I make click on "account settings" option from "manage account" in "massive"
    Then I validate the content inside the option "account settings" in section "manage account" from "massive"
  #Validación de sección 'Papelera'
    And I make click on "paper bin" section from "massive"
    Then I validate the options inside "paper bin" section from "massive"
    And I make click on "delete a file" option from "paper bin" in "massive"
    Then I validate the content inside the option "delete a file" in section "paper bin" from "massive"
    And I make click on "recover a deleted file" option from "paper bin" in "massive"
    Then I validate the content inside the option "recover a deleted file" in section "paper bin" from "massive"
  #Validación de sección 'Actividad'
    And I make click on "activity" section from "massive"
    Then I validate the options inside "activity" section from "massive"
    Then I validate the content inside the option "activity" in section "activity" from "massive"
  #Validación de sección 'Edición de fotos'
    And I make click on "photo editing" section from "massive"
    Then I validate the options inside "photo editing" section from "massive"
    And I make click on "edit" option from "photo editing" in "massive"
    Then I validate the content inside the option "edit" in section "photo editing" from "massive"
    And I make click on "drawing" option from "photo editing" in "massive"
    Then I validate the content inside the option "drawing" in section "photo editing" from "massive"
    And I make click on "text" option from "photo editing" in "massive"
    Then I validate the content inside the option "text" in section "photo editing" from "massive"
    And I make click on "filters" option from "photo editing" in "massive"
    Then I validate the content inside the option "filters" in section "photo editing" from "massive"
    And I make click on "adjust" option from "photo editing" in "massive"
    Then I validate the content inside the option "adjust" in section "photo editing" from "massive"
    And I make click on "stickers" option from "photo editing" in "massive"
    Then I validate the content inside the option "stickers" in section "photo editing" from "massive"
  #Validación de sección 'Escáner'
    And I make click on "scanner" section from "massive"
    Then I validate the options inside "scanner" section from "massive"
    Then I validate the content inside the option "scanner" in section "scanner" from "massive"

  @chrome @mozilla @safari @edge @ie
  Scenario: Validate all the sections,options and contents in Help page since User page from Claro drive massive partner Telcel
    Given I am an "registered" user
    When I open the app
    And I click on "login" button from "home" page
    Then I should see "partners" page
    And I click on "telcel" partner option
    Then I should see "login telcel" page
    And I enter "25" in partner "telcel" - smoke
    And I click on "next" button from "login telcel" page
    And I get the password from mobile device
    And I enter "correct password" in partner "login telcel"
    And I click on "continue" button from "login telcel" page
    And I click on "help" button from "user" page
    And I wait "3"
  #Validación de sección 'Registro e inicio de sesión'
    And Help Page is "User page"
    And I make click on "registration and login" section from "massive"
    Then I validate the options inside "registration and login" section from "massive"
    And I make click on "telmex account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telmex account" in section "registration and login" from "massive"
    And I make click on "telcel account" option from "registration and login" in "massive"
    Then I validate the content inside the option "telcel account" in section "registration and login" from "massive"
    And I make click on "claro video and claro music account" option from "registration and login" in "massive"
    Then I validate the content inside the option "claro video and claro music account" in section "registration and login" from "massive"
    And I make click on "email account" option from "registration and login" in "massive"
    Then I validate the content inside the option "email account" in section "registration and login" from "massive"
    And I make click on "restore password" option from "registration and login" in "massive"
    Then I validate the content inside the option "restore password" in section "registration and login" from "massive"
  #Validación de sección 'Información de pago'
    And I make click on "payment information" section from "massive"
    Then I validate the options inside "payment information" section from "massive"
    And I make click on "payment information" option from "payment information" in "massive"
    Then I validate the content inside the option "payment information" in section "payment information" from "massive" - without tabs
    And I make click on "change of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "change of plan" in section "payment information" from "massive"
    And I make click on "I will lose my files if I cancel my CD subscription?" option from "payment information" in "massive"
    Then I validate the content inside the option "I will lose my files if I cancel my CD subscription?" in section "payment information" from "massive" - without tabs
    And I make click on "cancellation of plan" option from "payment information" in "massive"
    Then I validate the content inside the option "cancellation of plan" in section "payment information" from "massive"
  #Validación de sección '¿Cómo subir Información a Claro drive?'
    And I make click on "how to upload information to Claro drive" section from "massive"
    Then I validate the options inside "how to upload information to Claro drive" section from "massive"
    Then I validate the content inside the option "how to upload information to Claro drive" in section "how to upload information to Claro drive" from "massive"
  #Validación de sección 'Compartir archivos y carpetas'
    And I make click on "share files and folders" section from "massive"
    Then I validate the options inside "share files and folders" section from "massive"
    And I make click on "how do I share files and folders?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how do I share files and folders?" in section "share files and folders" from "massive"
    And I make click on "share by email" option from "share files and folders" in "massive"
    Then I validate the content inside the option "share by email" in section "share files and folders" from "massive" - without tabs
    And I make click on "see shared files" option from "share files and folders" in "massive"
    Then I validate the content inside the option "see shared files" in section "share files and folders" from "massive"
    And I make click on "how can I change the configuration to a link?" option from "share files and folders" in "massive"
    Then I validate the content inside the option "how can I change the configuration to a link?" in section "share files and folders" from "massive" - without tabs
  #Validación de sección 'Espacio Familiar'
    And I make click on "family space" section from "massive"
    Then I validate the options inside "family space" section from "massive"
    And I make click on "how do I share GB of my plan?" option from "family space" in "massive"
    Then I validate the content inside the option "how do I share GB of my plan?" in section "family space" from "massive"
    And I make click on "status of additional accounts" option from "family space" in "massive"
    Then I validate the content inside the option "status of additional accounts" in section "family space" from "massive"
    And I make click on "modify the space allocated to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "modify the space allocated to a guest" in section "family space" from "massive"
    And I make click on "cancel the space assigned to a guest" option from "family space" in "massive"
    Then I validate the content inside the option "cancel the space assigned to a guest" in section "family space" from "massive"
    And I make click on "leave the family space" option from "family space" in "massive"
    Then I validate the content inside the option "leave the family space" in section "family space" from "massive"
  #Validación de sección 'Almacenamiento'
    And I make click on "storage" section from "massive"
    Then I validate the options inside "storage" section from "massive"
    And I make click on "current use of storage" option from "storage" in "massive"
    Then I validate the content inside the option "current use of storage" in section "storage" from "massive"
    And I make click on "what information can you see inside your storage?" option from "storage" in "massive"
    Then I validate the content inside the option "what information can you see inside your storage?" in section "storage" from "massive" - without tabs
  #Validación de sección 'Cliente de Escritorio'
    And I make click on "desktop client" section from "massive"
    Then I validate the options inside "desktop client" section from "massive"
    And I make click on "menu bar" option from "desktop client" in "massive"
    Then I validate the content inside the option "menu bar" in section "desktop client" from "massive"
    And I make click on "how to download and install the Claro drive desktop application" option from "desktop client" in "massive"
    Then I validate the content inside the option "how to download and install the Claro drive desktop application" in section "desktop client" from "massive" - without tabs
    And I make click on "force synchronization" option from "desktop client" in "massive"
    Then I validate the content inside the option "force synchronization" in section "desktop client" from "massive"
    And I make click on "button open in clarodrive.com" option from "desktop client" in "massive"
    Then I validate the content inside the option "button open in clarodrive.com" in section "desktop client" from "massive" - without tabs
  #Validación de sección 'Móvil'
    And I make click on "mobile" section from "massive"
    Then I validate the options inside "mobile" section from "massive"
    And I make click on "how can I access my files without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how can I access my files without connection?" in section "mobile" from "massive"
    And I make click on "how do I disable without connection?" option from "mobile" in "massive"
    Then I validate the content inside the option "how do I disable without connection?" in section "mobile" from "massive"
    And I make click on "sync photos automatically" option from "mobile" in "massive"
    Then I validate the content inside the option "sync photos automatically" in section "mobile" from "massive"
    And I make click on "contact backup" option from "mobile" in "massive"
    Then I validate the content inside the option "contact backup" in section "mobile" from "massive"
  #Validación de sección 'Propiedades de los archivos'
    And I make click on "file properties" section from "massive"
    Then I validate the options inside "file properties" section from "massive"
    And I make click on "file tags" option from "file properties" in "massive"
    Then I validate the content inside the option "file tags" in section "file properties" from "massive"
    And I make click on "version of documents" option from "file properties" in "massive"
    Then I validate the content inside the option "version of documents" in section "file properties" from "massive"
  #Validación de sección 'Administrar Cuenta'
    And I make click on "manage account" section from "massive"
    Then I validate the options inside "manage account" section from "massive"
    And I make click on "account settings" option from "manage account" in "massive"
    Then I validate the content inside the option "account settings" in section "manage account" from "massive"
  #Validación de sección 'Papelera'
    And I make click on "paper bin" section from "massive"
    Then I validate the options inside "paper bin" section from "massive"
    And I make click on "delete a file" option from "paper bin" in "massive"
    Then I validate the content inside the option "delete a file" in section "paper bin" from "massive"
    And I make click on "recover a deleted file" option from "paper bin" in "massive"
    Then I validate the content inside the option "recover a deleted file" in section "paper bin" from "massive"
  #Validación de sección 'Actividad'
    And I make click on "activity" section from "massive"
    Then I validate the options inside "activity" section from "massive"
    Then I validate the content inside the option "activity" in section "activity" from "massive"
  #Validación de sección 'Edición de fotos'
    And I make click on "photo editing" section from "massive"
    Then I validate the options inside "photo editing" section from "massive"
    And I make click on "edit" option from "photo editing" in "massive"
    Then I validate the content inside the option "edit" in section "photo editing" from "massive"
    And I make click on "drawing" option from "photo editing" in "massive"
    Then I validate the content inside the option "drawing" in section "photo editing" from "massive"
    And I make click on "text" option from "photo editing" in "massive"
    Then I validate the content inside the option "text" in section "photo editing" from "massive"
    And I make click on "filters" option from "photo editing" in "massive"
    Then I validate the content inside the option "filters" in section "photo editing" from "massive"
    And I make click on "adjust" option from "photo editing" in "massive"
    Then I validate the content inside the option "adjust" in section "photo editing" from "massive"
    And I make click on "stickers" option from "photo editing" in "massive"
    Then I validate the content inside the option "stickers" in section "photo editing" from "massive"
  #Validación de sección 'Escáner'
    And I make click on "scanner" section from "massive"
    Then I validate the options inside "scanner" section from "massive"
    Then I validate the content inside the option "scanner" in section "scanner" from "massive"


    ### Validación Claro drive Negocio


  @chrome @mozilla @safari @edge @ie
  Scenario: Validate all the sections,options and contents in Help page since Landing page from Claro drive business
    Given I am an "registered" user
    When I open the app
    When I make click on this "Negocio" link in the "Claro drive" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro negocio" landing
  #Validación de sección 'Plan de intercambio'
    And I make click on "exchange plan" section from "business"
    Then I validate the options inside "exchange plan" section from "business"
    And I make click on "upsell downsell" option from "exchange plan" in "business"
    Then I validate the content inside the option "upsell downsell" in section "exchange plan" from "business" - without tabs
  #Validación de sección 'Contratar subscripción'
    And I make click on "contract subscription" section from "business"
    Then I validate the content inside the option "contract subscription" in section "contract subscription" from "business" - without tabs
  #Validación de sección 'Administrar licencias'
    And I make click on "manage licenses" section from "business"
    Then I validate the options inside "manage licenses" section from "business"
    And I make click on "assign licenses" option from "manage licenses" in "business"
    Then I validate the content inside the option "assign licenses" in section "manage licenses" from "business" - without tabs
    And I make click on "enable and disable user" option from "manage licenses" in "business"
    Then I validate the content inside the option "enable and disable user" in section "manage licenses" from "business" - without tabs
    And I make click on "delete user" option from "manage licenses" in "business"
    Then I validate the content inside the option "delete user" in section "manage licenses" from "business" - without tabs
    And I make click on "change resource limits" option from "manage licenses" in "business"
    Then I validate the content inside the option "change resource limits" in section "manage licenses" from "business" - without tabs
    And I make click on "upgrade" option from "manage licenses" in "business"
    Then I validate the content inside the option "upgrade" in section "manage licenses" from "business" - without tabs
    And I make click on "downgrade" option from "manage licenses" in "business"
    Then I validate the content inside the option "downgrade" in section "manage licenses" from "business" - without tabs
    And I make click on "graphics" option from "manage licenses" in "business"
    Then I validate the content inside the option "graphics" in section "manage licenses" from "business" - without tabs

  @chrome @mozilla @safari @edge @ie
  Scenario: Validate all the sections,options and contents in Help page from User page in Claro drive business
    Given I am an "registered" user
    When I open the app
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I enter "1000" in partner "business" - smoke
    #And I click on "show" button from "login email" page
    And I click on "next" button from "login email" page
    And I click on "help" button from "user" page
    And Help Page is "User page"
  #Validación de sección 'Plan de intercambio'
    And I make click on "exchange plan" section from "business"
    Then I validate the options inside "exchange plan" section from "business"
    And I make click on "upsell downsell" option from "exchange plan" in "business"
    Then I validate the content inside the option "upsell downsell" in section "exchange plan" from "business" - without tabs
  #Validación de sección 'Contratar subscripción'
    And I make click on "contract subscription" section from "business"
    Then I validate the content inside the option "contract subscription" in section "contract subscription" from "business" - without tabs
  #Validación de sección 'Administrar licencias'
    And I make click on "manage licenses" section from "business"
    Then I validate the options inside "manage licenses" section from "business"
    And I make click on "assign licenses" option from "manage licenses" in "business"
    Then I validate the content inside the option "assign licenses" in section "manage licenses" from "business" - without tabs
    And I make click on "enable and disable user" option from "manage licenses" in "business"
    Then I validate the content inside the option "enable and disable user" in section "manage licenses" from "business" - without tabs
    And I make click on "delete user" option from "manage licenses" in "business"
    Then I validate the content inside the option "delete user" in section "manage licenses" from "business" - without tabs
    And I make click on "change resource limits" option from "manage licenses" in "business"
    Then I validate the content inside the option "change resource limits" in section "manage licenses" from "business" - without tabs
    And I make click on "upgrade" option from "manage licenses" in "business"
    Then I validate the content inside the option "upgrade" in section "manage licenses" from "business" - without tabs
    And I make click on "downgrade" option from "manage licenses" in "business"
    Then I validate the content inside the option "downgrade" in section "manage licenses" from "business" - without tabs
    And I make click on "graphics" option from "manage licenses" in "business"
    Then I validate the content inside the option "graphics" in section "manage licenses" from "business" - without tabs