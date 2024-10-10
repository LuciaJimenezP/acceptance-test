Feature: Verificación de la dirección de correo electrónico

  Como usuario nuevo,
  Quiero recibir un correo de verificación después de registrarme,
  Para asegurarme de que mi cuenta está asociada correctamente a mi dirección de correo electrónico.

  Scenario Outline: Envío de correo de verificación
    Given que he completado el registro,
    When ingreso mi correo electrónico "<correo_electrónico>",
    Then recibiré un enlace de verificación en mi bandeja de entrada,
    And el correo llegará dentro de unos minutos.

    Examples:
      | Input                    |  Output                                    |
      | user1@example.com        | Enlace enviado a bandeja de entrada        |
      | user2@domain.org         | Enlace enviado a bandeja de entrada        |
      | usuario.prueba@correo.pe | Enlace enviado a bandeja de entrada        |

  Scenario Outline: Verificación exitosa
    Given que he recibido el correo de verificación,
    When hago clic en el enlace de verificación,
    Then mi cuenta quedará verificada,
    And podré acceder a todas las funcionalidades de la plataforma.

    Examples:
      | Input                   | Output                   |
      | user1@example.com       | Cuenta verificada        |
      | user2@domain.org        | Cuenta verificada        |
      | usuario.prueba@correo.pe| Error en la verificación |
      
