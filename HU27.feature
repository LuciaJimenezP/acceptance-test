Feature: Historial de salud

    Como usuario
    Quiero poder llevar un historial de mis chequeos médicos y condiciones de salud
    Para que pueda consultar esta información fácilmente cuando la necesite

Scenario: ES1: Visualización del historial de salud
Given que el <usuario> ha iniciado sesión correctamente en la aplicación,
When el <usuario> accede a la sección [Historial de salud] desde su [Perfil],
Then se muestra una lista de sus chequeos médicos y condiciones de salud anteriores de manera clara y organizada, con fechas y detalles relevantes de cada evento.

Examples: INPUT
    | Accción realizada             |
    | Accede a "Historial de salud" |

Examples: OUTPUT
    | Chequeos médicos y condiciones previas | Fechas     | Detalles relevantes                                    |
    | Chequeo general                        | 01/05/2023 | Sin anormalidades detectadas                           |
    | Control de presión arterial            | 15/06/2023 | Diagnóstico de hipertensión, medicación prescrita      |
    | Consulta por dolor de espalda          | 22/07/2023 | Diagnóstico de hernia discal, fisioterapia recomendada |

Scenario: ES2: Agregar nuevos registros al historial de salud
Given que el <usuario> ha iniciado sesión correctamente en la aplicación,
And el <usuario> se encuentre en la sección [Perfil],
And ingresa a la sección [Historial de salud],
Cuando el <usuario> selecciona la opción "<Agregar nuevo chequeo médico>" o "<Agregar condición de salud>",
Entonces aparece un [formulario] para que el <usuario> ingrese los detalles del nuevo chequeo o condición como fecha, tipo de chequeo, notas, diagnóstico.

Examples: INPUT
    | Acción realizada                          | Datos ingresados en el formulario                              |
    | Selecciona "Agregar nuevo chequeo médico" | Chequeo general, 20/09/2024, Sin observaciones                 |
    | Selecciona "Agregar condición de salud"   | Alergia al polen, 10/10/2024, Tratamiento con antihistamínicos |

Examples: OUTPUT
    | Confirmación     | Información añadida al historial                               |
    | Registro exitoso | Chequeo general, 20/09/2024, Sin observaciones                 |
    | Registro exitoso | Alergia al polen, 10/10/2024, Tratamiento con antihistamínicos |