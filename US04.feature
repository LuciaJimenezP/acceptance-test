Feature: US04 - Obtener una recomendación personalizada

    Scenario: ES01: Sección recomendaciones 

    Given que el usuario se encuentra en la [pantalla de inicio]
    And ya ingresó sus datos personales 
    When acceda a la sección [Recomendaciones] 
    Then se mostrará una lista de requisitos y consejos sobre cómo mejorar su salud. 

    Examples:
        | Header 1 | Header 2 | Header 3 |
        | Value 1  | Value 2  | Value 3  |