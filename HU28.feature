Feature: Personalización de temas visuales

    Como usuario
    Quiero poder alternar entre un modo claro y un modo oscuro
    Para que pueda elegir la configuración que sea más cómoda para mis ojos según la iluminación de mi entorno y así mejorar mi experiencia de uso

Scenario: ES1: Alternar a modo oscuro
Given el <usuario> está en la página [Configuración] de la plataforma,
When el <usuario> selecciona la opción "<Modo Oscuro>",
Then el tema visual de la plataforma debe cambiar inmediatamente al modo oscuro, adaptando todos los elementos de la interfaz a una paleta de colores adecuada para baja luminosidad.

Examples: INPUT
    | Acción realizada         |
    | Selecciona "Modo Oscuro" |

Examples: OUTPUT
    | Tema visual aplicado | Cambios en la interfaz                                  |
    | Modo oscuro          | Fondos oscuros, texto claro, botones con alto contraste |

Scenario: ES2:  Persistencia de la preferencia
Given el <usuario> ha seleccionado un [modo visual],
When el <usuario> cierre la aplicación y la vuelva a abrir,
Then la aplicación debe recordar y aplicar la preferencia de tema visual seleccionada previamente, sin necesidad de que el usuario vuelva a configurarla.

Examples: INPUT
    | Tema visual seleccionado | Acción realizada            |
    | Modo Oscuro              | Cierra y abre la aplicación |

Examples: OUTPUT
    | Tema aplicado al reiniciar la aplicación                          |
    | La interfaz se inicia con el modo oscuro seleccionado previamente |