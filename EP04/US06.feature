Feature: Consultar calendario

    Como usuario, quiero visualizar mis recordatorios en un calendario de manera clara y organizada,
    para obtener una visión general de todos mis eventos de salud próximos.

    Scenario Outline: Visualización de calendario
    Give que el <usuario> ha ingresado a la <seccion> "Recordatorios", 
    When selecciona la <opcion> de "Ver calendario", 
    Then se mostrará un <calendario> que organiza todos los recordatorios de salud del usuario, 
    con las fechas resaltadas según la proximidad de los eventos. 

    Examples: Input
      | usuario | seccion | opcion |
      | Alessandro | "Recordatorios" | "Ver Calendario" |

    Examples: Output
      | calendario |
      | Cita medica - 10/03/24 |

    Scenario Outline: Cambio de vista del calendario
    Given que el <usuario> está visualizando el calendario de recordatorios, 
    When elige cambiar la <vista> entre mes, semana o día,
    Then el calendario se actualizará para <mostrar> los recordatorios en la vista seleccionada, 
    And mantendrá la claridad en la visualización de los eventos. 

    Examples: Input
      | usuario | vista | 
      | Alessandro | Julio, 2 - 8 julio y 10 julio|
                                
    Examples: Output
      | mostrar |
      |    Vista mensual de los recordatorios   |
      |    Vista semanal de los recordatorios   |
      |    Vista diaria de los recordatorios    |
