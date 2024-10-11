Feature: Descarga de Materiales Informativos

  Como usuario que necesita recursos offline
  Quiero descargar folletos y guías informativas
  Para tener acceso a información verificada incluso sin conexión a internet

Scenario: Descargar un folleto informativo
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección de recursos educativos
    When el usuario selecciona un <folleto informativo> para descargar
    Then el sistema debe permitir la <descarga> del folleto en formato PDF
    And el <folleto> debe ser accesible sin conexión a internet

    Examples: Input
      | "Guía de primeros auxilios"            |
      | "Folleto sobre prevención de diabetes" |
      | "Manual de ejercicios para adultos mayores" |
    Examples: Output
      | "PDF descargado"      |
      | "PDF descargado"      |
      | "PDF descargado"      |
