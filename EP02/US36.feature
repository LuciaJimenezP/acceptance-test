Feature: Ajuste automático de idioma basado en ubicación

  Como usuario que viaja frecuentemente,
  Quiero que la aplicación ajuste automáticamente el idioma según mi ubicación actual,
  Para facilitar el uso mientras viajo.

  Scenario Outline: Cambio automático de idioma
    Given que he permitido el acceso a mi ubicación,
    When viaje a un país con un idioma diferente "<idioma_destino>",
    Then la aplicación cambiará automáticamente al idioma local,
    And el cambio será instantáneo.

    Examples:
      | Input          | Output                                      |
      | "Francia"      | Aplicación cambia automáticamente a francés |
      | "Alemania"     | Aplicación cambia automáticamente a alemán  |
      | "Japón"        | Aplicación cambia automáticamente a japonés |

  Scenario Outline: Restaurar idioma preferido
    Given que el idioma se ha cambiado automáticamente,
    When vuelva a mi país de origen "<idioma_origen>",
    Then el idioma regresará automáticamente a mi idioma preferido,
    And no tendré que ajustar nada manualmente.

    Examples:
      | Input            | Output                                     |
      | "España"         | Idioma cambia automáticamente a español    |
      | "Estados Unidos" | Idioma cambia automáticamente a inglés     |
      | "Brasil"         | Idioma cambia automáticamente a portugués  |
