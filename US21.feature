Feature: Foro de Discusión sobre Tratamientos Complementarios

  Como paciente que sigue un tratamiento médico
  Quiero participar en un foro de discusión
  Para compartir experiencias y aprender de las experiencias de otros

  Scenario: ES01: Publicar un mensaje en el foro
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección del foro de discusión
    When el paciente escribe un mensaje y lo publica
    Then el mensaje debe aparecer en el foro

    Examples:
      | mensaje                          |
      | "Hola a todos, soy nuevo aquí."  |
      | "¿Alguien ha probado la acupuntura?" |

  Scenario: ES02: Responder a un mensaje en el foro
    Given el paciente ha iniciado sesión en la plataforma
    And el paciente ha accedido a la sección del foro de discusión
    And el paciente ha seleccionado un mensaje existente
    When el paciente escribe una respuesta y la publica
    Then la respuesta debe aparecer debajo del mensaje original

    Examples:
      | respuesta                                |
      | "Sí, yo he probado la acupuntura y me ha ayudado mucho." |
      | "Bienvenido al foro, espero que encuentres útil la información aquí." |
