Feature: US05 - Prevención de riesgos

    Scenario: ES01: Notificaciones proactivas de salud 

    Given que el usuario se encuentra en la [pantalla de inicio]
    And ya ingresó sus datos personales 
    When acceda a la sección [Recomendaciones] 
    Then se mostrará una lista de requisitos y consejos sobre cómo mejorar su salud. 

    Examples:
        | Header 1 | Header 2 | Header 3 |
        | Value 1  | Value 2  | Value 3  |

    Scenario: ES02: Predicción proactiva de riesgos 

    Given que es un usuario frecuente 
    And ha ingresado [Datos] regularmente sobre su [Salud] y [Estilo de vida]
    Then recibirá una [notificación] push cuando la aplicación detecte un patrón que indique un posible riesgo para su salud.
    La notificación incluirá una explicación detallada del riesgo y recomendaciones para tomar medidas preventivas y dirá [Has recibido una recomendación nueva] 

    Examples:
        | Historial médico | Notificación |
        | Enfermedad/Condición  | Has recibido una recomendación nueva  |