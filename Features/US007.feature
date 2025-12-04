Feature: Dashboard principal de métricas
  Como supervisor de cobranza
  Quiero ver un dashboard con métricas generales del desempeño
  Para tomar decisiones informadas sobre mi equipo

  Background:
    Given el usuario "supervisor1" está autenticado en el sistema
    And existe al menos una campaña con llamadas analizadas

  Scenario: Visualizar métricas generales en el dashboard
    Given el supervisor se encuentra en la página "Dashboard"
    When el sistema carga las métricas del periodo actual
    Then el dashboard muestra el número total de llamadas procesadas
    And se muestra la distribución de sentimientos por tipo (positivo, neutro, negativo)
    And se muestra el promedio de efectividad del equipo

  Scenario: Actualizar métricas al cambiar de periodo
    Given el supervisor se encuentra en la página "Dashboard"
    And el periodo seleccionado es "Esta semana"
    When el supervisor cambia el periodo a "Este mes"
    Then el sistema actualiza las métricas del dashboard al nuevo periodo
    And los valores mostrados corresponden a las llamadas del mes actual
