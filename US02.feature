Feature: US02 - AuroraBot

    Scenario: ES01: Recomendación del chatbot  

    Given que el usuario se encuentra en la [landing page] 
    And hace clic en el [icono de chat] 
    When se iniciará una conversación con el [chatbot] 
    When introduce una [pregunta]
    Then el chatbot le proporcionará una respuesta clara y concisa, incluyendo enlaces a artículos de investigación si es necesario. 
   
    Examples: INPUT
        | Chatbot | Pregunta |
        | click() | Qué alimentos son buenos para la diabetes |

    Examples: OUTPUT
        | Envío de la pregunta | Respuesta del chatbot |

    Scenario: ES02: Interacción con los datos personales
    Given el usuario registrado ingresó su [historial médico]
    When consulta al [chatbot] sobre una condición específica  
    Then el chatbot le proporciona una respuesta personalizada, teniendo en cuenta su [historial médico] y cualquier [alergia] o [medicamento] que esté tomando
    
    Examples: INPUT
        | Condición | Medicamento | Chatbot | Pregunta |
        | Asmático  | Salbutamol  | click() | Qué otro medicamento me recomiendas |

    Examples: OUTPUT
        | Envío de pregunta  | Respuesta del chatbot |