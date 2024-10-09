Feature: US05 - Prevención de riesgos

    Scenario: ES01: Notificaciones proactivas de salud 

    Given que soy un <usuario> frecuente 
    And he ingresado datos regularmente sobre mi salud y estilo de vida 
    Then recibiré una <notificacion> push cuando la aplicación detecte un patrón que indique un posible riesgo para mi salud

    Examples:
        | Notificacion |
        | Es posible que seas propenso a diabetes por la cantidad de azucar que consumes diariamente  |

    Scenario: ES02: Predicción proactiva de riesgos 

    Given que es un usuario frecuente 
    And ha ingresado [Datos] regularmente sobre su [Salud] y [Estilo de vida]
    Then recibirá una [notificación] push cuando la aplicación detecte un patrón que indique un posible riesgo para su salud.
    La notificación incluirá una explicación detallada del riesgo y recomendaciones para tomar medidas preventivas y dirá [Has recibido una recomendación nueva] 

    Examples:
        | Historial médico | Notificación |
        | Enfermedad/Condición  | Has recibido una recomendación nueva  |