Feature: US01 - Visualizar información de la empresa

    Scenario: ES01: Verificación de la información de la empresa
    Given que el <usuario> se encuentra en la [página de inicio]
    When accede a la sección [Sobre nosotros]
    Then la plataforma le mostrará la información de la empresa

    Examples: INPUT
        | Sobre nosotros |
        | Misión | Visión | Equipo |

    Examples: INPUT
        | Redirigir a las secciones seleccionadas |

    Scenario: ES02: Verificación de la presencia en redes sociales
    Given que el <usuario> se encuentra en la sección [Sobre nosotros]
    When dé click los <iconos> de redes sociales
    Then los enlaces deben dirigirlo a los [perfiles oficiales] de la empresa en las plataformas correspondientes

    Examples: INPUT
        |  Instagram.png  |  Facebook.png  |  X.png  |
        |     click()     |    click()     | click() |

    Examples: OUTPUT
        |  Redirecciona al sitio correspondiente  |