Feature: Ajustar recordatorios

Como usuario
Quiero poder ajustar la configuración de mis recordatorios
Para personalizar la frecuencia y el tipo de notificaciones que recibo sobre chequeos médicos y hábitos saludables

Scenario: HU13: Personalización de recordatorios
  Given que el usuario está registrado en AuraHealth
  When haga clic en el botón "Mi Perfil"
  Then se abrirá el apartado, y al hacer clic en el engranaje de ajustes, aparecerá la opción "Editar"
  And cuando modifique los datos y guarde los cambios, aparecerá un mensaje de confirmación "¡Perfil actualizado exitosamente!"
  And los cambios se reflejarán en su perfil
