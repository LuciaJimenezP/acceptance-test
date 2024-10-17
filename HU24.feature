Feature: US24 - Seguimiento de mi trabajo

    Como usuario
    Quiero poder registrar y seguir mi progreso en hábitos como actividad física y alimentación
    Para que pueda monitorear mis avances y mantenerme motivado

Scenario: ES1: El usuario observa el resumen de su progreso
Given que el <usuario> se encuentra en la [página de inicio], 
And el <usuario> se encuentre en la sección [Perfil], 
Then debería ver una opción "<Mi Progreso>",
And ingrese a la sección "<Mi Progreso>",
Then el <usuario> podrá observar el resumen de su progreso en actividad física y alimentación registrado previamente.

Examples: INPUT
    | Sección | Opción seleccionada |
    | Perfil  | Mi progreso         |

Examples: OUTPUT
    | Resumen de actividad física                        | Resumen de alimentación                            |
    | 3 días de ejercicio esta semana, 2 horas de cardio | Ingesta balanceada: 1500 calorías diarias promedio |
    | 5 días de ejercicio esta semana, 4 horas de yoga   | 2000 calorías diarias, déficit calórico alcanzado  |


Scenario: ES2: El usuario ingresa detalles de actividad o alimentación 
Given que el <usuario> ha ingresado detalles de su actividad o alimentación, 
When el <usuario> guarda la información, 
Then los datos deberían ser almacenados correctamente y reflejados en su [Resumen de progreso].

Examples: INPUT
    | Tipo de entrada  | Detalles ingresados                                   |
    | Actividad física | 45 minutos de cardio, 300 calorías quemadas           |
    | Alimentación     | Almuerzo: 600 calorías, 20g de proteína, 10g de grasa |

Examples: OUTPUT
    | Resumen actualizado de actividad física                 | Resumen actualizado de alimentación                              |
    | 4 días de ejercicio esta semana, 2.5 horas totales      | 2000 calorías diarias promedio, balance de nutrientes alcanzado  |
    | 45 minutos adicionales de cardio, 300 calorías quemadas | 600 calorías añadidas al total del día, 20g de proteína añadidos |