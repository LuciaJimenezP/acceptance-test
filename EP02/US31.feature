Feature: US31 - Alternar entre idiomas
Como usuario que habla varios idiomas
Quiero que la plataforma me permita alternar fácilmente entre diferentes idiomas
Para poder entender mejor las funciones de la aplicación.

Scenario: ES01: Cambio de idioma en la configuración
Given que estoy en la [configuración]
When hago clic en [Cambiar idioma]
Then se desplegará una [lista de idiomas]
And la interfaz cambiará según el [idioma seleccionado].

Examples: INPUT
| Configuración | Idioma Seleccionado |
| General       | Inglés              |
| General       | Español             |

Examples: OUTPUT
| Lista de idiomas desplegada | Idioma de la interfaz |
| Desplegada                  | Inglés                |
| Desplegada                  | Español               |

Scenario: ES02: Reflejo de idioma en pantalla principal
Given que he cambiado el [idioma]
When regreso a la [pantalla principal]
Then todo el contenido estará en el [idioma que seleccioné]
And no habrá ningún [error de traducción] en las [secciones principales].

Examples: INPUT
| Idioma Seleccionado | Sección Principal  |
| Inglés              | Pantalla Principal |
| Español             | Pantalla Principal |

Examples: OUTPUT
| Contenido en idioma seleccionado | Errores de traducción |
| Todo el contenido en inglés      | No hay errores        |
| Todo el contenido en español     | No hay errores        |
