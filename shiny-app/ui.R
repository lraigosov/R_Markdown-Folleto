library(shiny)

pueblos <- c("Manizales", "Pereira", "Armenia", "Salento", "Filandia", "Circasia")

fluidPage(
  titlePanel("Estimador de Perfil de Taza — Ruta del Café"),

  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "pueblo",
        label = "Elige un pueblo cafetero:",
        choices = pueblos,
        selected = "Salento"
      ),
      sliderInput(
        inputId = "ajuste_altitud",
        label = "Ajuste de altitud simulado (metros):",
        min = -300, max = 300, value = 0, step = 50
      ),
      helpText(
        "El ajuste de altitud es un supuesto ilustrativo (no un dato real de ",
        "campo): simula cómo cambiaría el perfil de taza si la finca estuviera ",
        "más alta o más baja que la altitud base asignada a cada pueblo."
      )
    ),

    mainPanel(
      tabsetPanel(
        tabPanel(
          "Resultado",
          h3(textOutput("titulo_resultado")),
          plotOutput("grafico_perfil"),
          verbatimTextOutput("resumen_texto")
        ),
        tabPanel(
          "Cómo usar esta app",
          br(),
          h4("Qué hace"),
          p(
            "Esta app calcula un ", strong("perfil de taza ilustrativo"),
            " (acidez, cuerpo y dulzor en una escala de 0 a 10) para uno de ",
            "los pueblos de la Ruta del Café, a partir de una altitud base ",
            "asignada a cada pueblo más el ajuste que tú definas."
          ),
          h4("Cómo usarla"),
          tags$ol(
            tags$li("Elige un pueblo en el menú desplegable de la izquierda."),
            tags$li("Mueve el control deslizante para simular una altitud más alta o más baja."),
            tags$li("La pestaña 'Resultado' se actualiza automáticamente con un gráfico de barras y un resumen en texto.")
          ),
          h4("Importante"),
          p(
            "Los puntajes son ", strong("simulados con fines didácticos"),
            " para cumplir el ejercicio de Shiny (entrada reactiva → cálculo en ",
            "el servidor → salida reactiva). No representan mediciones reales ",
            "de catación de café."
          )
        )
      )
    )
  )
)
