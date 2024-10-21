Feature: Guardar artículos en favoritos 

    Como usuario, quiero que AuraHealth me permita guardar artículos que
    me interesen como favoritos, para así tener un acceso más rápido a ellos.

    Scenario Outline: Guardar un Artículo como Favorito
    Given que el <usuario> se encuentra leyendo un <articulo> en la <seccion> de "Recomendaciones", 
    When haga clic en el <boton> "Agregar a Favoritos", 
    Then el artículo se guardará en la lista de favoritos del usuario, 
    And el usuario verá una <notificacion> confirmando que el artículo ha sido agregado. 

    Examples: Input
    | usuario | articulo | seccion | boton |
    | Alessandro | "Cómo prevenir la diabetes" | "Recomendaciones" | "Agregar a favoritos |

    Examples: Output
    | notificacion |   
    | El articulo ha sido agregado con exito |
      
    Scenario Outline: Acceder a lista de favoritos 
    Given que el <usuario> ha guardado uno o más artículos como favoritos, 
    When accede a la <seccion> "Recomendaciones" y haga clic en el <icono> de favoritos, 
    Then podrá ver una <lista> de todos los artículos guardados como favoritos.

    Examples: Input
    | usuario | seccion | icono |    
    | Alessandro | "Recomendaciones" | "favoritos" |                     
                                
    Examples: Output
    | lista |
    | Artículo 1: "Cómo prevenir la diabetes"|
    | Artículo 2: "Beneficios de una dieta saludable"|
