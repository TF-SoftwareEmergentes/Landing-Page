Feature: Detalle de llamada con transcripción y análisis
  Como agente o supervisor
  Quiero ver el detalle completo de una llamada
  Para revisar la transcripción y el análisis realizado

  Background:
    Given existe una llamada con identificador "CALL-123"
    And la llamada "CALL-123" tiene transcripción y análisis de sentimiento

  Scenario: Visualizar detalle de una llamada específica
    Given el usuario se encuentra en el listado de llamadas
    When el usuario selecciona la llamada con identificador "CALL-123"
    Then el sistema muestra la transcripción completa de la llamada
    And se muestra el sentimiento predominante detectado
    And se muestran las recomendaciones asociadas para la llamada
