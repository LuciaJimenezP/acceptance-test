Feature: US35 - Recuperar contraseña

Como usuario que ha olvidado su contraseña
Quiero poder recuperarla a través de un proceso de restablecimiento sencillo
Para poder acceder nuevamente a mi cuenta.

Scenario: ES1: Envío de enlace para restablecer contraseña
Given que olvidé mi [contraseña]
When hago clic en [Olvidé mi contraseña]
Then recibiré un [correo] con un [enlace] para restablecerla
And el [enlace] será válido por un tiempo determinado.

Examples: INPUT
| Acción                  | Correo Electrónico  |
| Hacer clic en el enlace | usuario@ejemplo.com |
| Hacer clic en el enlace | maria@correo.com    |

Examples: OUTPUT
| Correo Enviado             | Enlace Válido |
| Correo con enlace recibido | Sí (48 horas) |
| Correo con enlace recibido | Sí (48 horas) |

Scenario: ES2: Restablecer contraseña
Given que he recibido el [enlace de restablecimiento]
When haga clic en el [enlace]
Then seré redirigido a una [página] donde puedo crear una [nueva contraseña]
And la [nueva contraseña] será aceptada si cumple con los [requisitos].

Examples: INPUT
| Enlace Recibido |   Nueva Contraseña   |
|       Válido    | ContraseñaSegura2024 |
|       Válido    |   MiClaveNueva2024   |

Examples: OUTPUT
| Redirigido a Página de Restablecimiento | Nueva Contraseña Aceptada |
|               Sí                        |          Sí               |
|               Sí                        |          Sí               |

