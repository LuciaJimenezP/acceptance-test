Feature: US33 - Recomendar artículos relacionados a mis condiciones de salud

Como usuario con condiciones de salud específicas
Quiero que se me recomienden artículos que me ayuden a gestionar mejor mi salud
Para mejorar mi bienestar y conocimiento sobre mi condición.

Scenario: ES01: Mostrar artículos relevantes
Given que he registrado mis [condiciones médicas]
When acceda a la [sección de artículos]
Then se me mostrarán [artículos relevantes] a mis condiciones
And la [selección] será precisa y útil.

Examples: INPUT
| Condición Médica | Sección de Artículos |
| Hipertensión     |    Artículos         |
| Diabetes tipo 2  |    Artículos         |

Examples: OUTPUT
| Artículos Relevantes Mostrados           | Precisión de la Selección |
| Control de la presión arterial           |       Precisa y útil      |
| Manejo de niveles de azúcar en la sangre |       Precisa y útil      |

Scenario: ES02: Sugerencia de artículos relacionados
Given que estoy leyendo un [artículo recomendado]
When termine de leer el [artículo]
Then la plataforma sugerirá otros [artículos relacionados] con mi condición
And los [artículos] serán pertinentes y variados.

Examples: INPUT
| Artículo Recomendado           | Condición Médica |
| Control de la presión arterial | Hipertensión     |
| Manejo de niveles de azúcar    | Diabetes tipo 2  |

Examples: OUTPUT
| Artículos Relacionados Sugeridos              | Variedad y Pertinencia |
| Dieta saludable para hipertensión             | Pertinente y variado   |
| Ejercicio para mantener el control del azúcar | Pertinente y variado   |

