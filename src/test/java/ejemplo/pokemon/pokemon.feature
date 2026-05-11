Feature: Consultar información de un Pokémon usando PokeAPI

  Background:
    * url 'https://pokeapi.co/api/v2'

  Scenario: Obtener información del Pokémon Pikachu
    Given path 'pokemon/pikachu'
    When method get
    Then status 200
    And match response.name == 'pikachu'
    And match response.id == 25
    And match response.types[*].type.name contains 'electric'
