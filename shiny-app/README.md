# Estimador de Perfil de Taza — App Shiny

Segunda tarea evaluada por pares de este curso: una app Shiny (`ui.R` +
`server.R`) desplegada en shinyapps.io, más una presentación reproducible de
5 diapositivas (ver [`../pitch-presentation`](../pitch-presentation)).

**Estado:** primer borrador funcional, pendiente de iterar el enfoque
creativo contigo antes de desplegar la versión final.

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
- [ ] Desplegada en shinyapps.io — **pendiente** (falta correr
      `rsconnect::deployApp()` con tu cuenta)
- [ ] "Sustancialmente diferente" del ejemplo de clase — borrador razonable,
      pero conviene confirmar contigo el enfoque final antes de dar por
      cerrado este punto

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
