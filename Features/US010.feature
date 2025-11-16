Feature: Recomendaciones personalizadas por llamada
  Como agente
  Quiero recibir sugerencias específicas basadas en el análisis de cada llamada
  Para mejorar mi efectividad en futuras interacciones

  Background:
    Given existe una llamada de un cliente estresado con identificador "CALL-200"
    And el sistema ha analizado la llamada "CALL-200" y detectado un sentimiento "Negativo"

  Scenario: Mostrar recomendaciones al revisar una llamada compleja
    Given el agente abre el detalle de la llamada "CALL-200"
    When el sistema carga el análisis de la llamada
    Then se muestran recomendaciones contextuales para manejar clientes estresados
    And las recomendaciones incluyen al menos una técnica de desescalamiento
    And las recomendaciones se muestran en una sección llamada "Sugerencias del sistema"
