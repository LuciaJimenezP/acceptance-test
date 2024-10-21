Feature: Visualización de artículos educativos 

    Como usuario, quiero poder acceder a artículos personalizados relacionados a salud,
    para tener un mayor conocimiento de cómo prevenir enfermedades y
    tomar mejores decisiones para mi bienestar. 

    Scenario Outline: Acceso a artículos personalizados
    Given que el <usuario> está registrado en la plataforma, 
    When accede a la <seccion> "Recomendaciones", 
    Then visualizará el <apartado de articulos> disponibles basados en su historial de salud.

    Examples: Input
    | usuario | seccion | 
    | Alessandro | "Recomendaciones" |

    Examples: Output
    | apartado de articulos | 
    | "Cómo prevenir la diabetes" |
    | "Beneficios de una dieta saludable" |
      
    Scenario Outline: Lectura de artículos educativos
    Given que el <usuario> ha visualizado el apartado de artículos disponibles, 
    When <selecciona> un artículo para leer, 
    Then se mostrará el <contenido> completo del artículo, permitiendo al usuario desplazarse por el texto, 
    And tendrá la <opcion> de regresar a la lista de artículos educativos. 

    Examples: Input
    | usuario | selecciona | 
    | Alessandro | "Cómo prevenir la diabetes" |
                                
    Examples: Output
    | contenido | opcion | 
    | Información completa del artículo seleccionado | Regresar a la lista |   
