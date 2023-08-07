#1 - Este test de creacion se ejecuta de primero
Feature: Post API Pet Store

  @post
  Scenario:  Add a new pet to the  store
    Given url "https://petstore.swagger.io/v2/pet"
    And request {"id": 2289,"category": {"id": 741,"name": "Dog"},"name": "pluto","photoUrls": ["https://es.123rf.com/photo_193795284_perro-de-navidad-en-la-ilustraci%C3%B3n-de-color-de-sombrero-de-santa.html?vti=milyke723kl8z19du6-1-4&is_plus=1&origin=1"],"tags": [{"id": 0,"name": "Chiguagua"}],"status": "available"}
    When method post
    Then status 200
    And print response
    And def Id = $.id
