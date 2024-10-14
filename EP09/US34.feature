Feature: US34 - Clasificación de artículos por popularidad

Como usuario
Quiero poder ver qué artículos son más populares entre otros usuarios
Para identificar los temas más relevantes.

Scenario: ES01: Ordenar artículos por popularidad
Given que estoy en la [biblioteca]
When elijo [ordenar] los artículos por [popularidad]
Then se mostrarán primero los [más leídos]
And el [orden] será preciso.

Examples: INPUT
| Biblioteca               | Orden de Artículos |
| Sección de salud general |    Popularidad     |
| Sección de nutrición     |    Popularidad     |

Examples: OUTPUT
| Artículos Ordenados  | Precisión del Orden |
| Artículos más leídos |      Preciso        |
| Artículos más leídos |      Preciso        |

Scenario: ES02: Visualización de popularidad y reseñas
Given que los [artículos] están ordenados por [popularidad]
When acceda a la [sección de detalles] de un artículo
Then podré ver cuántos [usuarios lo han leído] y dejado [reseñas]
And estas [reseñas] serán útiles y verificadas.

Examples: INPUT
|        Artículo          |   Popularidad  |
|   Control del colesterol | 2,000 lecturas |
| Ejercicio cardiovascular | 1,500 lecturas |

Examples: OUTPUT
| Lecturas y Reseñas Mostradas | Reseñas Útiles y Verificadas |
| 2,000 lecturas, 150 reseñas  |        Verificadas           |
| 1,500 lecturas, 120 reseñas  |        Verificadas           |