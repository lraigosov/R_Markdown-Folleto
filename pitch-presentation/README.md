# Presentación reproducible — Pitch de la app Shiny

Complemento de [`../shiny-app`](../shiny-app): una presentación de 5
diapositivas (incluida la de título) que promociona la app, hecha con
`ioslides_presentation` (el formato HTML5 que usa R Presentations /
RStudio Presenter), con expresiones R incrustadas que se evalúan al
generar las diapositivas.

**Publicada:** https://lraigosov.github.io/R_Markdown-Folleto/pitch-presentation/

## Checklist de la rúbrica

- [x] Hecha en R Presentations (`ioslides_presentation`)
- [x] Exactamente 5 diapositivas (título + 4)
- [x] Contiene expresiones R incrustadas que se evalúan y se muestran
      (texto y gráfico, reutilizando la misma lógica de `server.R`)
- [x] Alojada en GitHub (GitHub Pages, mismo `main` que el resto del repo)
- [x] Sin errores de R visibles en la presentación

## Cómo recompilarla

```r
install.packages("rmarkdown")
rmarkdown::render("pitch-presentation/index.Rmd", output_file = "index.html")
```

## Por qué GitHub Pages y no una rama `gh-pages`

La nota de la tarea sobre una rama `gh-pages` con `.nojekyll` aplica solo si
se usa **Slidify** (que ya no publica a RPubs). Usando R Presentations, el
HTML resultante es una página estática más — no necesita nada especial más
allá de vivir en una carpeta servida por GitHub Pages, así que se publicó en
el mismo `main` que ya sirve el folleto Leaflet, sin rama ni configuración
adicional.
