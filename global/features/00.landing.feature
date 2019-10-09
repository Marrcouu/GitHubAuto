Feature: Landing
  Validate of all elements in the landing page of Claro drive.
  Validate of all elements in the landing page of Claro drive Negocio.
  # Claro drive #
  @p0 @mx @chrome @mozilla @safari @edge @ie
    #TC-11458
  Scenario: Validate the link of Claro video in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro video" link in the "Claro drive" landing
    When I make click on this "Claro video" link in the "Claro drive" landing
    And I change to "last" tab2
    Then I should see the "Claro video" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
    #TC-11459
  Scenario: Validate the link of Claro música in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro música" link in the "Claro drive" landing
    When I make click on this "Claro música" link in the "Claro drive" landing
    And I change to "last" tab
   Then I should see the "Claro música" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
    #TC-11460
  Scenario: Validate the link of Claro shop in the header
    Given The Landing page
    When I open the app
    And I should see the "Claro shop" link in the "Claro drive" landing
    When I make click on this "Claro shop" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Claro shop" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
    #TC-11461
  Scenario: Validate the country options in the header
    Given The Landing page
    When I open the app
    And I should see the "Paises" link in the "Claro drive" landing
    When I make click on this "Paises" link in the "Claro drive" landing
    Then I should see all Paises links
    And I make click on this "Country" link in the "Claro drive" landing
    Then I should see the "Colombia" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link of the Claro drive logo in the header
    Given The Landing page
    When I open the app
    And I should see the "Logo Claro drive" link in the "Claro drive" landing
    When I make click on this "Logo Claro drive" link in the "Claro drive" landing
    Then I should see the "Claro drive" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link register of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "registered" link in the "Claro drive" landing
    When I make click on this "registered" link in the "Claro drive" landing
    Then I should see the "registered" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link login of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Inicia sesión" link in the "Claro drive" landing
    When I make click on this "Inicia sesión" link in the "Claro drive" landing
    Then I should see the "Inicia sesión" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descubre of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descubre" link in the "Claro drive" landing
    When I make click on this "Descubre" link in the "Claro drive" landing
    Then I should see the "Descubre" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Comparte of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Comparte" link in the "Claro drive" landing
    When I make click on this "Comparte" link in the "Claro drive" landing
    Then I should see the "Comparte" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Respalda of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Respalda" link in the "Claro drive" landing
    When I make click on this "Respalda" link in the "Claro drive" landing
    Then I should see the "Respalda" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga" link in the "Claro drive" landing
    When I make click on this "Descarga" link in the "Claro drive" landing
    Then I should see the "Descarga" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Opciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Opciones" link in the "Claro drive" landing
    When I make click on this "Opciones" link in the "Claro drive" landing
    Then I should see the "Opciones" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Planes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Planes" link in the "Claro drive" landing
    When I make click on this "Planes" link in the "Claro drive" landing
    Then I should see the "Planes" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    Then I should see the "Negocio" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the button Usa tus 25 Gb of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Boton 25 GB gratis con telcel o telmex" link in the "Claro drive" landing
    When I make click on this "Boton 25 GB gratis con telcel o telmex" link in the "Claro drive" landing
    Then I should see the "registered2" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the button Inicia Sesión of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Boton Inicia sesión" link in the "Claro drive" landing
    When I make click on this "Boton Inicia sesión" link in the "Claro drive" landing
    Then I should see the "Boton Inicia sesión" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Preguntas Frecuentes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Preguntas Frecuentes" link in the "Claro drive" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro drive" landing
    Then I should see the "Preguntas Frecuentes" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Correo Electrónico of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Correo Electrónico" link in the "Claro drive" landing
  @p0 @mx @chrome @mozilla @safari
  Scenario: Validate the link Formas de Pago Telmex of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telmex" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telmex" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telmex" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Formas de Pago Telcel of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago Telcel" link in the "Claro drive" landing
    When I make click on this "Formas de pago Telcel" link in the "Claro drive" landing
    Then I should see the "Formas de pago Telcel" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Formas de Pago TDC of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Formas de pago TDC" link in the "Claro drive" landing
    When I make click on this "Formas de pago TDC" link in the "Claro drive" landing
    Then I should see the "Formas de pago TDC" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Acerca de of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Acerca de" link in the "Claro drive" landing
    When I make click on this "Acerca de" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Acerca de" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Terminos y condiciones of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Terminos y condiciones" link in the "Claro drive" landing
    When I make click on this "Terminos y condiciones" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Terminos y condiciones" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Politica de privacidad of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Politica de privacidad" link in the "Claro drive" landing
    When I make click on this "Politica de privacidad" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Politica de privacidad" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app Android of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app Android" link in the "Claro drive" landing
    When I make click on this "Descarga la app Android" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app Android" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app iOS of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app iOS" link in the "Claro drive" landing
    When I make click on this "Descarga la app iOS" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app iOS" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app Windows / Mac of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Descarga la app" link in the "Claro drive" landing
    When I make click on this "Descarga la app" link in the "Claro drive" landing
    Then I should see the "Descarga la app" page

    # Claro drive Negocio #
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Caracteristicas" link in the "Claro negocio" landing
    Then I should see the "Caracteristicas" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Descarga" link in the "Claro negocio" landing
    Then I should see the "Descarga" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    Then I should see the "Comparar planes" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Claro drive personal" link in the "Claro negocio" landing
    Then I should see the "Claro drive" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio Preguntas Frecuentes of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Preguntas Frecuentes" link in the "Claro negocio" landing
    When I make click on this "Preguntas Frecuentes" link in the "Claro negocio" landing
    Then I should see the "Preguntas Frecuentes" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio Correo Electrónico of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Correo Electrónico" link in the "Claro negocio" landing
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Formas de pago Claro drive Negocio" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Acerca de" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Acerca de" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Terminos y condiciones" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Negocio Terminos y condiciones" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Politica de privacidad" link in the "Claro negocio" landing
    And I change to "last" tab
    Then I should see the "Politica de privacidad" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app Android of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app Android" link in the "Claro drive" landing
    When I make click on this "Descarga la app Android" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app Android" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app iOS of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app iOS" link in the "Claro drive" landing
    When I make click on this "Descarga la app iOS" link in the "Claro drive" landing
    And I change to "last" tab
    Then I should see the "Descarga la app iOS" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Descarga la app Windows / Mac of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I should see the "Descarga la app" link in the "Claro drive" landing
    When I make click on this "Descarga la app" link in the "Claro drive" landing
    Then I should see the "Descarga la app" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Negocio Comienza Ahora" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    And I make click on this "Obtener 250Gb" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page
  @p0 @mx @chrome @mozilla @safari @edge @ie
  Scenario: Validate the link Negocio of the Claro drive
    Given The Landing page
    When I open the app
    And I should see the "Negocio" link in the "Claro drive" landing
    When I make click on this "Negocio" link in the "Claro drive" landing
    And I make click on this "Comparar planes" link in the "Claro negocio" landing
    And I make click on this "Obtener 1Tb" link in the "Claro negocio" landing
    Then I should see the "Telmex Negocio" page