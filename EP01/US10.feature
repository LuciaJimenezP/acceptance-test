Feature: US10 - Registro de cuenta nueva

Como usuario nuevo
Quiero poder registrarme en la aplicación
Para crear una cuenta y acceder a las funcionalidades de AuraHealth

Scenario: ES1: Registro de usuario nuevo
Given que el <usuario> instala la aplicación y la abre
When haga clic en la opción [Registrar cuenta]
Then se abrirá un formulario para ingresar sus [datos personales]
And cuando complete el formulario y lo envíe, recibirá un mensaje de confirmación "¡Tu cuenta ha sido creada!"
And será redirigido a la pantalla principal

Examples: INPUT
  | Nombre	| Apellido | Correo |
  | Omar	| Rodrigo	| omar@correo.com|

Examples: OUTPUT
  | Mensaje de confirmación | Redirigir a la pantalla principal |
  | ¡Tu cuenta ha sido creada! | Pantalla principal |

