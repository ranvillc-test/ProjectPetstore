Feature: Post API Pet Store

  #3 - Este test se ejecuta despues de haber ejecutado el test del post
  @put
  Scenario: Update name an status existing pet
    Given url "https://petstore.swagger.io/v2/pet"
    And request {"id": 2289,"category": {"id": 741,"name": "Dog"},"name": "Tom","photoUrls": ["https://es.123rf.com/photo_193795284_perro-de-navidad-en-la-ilustraci%C3%B3n-de-color-de-sombrero-de-santa.html?vti=milyke723kl8z19du6-1-4&is_plus=1&origin=1"],"tags": [{"id": 0,"name": "Chiguagua"}],"status": "sold"}
    When method put
    Then status 200
    And print response
    And match $.id == 2289
    And match $.name == 'Tom'
    And match $.status == 'sold'
