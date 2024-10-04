Feature: Biblioteca de Recursos Educativos sobre Salud Preventiva

  Como usuario
  Quiero acceder a una biblioteca de recursos educativos, incluyendo videos, artículos y guías
  Para aprender más sobre prácticas de salud preventiva y aplicarlas en mi vida diaria

  Scenario: ES01: Visualizar la biblioteca de recursos educativos
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección de recursos educativos
    When el usuario selecciona la opción de ver todos los recursos
    Then el sistema debe mostrar una lista de artículos disponibles, cada uno detallando: Nombre, fecha de publicación y nombre del autor

    Examples:
      | nombre                                | fecha de publicación | autor                |
      | "Guía de alimentación saludable"      | "2024-01-15"          | "Dr. Juan Pérez"     |
      | "Ejercicios para una vida activa"     | "2023-11-20"          | "Prof. Ana Martínez" |
      | "Importancia de la vacunación"        | "2024-03-05"          | "Dr. Luis Gómez"     |
