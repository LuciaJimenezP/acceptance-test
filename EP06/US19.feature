Feature: Búsquedas recientes

    Como usuario, 
    quiero observar mis búsquedas recientes 
    para acceder fácilmente a ellas más tarde

    Scenario Outline: El usuario visualiza sus búsquedas recientes
    Given que el usuario ha realizado búsquedas en la plataforma
    And se encuentra en la pantalla de inicio
    When le da a la <barra de busqueda>,
    Then se desplegará una <lista de las busquedas> realizadas recientemente.

    Examples: Input
        |       opcion      |
        | barra de busqueda |

    Examples: Output
        | busqueda |    busqueda    |
        |  "asma"  | "hipertensión" |

    Scenario Outline: El usuario accede a una búsqueda reciente
    Given que el usuario está seleccionando la barra de búsqueda,
    When selecciona una <busqueda> de la lista de búsquedas recientes,
    Then se le mostrará directamente los <resultados de esa busqueda>.

    Examples: Input
        | busqueda |    busqueda    |
        |  "asma"  | "hipertensión" |

    Examples: Output
        |   resultado   |   resultado   |
        | articulo1.com | articulo2.com |

    Scenario Outline: Borrado de búsquedas recientes
    Given que el usuario tiene búsquedas recientes en su historial,
    And se encuentra observando la <lista de busquedas recientes> en la barra de búsqueda
    When le da clic a al <boton> “X” ubicado al costado de una búsqueda reciente,
    Then la búsqueda se borra del historial y desaparece de la lista de búsquedas recientes.

    Examples: Input
        | busqueda | boton |    busqueda    | boton |
        |  "asma"  |  "X"  | "hipertensión" |  "X"  |

    Examples: Output
        |    busqueda    | boton |
        | "hipertensión" |  "X"  |