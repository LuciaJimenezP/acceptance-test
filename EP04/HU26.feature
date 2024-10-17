Feature: Notificaciones en diferentes dispositivos

    Como usuario que usa varios dispositivos
    Quiero recibir recordatorios en mi smartphone y correo electrónico
    Para que pueda verlos en el lugar que me resulte más conveniente

Scenario: ES1: Configuración de notificaciones en smartphone
Given el <usuario> ha iniciado sesión en la aplicación desde su smartphone,
When el <usuario> activa las "<notificaciones>" en su [Perfil],
Then el sistema debe enviar los recordatorios configurados como notificaciones push en su smartphone a la hora programada.

Examples: INPUT
    | Notificaciones activadas | Tipo de recordatorio	          | Hora programada |
    | Sí	                   | Recordatorio de chequeo médico   |	09:00 AM        |
    | Sí	                   | Recordatorio de actividad física |	06:30 PM        |

Examples: OUTPUT
    | Notificación enviada                            |	Hora de envío |
    | "Recuerda tu chequeo médico hoy a las 10:00 AM" |	09:00 AM      |
    | "Es hora de tu rutina de ejercicios"            | 06:30 PM      |

Scenario: ES2: Configuración de notificaciones por correo electrónico
Given el <usuario> ha añadido y verificado su correo electrónico,
And el <usuario> ha iniciado sesión en la aplicación desde su smartphone,
When el <usuario> activa las "<notificaciones>" por correo electrónico en su [Perfil],
Then el sistema debe enviar los recordatorios configurados a su dirección de correo electrónico a la fecha y hora programada.

Examples: INPUT
    | Correo electrónico	| Notificaciones activadas	| Tipo de recordatorio            | Fecha y hora programada |
    | usuario1@gmail.com	| Sí	                    | Recordatorio de vacunación      |	12/11/2024, 08:00 AM    |
    | usuario2@hotmail.com	| Sí	                    | Recordatorio de chequeo general |	15/11/2024, 10:00 AM    |

Examples: OUTPUT
    | Correo electrónico enviado                                                       | Fecha y hora de envío |
    | "Recuerda que tienes una cita para vacunación el 12 de noviembre a las 09:00 AM" | 12/11/2024, 08:00 AM  |
    | "Es hora de tu chequeo general el 15 de noviembre a las 10:00 AM"                | 15/11/2024, 10:00 AM  |
