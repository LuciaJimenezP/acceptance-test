Feature: Editar perfil

Como usuario registrado
Quiero poder editar mi perfil
Para actualizar mi información personal como nombre, correo electrónico, edad o antecedentes médicos

Scenario: US12: Modificar perfil
  Given que soy un usuario registrado en AuraHealth
  When dé clic en el botón "Mi Perfil"
  Then se abrirá el apartado, y al hacer clic en el engranaje de ajustes, aparecerá la opción "Editar"
  And cuando modifique los datos y guarde los cambios, aparecerá un mensaje de confirmación "¡Perfil actualizado exitosamente!"
  And los cambios se reflejarán en mi perfil
