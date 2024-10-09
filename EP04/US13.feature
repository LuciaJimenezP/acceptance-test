Feature: US13 - Ajustar recordatorios

Como usuario
Quiero poder ajustar la configuración de mis recordatorios
Para personalizar la frecuencia y el tipo de notificaciones que recibo sobre chequeos médicos y hábitos saludables

Scenario: ES1: Personalización de recordatorios
Given que el <usuario> está registrado en AuraHealth
When haga clic en el botón [Recordatorios]
Then se abrirá el apartado, y al hacer clic en el engranaje de ajustes podrá seleccionar la [frecuencia] y el [tipo de notificación]
And aparecerá un mensaje de confirmacion "¡Configuracion de recordatorios actualizada!"

Examples: INPUT
  | Frecuencia | 	Tipo de notificación | 
  | Semanal	| Push |

Examples: OUTPUT
  | Mensaje de confirmación | Cambios aplicados en recordatorios |
  | ¡Configuración de recordatorios actualizada! | Recordatorios ajustados |

