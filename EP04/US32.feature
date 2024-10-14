Feature: US32 - Recordatorios automáticos de chequeos médicos

Como usuario
Quiero que la aplicación me envíe recordatorios automáticos para mis chequeos médicos programados
Para asegurarme de no olvidar mis citas importantes.

Scenario: ES01: Envío de recordatorio automático
Given que ingresé un [chequeo médico]
When se acerque la [fecha del chequeo]
Then recibiré [notificaciones automáticas]
And el [recordatorio] llegará a tiempo.

Examples: INPUT
| Chequeo Médico       | Fecha de Chequeo |
| Chequeo dental anual |    2024-11-15    |
| Chequeo de visión    |    2024-12-01    |

Examples: OUTPUT
| Notificación Automática | Recordatorio a tiempo |
| Notificación recibida   |         Sí            |
| Notificación recibida   |         Sí            |

Scenario: ES02: Marcar chequeo como completado
Given que ya he recibido el [recordatorio]
When marque el [chequeo] como completado
Then el sistema no me enviará más [recordatorios] para ese chequeo
And el chequeo se registrará como [realizado].

Examples: INPUT
|    Chequeo Médico    | Recordatorio Recibido | Estado del Chequeo |
| Chequeo dental anual |         Sí            |    Completado      |
|   Chequeo de visión  |         Sí            |    Completado      |

Examples: OUTPUT
| Nuevos Recordatorios |     Chequeo Registrado     |
|        No            | Registrado como completado |
|        No            | Registrado como completado |