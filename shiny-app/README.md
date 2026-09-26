# Estimador de Perfil de Taza — App Shiny

Segunda tarea evaluada por pares de este curso: una app Shiny (`ui.R` +
`server.R`) desplegada en shinyapps.io, más una presentación reproducible
(ver [`../pitch-presentation`](../pitch-presentation)).

**App publicada:** https://lraigosov.shinyapps.io/ruta-del-cafe-perfil-taza/

**Estado:** desplegada. El enfoque creativo (perfil de taza simulado por
pueblo/altitud) ya está validado; queda pendiente la presentación
reproducible del pitch.

## Qué hace (versión actual)

Sigue el tema "Ruta del Café" del resto del repo: el usuario elige uno de los
seis pueblos cafeteros y ajusta una altitud simulada con un slider; el
servidor recalcula un perfil de taza ilustrativo (acidez, cuerpo, dulzor) y
lo muestra como gráfico de barras y resumen en texto. Los puntajes son
**simulados con fines didácticos**, no mediciones reales de catación — eso
se explica también dentro de la propia app, en la pestaña "Cómo usar esta
app" (la rúbrica exige que la documentación viva en el sitio de Shiny, no en
un link externo).

## Checklist de la rúbrica

- [x] Widget de entrada — `selectInput` (pueblo) + `sliderInput` (altitud)
- [x] Operación sobre la entrada en `server.R` — `calcular_perfil()`
- [x] Salida reactiva — `renderPlot` + `renderPrint`
- [x] Documentación en el propio sitio — pestaña "Cómo usar esta app"
- [x] Desplegada en shinyapps.io —
      https://lraigosov.shinyapps.io/ruta-del-cafe-perfil-taza/
- [x] "Sustancialmente diferente" del ejemplo de clase — combina selección
      categórica + ajuste numérico sobre una fórmula propia con múltiples
      salidas derivadas, no un único slider sobre una regresión lineal

## Cómo correrla localmente

```r
install.packages("shiny")
shiny::runApp("shiny-app")
```

## Cómo desplegarla en shinyapps.io

Requiere una cuenta en https://www.shinyapps.io/ y el token/secret configurado
una vez con `rsconnect::setAccountInfo(...)` (no se versiona: ver
`.gitignore`).

```r
install.packages("rsconnect")
rsconnect::setAccountInfo(name = "<tu-cuenta>", token = "<token>", secret = "<secret>")
rsconnect::deployApp("shiny-app")
```
