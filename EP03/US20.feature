Feature: Agregar historial médico

    Como usuario, 
    quiero agregar información sobre mi historial médico 
    para recibir recordatorios de chequeos basados en mis condiciones específicas

    Scenario Outline: El usuario agrega información de historial médico
    Given que el usuario se encuentra en la ventana de “Mi perfil”
    When el usuario le de al <boton> ‘+’
    And en la pantalla que aparecerá seleccione la <opcion> “Historial médico”, agregue los <datos> de este y seleccione el <boton> “Guardar”
    Then la información de su historial médico se guardará en el perfil y se mostrará la ventana de mi perfil
    And se le dará recomendaciones personalizadas de chequeos médicos considerando la nueva información ingresada

    Examples: Input
        | boton |
        |  '+'  |

    Examples: Output
        |        boton       |  dato  |  dato  |  dato  |   boton   |
        | "Historial médico" | Nombre | Dato 1 | Dato 2 | "Guardar" |

    Scenario Outline: El usuario visualiza los detalles de su historial médico
    Given que el usuario ha ingresado información de su historial médico,
    And se encuentra en la página de “Mi perfil”
    When selecciona uno de los <campos> de su historial médico,
    Then se abrirá una pequeña ventana con los <detalles del historial>

    Examples: Input
        |    campo    |
        | "Asma leve" |

    Examples: Output
        |    nombre   |        detalle       |            detalle           |       detalle      |
        | "Asma leve" | "Desde los 12 años"  | "Controlada con inhaladores" | "Episosios agudos" |

    Scenario Outline: El usuario edita un historial médico
    Given que el usuario ha entrado al detalle de un historial médico
    When le de al <boton> “Editar”
    Then se habilitarán los <campos> de los detalles como editables

    Examples: Input
        |   boton  |
        | "Editar" |

    Examples: Output
        | campo  |   campo   |   campo   |   campo   |
        | nombre | detalle 1 | detalle 2 | detalle 3 |