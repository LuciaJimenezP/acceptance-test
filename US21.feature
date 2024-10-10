Feature: Foro de Discusión sobre Tratamientos Complementarios

  Como paciente que sigue un tratamiento médico
  Quiero participar en un foro de discusión
  Para compartir experiencias y aprender de las experiencias de otros

Scenario: ES01: Publicar un mensaje en el foro
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección del foro de discusión
    When el paciente selecciona el <campo> "mensaje", escribe un <mensaje> y selecciona la <opción>: "publica"
    Then el <mensaje> debe aparecer en el <foro>

    Examples: Input
      | "Hola a todos, soy nuevo aquí."| 
      | "¿Alguien ha probado la acupuntura?" |
 Examples: Output
     | "Hola a todos, soy nuevo aquí."  |
     | "¿Alguien ha probado la acupuntura?" |
Scenario: ES02: Responder a un mensaje en el foro
    Given el paciente ha iniciado sesión en la plataforma
    And el paciente ha accedido a la sección del foro de discusión
    And el paciente ha seleccionado un <mensaje> existente
    When el paciente escribe una <respuesta> y la publica
    Then la <respuesta> debe aparecer debajo del <mensaje> original

    Examples: Input
      | "Sí, yo he probado la acupuntura y me ha ayudado mucho." |
      | "Bienvenido al foro, espero que encuentres útil la información aquí." |
    Examples: Output
    | "Sí, yo he probado la acupuntura y me ha ayudado mucho." |
    | "Bienvenido al foro, espero que encuentres útil la información aquí." |
