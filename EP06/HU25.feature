Feature: US25 - Filtros de búsqueda

    Como usuario
    Quiero poder utilizar filtros de búsqueda para encontrar información específica según mi edad, género y condiciones de salud
    Para que los resultados sean más relevantes y útiles

Scenario: ES1: Filtro por edad
Given que el <usuario> está en la sección [Recomendaciones] o en la [Pantalla de búsqueda],
When el <usuario> selecciona el filtro "<Edad>" e ingresa su rango de edad,
Then la plataforma debe mostrarle solo resultados relacionados con su grupo etario.

Examples: INPUT
    | Sección         | Filtro aplicado | Rango de edad |
    | Recomendaciones | Edad            | 18-25         |
    | Búsqueda        | Edad            | 40-50         |

Examples: OUTPUT
    | Resultados relacionados con la edad                     |
    | Artículos sobre nutrición para jóvenes adultos de 18-25 |
    | Consejos de ejercicio para personas de 40-50 años       |

Scenario: ES2: Filtro por género
Given que el <usuario> está en la sección [Recomendaciones] o en la [Pantalla de búsqueda],
When el <usuario> selecciona el filtro "<Género>" y elige su género,
Then los resultados deben actualizarse para mostrarle información relevante para su género.

Examples: INPUT
    | Sección         | Filtro aplicado | Género    |
    | Recomendaciones | Género          | Femenino  |
    | Búsqueda        | Género          | Masculino |

Examples: OUTPUT
    | Resultados filtrados por género                  |
    | Recomendaciones de chequeos médicos para mujeres |
    | Consejos de salud y bienestar para hombres       |
