Feature: Crear usuario y eliminacion de usuario

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Crear Usuarios
    Given path '/posts'
    And request {"title":"Hello World","body":"This is a test post.","userId":1}
    When method post
    Then status 201

  Scenario: Buscar Usuarios
    Given path '/posts/1'
    When method get
    Then status 200

  Scenario: Actualizar Datos de Usuarios
    Given path '/posts/1'
    And request {"id":1,"title":"Updated Title","body":"Updated body content.","userId":1}
    When method put
    Then status 200

  Scenario: Eliminacion Usuarios
    Given path '/posts/1'
    And request  {"id":1,"title":"Updated Title","body":"Updated body content.","userId":1}
#  {"title":"Hello World","body":"This is a test post.","userId":1}
    When method delete
    Then status 200


