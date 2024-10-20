Feature: Navegación 

    Como usuario, quiero que la interfaz sea intuitiva y fácil de navegar, 
    para que pueda encontrar rápidamente la información que busco.

    Scenario Outline: Acceso a Secciones Principales
    Give que el <usuario> se encuentra en la página principal de la plataforma, 
    When interactúa con el <menu de navegacion>, 
    Then visualizará todas las <secciones principales> claramente etiquetadas.

    Examples: Input
    | usuario | menu de navegacion  | 
    | Alessandro | Menú principal  | 

    Examples: Output
    | secciones principales | 
    | "Inicio", "Recomendaciones", "Recordatorios", "Mi Perfil" , "Sobre Nosotros" |
