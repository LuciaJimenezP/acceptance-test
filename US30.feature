Feature: Acceso a Videos Educativos

  Como usuario que prefiere contenido visual
  Quiero acceder a una biblioteca de videos educativos
  Para aprender sobre prácticas de salud preventiva de manera más interactiva

Scenario: ES01: Visualizar la biblioteca de videos educativos
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección de videos educativos
    When el usuario selecciona la opción de ver todos los <videos>
    Then el sistema debe mostrar una <lista de videos> disponibles
    And cada <video> debe estar categorizado y ser accesible para su visualización

    Examples: Input
      | "Nutrición"    | 
      | "Ejercicio"    | 
      | "Prevención"   |
    Examples: Output
      | "Alimentación saludable para niños"  |
      | "Rutinas de ejercicio en casa"       |
      | "Cómo prevenir enfermedades comunes" |
    
Scenario: ES02: Reproducción de un Video Educativo
    Given el usuario ha iniciado sesión en la plataforma
    And el usuario ha accedido a la sección de videos educativos
    When el usuario selecciona un <video> para reproducir
    Then el sistema debe cargar y reproducir el <video> seleccionado
    And el usuario debe poder pausar, reanudar y detener la <reproducción> del <video>

    Examples: Input
      | "Alimentación saludable para niños"  |
      | "Rutinas de ejercicio en casa"       |
      | "Cómo prevenir enfermedades comunes" |
    Examples: Output
      | "Video reproducido" |
      | "Video reproducido" |
      | "Video reproducido" |
