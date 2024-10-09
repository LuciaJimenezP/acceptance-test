Feature: US03 - Creación de recordatorio

    Scenario: ES01: Visualización del calendario 

    Given que el <usuario> se encuentra en el [Inicio] 
    When de click a la sección [Recordatorios] 
    Then se mostrará el [Calendario] donde podrá ver sus futuras 
   
    Examples: INPUT
        | Recordatorios | Calendario |
        | click() | visualización |

    Scenario: ES02: Implementación del recordatorio
    Given que el <usuario> se encuentra en [Recordatorios]
    And visualiza el [Calendario]
    When selecciona el día correspondiente, aparecerá el <boton> [+] para ingresar la [hora] y el [lugar] de la cita médica u hora de tomar el medicamento recetado
    Then aparecerá un <mensaje> de confirmación [¡Tu cita ha sido agendada con éxito!]

    Examples: INPUT
        | Hora | Lugar |
        | 13:00  | Clínica Santa Rosa |

    Examples: OUTPUT
        | ¡Tu cita ha sido agendada con éxito! |