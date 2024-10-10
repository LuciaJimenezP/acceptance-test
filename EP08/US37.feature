Feature: Acceso a contenido multimedia verificado

  Como usuario,
  Quiero poder acceder a contenido multimedia como videos o infografías que estén verificados,
  Para aprender de forma más interactiva sobre temas de salud.

  Scenario Outline: Acceso a multimedia verificado
    Given que estoy en la sección "Biblioteca",
    When filtre por "<filtro_multimedia>",
    Then podré acceder a material educativo visual verificado,
    And el contenido estará categorizado correctamente.

    Examples:
      | Input                 | Output                                         |
      | contenido multimedia  | Material educativo verificado disponible       |
      | videos                | Videos educativos verificados disponibles      |
      | infografías           | Infografías educativas verificadas disponibles |

  Scenario Outline: Sugerencias de videos relacionados
    Given que accedí a un video,
    When termine de ver el contenido,
    Then la plataforma me sugerirá videos relacionados sobre temas similares,
    And las sugerencias serán relevantes.

    Examples:
      | Input                 | Output                                                                  |
      | Video de nutrición    | Sugerencias de videos relacionados con nutrición y salud alimentaria    |
      | Video de ejercicio    | Sugerencias de videos sobre ejercicio y actividad física                |
      | Video de salud mental | Sugerencias de videos sobre bienestar emocional y salud mental          |
