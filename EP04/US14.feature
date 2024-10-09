Feature: US14 - Recordatorios Vencidos

Como usuario
Quiero poder visualizar la lista de los recordatorios médicos que me salté o no completé
Para tener un registro de sus fechas

Scenario: ES1: Visualización de recordatorios médicos vencidos
Given que el <usuario> está registrado en AuraHealth
When acceda a la sección [Recordatorios]
Then podrá visualizar una [lista de los recordatorios médicos vencidos]
And se mostrará el mensaje "¡Tienes recordatorios médicos vencidos!"
And se mostrará la [fecha] de cada recordatorio que se ha saltado o no completado

Examples: INPUT
  | Sección	Recordatorios  | vencidos  | 
  | Recordatorios  | Chequeo general  |
Examples: OUTPUT
  | Mensaje de recordatorios vencidos | Lista de recordatorios con fecha |
  | ¡Tienes recordatorios médicos vencidos! | Chequeo general - 01/10/2024 |