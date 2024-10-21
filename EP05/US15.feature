Feature: Historial de Recomendaciones 

    Como usuario, quiero poder consultar el historial de las recomendaciones que me ha dado la plataforma, 
    para revisar los consejos anteriores y mejorar mi salud de forma continua. 

    Scenario Outline: Acceso a Detalles de Recomendaciones Pasadas
    Given que el <usuario> accede a la <seccion> de "Recomendaciones", 
    When <selecciona> el ícono de la <opcion> de historial de recomendaciones, 
    And elige una <recomendacion especifica> de la lista, 
    Then visualizará los <detalles> completos de esa recomendación.

    Examples: Input
    | usuario | seccion | selecciona | opcion |
    | Alessandro| "Recomendaciones" | ícono | historial de recomedaciones |

    Examples: Output
    | recomendacion especifica | detalles |
    | Recomendación sobre cómo prevevinir las diabetes |
      
    Scenario Outline: Filtrado del Historial de Recomendaciones
    Given que el <usuario> accede al historial de recomendaciones, 
    When utiliza la <opcion> de filtrar recomendaciones por <categoria>
    Then se <mostraran> únicamente las recomendaciones que correspondan a la categoría seleccionada, 
    And podrá ver <detalles> de cada recomendación filtrada para una revisión más específica.

    Examples: Input
    | usuario | opcion | categoria |
    | Alessandro | filtrar | Nutrición |

    Examples: Output
    | mostraran | detalles |
    | Recomendaciones de Nutrición | Información de cada recomendación de nutrición filtrada |
