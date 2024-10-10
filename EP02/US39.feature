Feature: Ajuste de interfaz según accesibilidad

  Como usuario con discapacidades visuales,
  Quiero poder ajustar la interfaz de la aplicación para que sea más accesible,
  Aumentando el tamaño de letra y el contraste.

  Scenario Outline: Ajuste de tamaño de texto y contraste
    Given que estoy en la configuración de accesibilidad,
    When elija las opciones de "<contraste>" y "<tamaño_de_texto>",
    Then la interfaz se ajustará en consecuencia,
    And se mantendrá esta configuración en todas las secciones.

    Examples:
      | Input                        | Output                                           |
      | Contraste alto, Texto grande | La interfaz tiene alto contraste y texto grande  |
      | Contraste bajo, Texto mediano| La interfaz tiene bajo contraste y texto mediano |
      | Contraste alto, Texto pequeño| La interfaz tiene alto contraste y texto pequeño |

  Scenario Outline: Navegación accesible
    Given que activé el tamaño de texto "<tamaño_de_texto>",
    When navegue por las diferentes secciones de la aplicación,
    Then todos los textos deberán verse con el tamaño más grande seleccionado,
    And no habrá errores de visualización.

    Examples:
      | Input         | Output                                                                     |
      | Texto grande  | Todos los textos visibles con tamaño grande, sin errores de visualización  |
      | Texto mediano | Todos los textos visibles con tamaño mediano, sin errores de visualización |
      | Texto pequeño | Todos los textos visibles con tamaño pequeño, sin errores de visualización |