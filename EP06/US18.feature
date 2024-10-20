Feature: Buscar información de chequeos médicos

    Como usuario, 
    quiero buscar información sobre chequeos médicos necesarios según mi perfil 
    para estar informado

    Scenario Outline: El usuario busca chequeos médicos
    Given que el usuario ha recibido recomendaciones de chequeos médicos por parte de la plataforma,
    And se encuentra en el inicio de la aplicación
    When le de a la <barra de busqueda>
    And ingrese el <nombre del chequeo> que desea buscar
    Then le saldrá <articulos> informativos acerca de este

    Examples: Input
        |  barra de busqueda |
        | nombre del chequeo |

    Examples: Output
        |    articulo   |    articulo   |
        | articulo1.com | articulo2.com |