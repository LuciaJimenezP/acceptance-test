Feature: Respuesta del chatbot ante emergencias

  Como usuario,
  Quiero que el AuraBot pueda proporcionar respuestas inmediatas sobre primeros auxilios en caso de una emergencia,
  Para reaccionar rápidamente.

  Scenario Outline: Provisión de primeros auxilios
    Given que estoy interactuando con el AuraBot,
    When pregunte sobre "<pregunta_emergencia>",
    Then el AuraBot proporcionará pasos detallados a seguir en caso de emergencia,
    And las instrucciones serán claras y concisas.

    Examples:
      | Input                       | Output                                                        |
      | "primeros auxilios"         | Pasos detallados sobre cómo realizar primeros auxilios        |
      | "qué hacer ante un desmayo" | Pasos detallados sobre qué hacer ante un desmayo              |
      | "quemadura leve"            | Pasos detallados para tratar una quemadura leve               |

  Scenario Outline: Detalles adicionales sobre primeros auxilios
    Given que el AuraBot está proporcionando los pasos de primeros auxilios,
    When pregunte sobre "<pregunta_detallada>",
    Then el AuraBot dará una explicación más detallada,
    And proporcionará enlaces a recursos adicionales.

    Examples:
      | Input                                 | Output                                                                          |
      | "cómo hacer RCP"                      | Explicación detallada de cómo realizar RCP, con enlaces adicionales             |
      | "cómo detener una hemorragia"         | Explicación detallada de cómo detener una hemorragia, con enlaces adicionales   |
      | "cómo inmovilizar una fractura"       | Explicación detallada de cómo inmovilizar una fractura, con enlaces adicionales |
