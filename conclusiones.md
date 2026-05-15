
}🧭 Objetivo general
El propósito de estas pruebas fue validar dos tipos de funcionalidades API mediante Karate DSL:

Operaciones CRUD sobre un endpoint tipo /posts.

Consultas a la API pública PokeAPI para verificar datos de Pokémon.

Análisis de los escenarios ejecutados
Reqres de Usuarios (simulación con /posts)
Los escenarios cubren correctamente el ciclo completo de operaciones básicas:

Creación (POST): Se valida el retorno 201, lo cual confirma que el recurso fue creado exitosamente.

Consulta (GET): La respuesta 200 indica que el recurso existe y es accesible.

Actualización (PUT): El código 200 confirma que el recurso fue modificado correctamente.

Eliminación (DELETE): La API responde 200, lo que indica que la eliminación fue procesada.

    Hallazgos relevantes:

El escenario DELETE incluye un body que no es necesario en la mayoría de APIs REST.

La estructura de los escenarios es consistente y clara.

    Consultas a PokeAPI
Los escenarios consultan información real desde un servicio externo.

Pikachu: La validación del nombre, id y tipo es correcta y coincide con los datos reales de la API.

Pichu: El escenario contiene una validación incorrecta (response.name == 'pikachu'), lo cual genera un fallo esperado.

    Hallazgos relevantes:

La API responde rápidamente y con datos consistentes.

El fallo en el escenario de Pichu sirve como ejemplo útil de validación negativa.

    Problemas detectados
Validación incorrecta en el escenario de Pichu:
Se espera que el nombre sea pikachu, lo cual es incorrecto.
Este error puede ser intencional para demostrar detección de fallos.

Uso de body en DELETE:
Aunque no rompe la ejecución, no es una práctica estándar y podría eliminarse.

    Decisiones tomadas
Mantener el escenario fallido de Pichu para mostrar cómo Karate detecta inconsistencias.

Documentar el uso innecesario del body en DELETE para que pueda corregirse según la API real.

Unificar estilo y estructura de los escenarios para facilitar mantenimiento futuro.

Mantener los escenarios CRUD simples y directos, ya que funcionan como pruebas de demostración.

    Conclusión general
Las pruebas cumplen su objetivo:

Validan correctamente operaciones CRUD simuladas.

Verifican datos reales desde una API pública.

Detectan errores de validación cuando corresponden.

El conjunto de escenarios es adecuado como base para un proyecto de pruebas automatizadas con Karate DSL y puede ampliarse fácilmente para cubrir más casos.
