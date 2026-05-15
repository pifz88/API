# Karate Template

Refer to the [Getting Started Guide](https://github.com/karatelabs/karate/wiki/Get-Started:-Maven-and-Gradle#github-template) for instructions.

    Descripción del Proyecto
Este proyecto contiene un conjunto de pruebas automatizadas 
desarrolladas con Karate Framework, orientadas a validar servicios REST.
Incluye dos módulos principales:

CRUD de Usuarios usando un API tipo JSONPlaceholder.

Consulta de información de Pokémon usando PokeAPI.

    Requisitos de Entorno
Para ejecutar este proyecto necesitas:

Java 8+

Maven 3.6+

Karate Framework (se instala automáticamente vía Maven)

IDE recomendado: IntelliJ IDEA o VS Code

Conexión a Internet (para consumir las APIs públicas)

    Comandos de Ejecución
Ejecutar todas las pruebas
bash
mvn test
Ejecutar un feature específico
bash
mvn test -Dtest=NombreDelFeature
Ejecutar con reporte Cucumber HTML
bash
mvn test -Dkarate.options="--report"

📂 Estructura del Proyecto
Código
src
└── test
      └── java
            └── ejemplo
                   └── pokemon
                         └── pokemon.feature
                         └── pokemonRunner
                   └── reqres
                          └── reqres.feature
                          └── reqresRunner

📄 Escenarios Incluidos
1. reqres
   Crear usuario (POST)
   
   Buscar usuario (GET)

   Actualizar usuario (PUT)

   Eliminar usuario (DELETE)

2. Consultar Pokémon (Código 2)
   Obtener información de Pikachu

   Obtener información de Pichu (con validación incorrecta a propósito)

Rutas de Reportes
Karate genera reportes automáticamente en:

Código
target/karate-reports/
Archivos importantes:

karate-summary.html

karate.log

cucumber-html-reports/ (si está habilitado)

Ejemplos de Código Usado
reqres Usuarios
karate
Scenario: Crear Usuarios
Given path '/posts'
And request {"title":"Hello World","body":"This is a test post.","userId":1}
When method post
Then status 201
PokeAPI
karate
Scenario: Obtener información del Pokémon Pikachu
Given path 'pokemon/pikachu'
When method get
Then status 200
And match response.name == 'pikachu'
