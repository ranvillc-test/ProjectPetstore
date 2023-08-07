Feature: Post API Pet Store

  #2 - Este test se ejecuta en cualquier momento
  @get_find_name
  Scenario:  Finds Pet by id
    * call read("../testpost/post.feature@post")
    Given url "https://petstore.swagger.io/v2/pet/"+ Id
    When method get
    Then status 200
    And print response
    And match $.id == 2289

  #4 - Este test se ejecuta despues de haber ejecutado el test del put
  @get_find_status
  Scenario:  Finds Pet by status
    Given url "https://petstore.swagger.io/v2/pet/findByStatus?status=sold"
    When method get
    Then status 200
    And print response
