Feature: Recordatorios Vencidos

Como usuario
Quiero poder visualizar la lista de los recordatorios médicos que me salté o no completé
Para tener un registro de sus fechas

Scenario: HU14: Ajustar frecuencia de recordatorios
  Given que el usuario lleva tiempo registrado
  When haga clic en "Recordatorios", podrá acceder a la opción "Ajustar Recordatorios"
  Then podrá seleccionar la frecuencia de las notificaciones (diaria, semanal, mensual) y el tipo (notificación push, correo electrónico)
  And cuando guarde los cambios, aparecerá un mensaje de confirmación
  And los recordatorios se ajustarán según sus nuevas preferencias
