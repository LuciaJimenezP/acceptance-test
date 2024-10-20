Feature: Recordatorios de vacunas

    Como usuario
    Quiero recibir recordatorios para mis vacunas pendientes
    Para mantener mi calendario de vacunación actualizado.

    Scenario Outline: El usuario configura el recordatorio de vacunación
    Given que el usuario tiene un calendario de vacunación
    And se encuentre en la pestaña de agregar recordatorio
    When registre la <fecha>, elija la <opcion> de “Vacuna”, escriba la <descripcion> de esta
    And le a la <opcion> de “Registrar”
    Then la plataforma debería enviarle una <notificacion> cuando se acerque la fecha de la vacuna.

    Examples: Input
        |  fecha  |  opcion  |          descripcion         |    opcion   |
        | 1/11/24 | “Vacuna” | "Vacuna contra la influenza" | “Registrar” |

    Examples: Output
        |   notificacion   |
        | infoDeVacuna.txt |

    Scenario Outline: El usuario pospone la fecha de vacunación
    Given que el usuario ha recibido la notificación de su vacunación
    And no puede asistir en esa fecha
    When el usuario le de al <boton> “Posponer”
    Then se abrirá una pantalla para seleccionar la nueva <fecha>
    And al dar al <boton> “Aceptar” se guardará la nueva fecha

    Examples: Input
        |    boton   |
        | “Posponer” |

    Examples: Output
        |   fecha  |   boton   |
        | 3/11/24  | “Aceptar” |

    Scenario Outline: El usuario confirma haber recibido la vacuna
    Given que el usuario ha recibido la notificación de vacunación
    And ya ha recibido la vacuna
    When le de al <boton> de “Completado” del recordatorio
    Then la vacunación se marcará como <completada>

    Examples: Input
        |     boton    |
        | "Completado" |

    Examples: Output
        |   etiqueta   |
        | "completada" |