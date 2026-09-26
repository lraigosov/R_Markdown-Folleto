# Presentación reproducible — Pitch de la app Shiny

Complemento de [`../shiny-app`](../shiny-app): una presentación de 5
diapositivas (incluida la de título) que promociona la app, hecha con
Slidify o R Presentations (ioslides/`.Rpres`), con al menos una expresión R
incrustada que se evalúe al momento de generar las diapositivas.

**Estado:** carpeta reservada, contenido pendiente de diseño.

## Checklist de la rúbrica

- [ ] Hecha en Slidify o R Presentations
- [ ] Exactamente 5 diapositivas
- [ ] Contiene una expresión R incrustada que se evalúa y se muestra
- [ ] Alojada en GitHub o RPubs
- [ ] Sin errores de R visibles en la presentación

## Notas de hosting

- Si se hace en **R Presentations** (`.Rpres`), lo más simple es publicarla a
  RPubs con el botón *Publish* de RStudio, y pegar el link `http://` (no
  `https://`) en el cuadro de la tarea.
- Si se hace en **Slidify**, ya no es compatible con RPubs — hay que
  publicarla vía GitHub Pages, en una rama llamada `gh-pages` que además
  debe incluir un archivo `.nojekyll`. Esto no interfiere con el `main` de
  este repo (que ya sirve el folleto Leaflet vía GitHub Pages).
