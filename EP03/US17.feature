Feature: Agregar antecedentes familiares

    Como usuario
    Quiero agregar mis antecedentes familiares
    Para obtener recomendaciones más precisas

    Scenario Outline: El usuario agrega un antecedente familiar
    Given que el usuario se encuentra en la ventana de “Mi perfil”
    When el usuario le de a la <opcion> ‘+’
    And en la pantalla que aparecerá seleccione el <boton> “Antecedente familiar”, agregue los <datos> de este y seleccione el <boton> “Guardar”
    Then el antecedente se guardará en el perfil y se mostrará la ventana de mi perfil
    And se le dará recomendaciones personalizadas respecto a estos

    Examples: Input
        | opcion |
        |   ‘+’  |

    Examples: Output
        |          boton         |  dato  |  dato  |  dato  |   boton   |
        | "Antecedente familiar" | Nombre | Dato 1 | Dato 2 | "Guardar" |

    Scenario Outline: El usuario visualiza los detalles de un antecedente familiar
    Given que el usuario ha ingresado sus antecedentes familiares
    And se encuentra en la página de “Mi perfil”
    When selecciona un <antecedente>
    Then se abrirá una pequeña ventana con los <detalles del antecedente>

    Examples: Input
        |            antecedente            |
        | "Madre con hipertensión arterial" |

    Examples: Output
        |          ventana         |
        | detalles del antecedente |

    Scenario Outline: El usuario edita un antecedente familiar
    Given que el usuario ha entrado al detalle de un antecedente familiar
    When le de al <boton> “Editar”
    Then se habilitarán los <campos de los detalles> como editables

    Examples: Input
        |   boton  |
        | "Editar" |

    Examples: Output
        |  campo |  campo |  campo |
        | Nombre | Dato 1 | Dato 2 |