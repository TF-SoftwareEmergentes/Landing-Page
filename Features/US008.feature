Feature: Filtros de búsqueda por sentimiento
  Como supervisor
  Quiero filtrar las llamadas por tipo de sentimiento
  Para analizar patrones específicos en mi equipo

  Background:
    Given el usuario "supervisor1" está autenticado
    And existen llamadas analizadas con distintos tipos de sentimiento

  Scenario: Filtrar llamadas por sentimiento negativo
    Given el supervisor se encuentra en la vista "Listado de llamadas"
    When el supervisor selecciona el filtro de sentimiento "Negativo"
    And aplica el filtro
    Then el sistema muestra solo las llamadas clasificadas con sentimiento "Negativo"
    And el total de resultados coincide con el filtro aplicado

  Scenario: Limpiar filtros de búsqueda
    Given el supervisor aplicó el filtro de sentimiento "Positivo"
    When el supervisor presiona el botón "Limpiar filtros"
    Then el sistema muestra nuevamente todas las llamadas sin filtros aplicados
