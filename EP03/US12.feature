Feature: US12 - Editar perfil

Como usuario registrado
Quiero poder editar mi perfil
Para actualizar mi información personal como nombre, correo electrónico, edad o antecedentes médicos

Scenario: ES1: Modificar perfil
Given que el <usuario> es un usuario registrado en AuraHealth
When dé clic en el botón [Mi Perfil]
Then se abrirá el apartado, y al hacer clic en el engranaje de ajustes se abrirá la opción para [Editar perfil]
And cuando modifique los datos y guarde los cambios, aparecerá un mensaje de confirmación "¡Perfil actualizado exitosamente!"
And los cambios se reflejarán en su perfil

Examples: INPUT
  | Nombre	| Correo	| Edad	| Antecedentes médicos | 
  | Omar	| omar@correo.com	| 25 | Ninguno | 

Examples: OUTPUT
  | Mensaje de confirmación | Actualización del perfil |
  | ¡Perfil actualizado exitosamente! | Datos reflejados en el perfil |