library(shiny)

altitud_base <- c(
  "Manizales" = 2150,
  "Pereira"   = 1411,
  "Armenia"   = 1483,
  "Salento"   = 1895,
  "Filandia"  = 1923,
  "Circasia"  = 1760
)

calcular_perfil <- function(altitud) {
  acidez <- max(0, min(10, 4 + (altitud - 1500) / 150))
  cuerpo <- max(0, min(10, 7 - (altitud - 1500) / 300))
  dulzor <- max(0, min(10, 5 + sin(altitud / 500) * 2))
  c(Acidez = acidez, Cuerpo = cuerpo, Dulzor = dulzor)
}

function(input, output, session) {

  altitud_efectiva <- reactive({
    altitud_base[[input$pueblo]] + input$ajuste_altitud
  })

  perfil <- reactive({
    calcular_perfil(altitud_efectiva())
  })

  output$titulo_resultado <- renderText({
    paste0("Perfil de taza simulado — ", input$pueblo)
  })

  output$grafico_perfil <- renderPlot({
    valores <- perfil()
    barplot(
      valores,
      ylim = c(0, 10),
      col = c("#a97c50", "#6f4e37", "#3b2314"),
      main = paste0("Altitud simulada: ", round(altitud_efectiva()), " m"),
      ylab = "Puntaje (0-10)"
    )
  })

  output$resumen_texto <- renderPrint({
    cat("Pueblo:", input$pueblo, "\n")
    cat("Altitud base:", altitud_base[[input$pueblo]], "m\n")
    cat("Ajuste aplicado:", input$ajuste_altitud, "m\n")
    cat("Altitud simulada:", round(altitud_efectiva()), "m\n\n")
    print(round(perfil(), 1))
  })
}
