Feature: Alertas de Nuevas Investigaciones en Medicina Preventiva

  Como usuario
  Quiero recibir alertas sobre nuevas investigaciones y avances en tratamientos preventivos
  Para estar informado de las últimas novedades y ajustar mis prácticas de salud en consecuencia

  Scenario: ES01: Enviar alerta sobre nueva investigación
    Given el usuario está registrado en la plataforma
    And el usuario ha configurado sus preferencias de notificación
    When se publica una nueva investigación relevante en la plataforma
    Then el sistema debe enviar una alerta al usuario
    And la alerta debe incluir un resumen de la investigación y un enlace para más detalles

    Examples:
      | resumen                                      | enlace                        |
      | "Nueva investigación sobre la vitamina D..." | "https://example.com/investigacion1" |
      | "Avances en la prevención del cáncer..."     | "https://example.com/investigacion2" |

  Scenario: ES02: Ajuste de Preferencias de Notificación
    Given el usuario está registrado en la plataforma
    And el usuario ha accedido a la sección de configuración de notificaciones
    When el usuario modifica sus preferencias de notificación para recibir alertas sobre nuevas investigaciones
    Then el sistema debe guardar las nuevas preferencias del usuario
    And el usuario debe recibir una confirmación de que las preferencias han sido actualizadas

    Examples:
      | preferencia                  |
      | "Recibir alertas diarias"    |
      | "Recibir alertas semanales"  |
