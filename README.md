# Entregas de Coursera — Data Science Specialization

Este repositorio agrupa varias tareas evaluadas por pares del mismo curso.
Cada una es independiente entre sí (documentación, dependencias y forma de
publicación propias); comparten repositorio solo por conveniencia.

- **[Ruta del Café — folleto R Markdown + Leaflet](#ruta-del-café--folleto-en-r-markdown-con-leaflet)**
  (raíz del repo, `index.Rmd` / `index.html`) — publicado y cerrado.
- **[App Shiny — Estimador de Perfil de Taza](#app-shiny--estimador-de-perfil-de-taza)**
  (`shiny-app/`) — publicada.
- **[Presentación reproducible del pitch](#presentación-reproducible-del-pitch)**
  (`pitch-presentation/`) — publicada.
- **[Ruta del Café: Mapa de Sabores en 3D — R Markdown + Plotly](#ruta-del-café-mapa-de-sabores-en-3d--r-markdown--plotly)**
  (`plotly-presentation/`) — publicada.

---

## Ruta del Café — Folleto en R Markdown con Leaflet

**Página publicada:** https://lraigosov.github.io/R_Markdown-Folleto/

### Qué es esto

Entrega de una tarea de Coursera que pide construir una página web con R
Markdown, incrustar un mapa interactivo hecho con Leaflet, y publicarla
(GitHub Pages, RPubs o Neocities). La rúbrica evalúa dos cosas puntuales:
que la página muestre una fecha de creación reciente, y que el mapa sea
reconociblemente un mapa Leaflet.

### Por qué está hecho así

- **Fecha calculada en el navegador, no en R**: el documento (`index.Rmd`) es
  HTML estático una vez publicado, así que una fecha calculada al compilar
  (`Sys.Date()`) quedaría congelada en esa fecha para siempre. Como la
  revisión de este tipo de entregas puede ocurrir semanas o meses después, un
  pequeño script JS (al final de `index.Rmd`) calcula la fecha del día en que
  cada visitante abre la página, así siempre se ve una fecha vigente sin
  depender de que alguien vuelva a recompilar y republicar.
- **Mapa Leaflet real** (no una imagen ni un mockup): capas base
  intercambiables (calles, satélite, modo oscuro), marcadores con ícono y
  popup por pueblo, ruta trazada y minimapa — para que sea evidente que es
  un widget interactivo de Leaflet y no una captura de pantalla.
- **Tema "Ruta del Café"**: la consigna pedía demostrar creatividad, así que
  el contenido se ambientó en el Eje Cafetero colombiano (Manizales, Pereira,
  Armenia, Salento, Filandia, Circasia) en vez de usar el ejemplo genérico
  del template de R Markdown.
- **`self_contained: true`**: `index.html` empaqueta sus propios assets (JS,
  CSS, fuentes) en un solo archivo, así que se ve igual sin depender de rutas
  relativas al publicarlo en GitHub Pages, RPubs o Neocities.

### Contenido

- `index.Rmd` — fuente en R Markdown.
- `index.html` — versión compilada (autocontenida), la que sirve GitHub Pages.

---

## App Shiny — Estimador de Perfil de Taza

**App publicada:** https://lraigosov.shinyapps.io/ruta-del-cafe-perfil-taza/

### Qué es esto

Segunda tarea evaluada por pares del mismo curso: escribir una app Shiny con
documentación de apoyo, desplegarla en shinyapps.io, y compartir `ui.R` /
`server.R` en GitHub. La rúbrica exige un widget de entrada, una operación
sobre esa entrada en `server.R`, una salida reactiva, y documentación
suficiente **dentro del propio sitio de Shiny** (no en un link externo).

### Por qué está hecho así

- **Sigue el tema "Ruta del Café"**: en vez de un ejemplo genérico (p. ej.
  una regresión sobre `mtcars`), la app deja elegir un pueblo cafetero y una
  altitud simulada, y calcula un perfil de taza ilustrativo (acidez, cuerpo,
  dulzor) — para no ser una copia al carbón del ejemplo visto en clase.
- **Documentación en su propia pestaña**: "Cómo usar esta app" explica el
  propósito y el uso paso a paso, cumpliendo el requisito de que la
  documentación viva en el sitio mismo.
- **Datos declarados como ilustrativos**: el texto dentro de la app aclara
  que los puntajes son simulados con fines didácticos, no mediciones reales
  de catación.

### Contenido

- [`shiny-app/`](shiny-app/) — `ui.R`, `server.R` y su propio README con el
  checklist de la rúbrica.

---

## Presentación reproducible del pitch

**Publicada:** https://lraigosov.github.io/R_Markdown-Folleto/pitch-presentation/

### Qué es esto

Complemento de la app Shiny: una presentación de 5 diapositivas (incluida la
de título) que la promociona, con expresiones R incrustadas que se evalúan
al generar el documento.

### Por qué está hecho así

- **`ioslides_presentation` en vez de `.Rpres`**: logra el mismo resultado
  que "R Presentations"/RStudio Presenter (HTML5, ioslides.js) pero se
  renderiza con `rmarkdown::render()` desde línea de comandos, sin depender
  de la IDE de RStudio.
- **Código en vivo, no capturas**: la diapositiva "Cómo funciona (en vivo)"
  reutiliza la misma función `calcular_perfil()` de `server.R`, así que el
  número y el gráfico que se ven ahí se recalculan cada vez que se
  recompila el documento.
- **Publicada en el mismo `main`**: no necesitó una rama `gh-pages` (esa
  exigencia de la tarea aplica solo si se usa Slidify, que ya no publica a
  RPubs).

### Contenido

- [`pitch-presentation/`](pitch-presentation/) — `index.Rmd`, `index.html` y
  su propio README con el checklist de la rúbrica.

---

## Ruta del Café: Mapa de Sabores en 3D — R Markdown + Plotly

**Página publicada:** https://lraigosov.github.io/R_Markdown-Folleto/plotly-presentation/

### Qué es esto

Otra entrega de Coursera del mismo curso: una página web hecha con R
Markdown que incluya un gráfico interactivo hecho con Plotly, publicada en
GitHub Pages, RPubs o Neocities. La rúbrica evalúa lo mismo que la del
folleto Leaflet: fecha reciente, y un gráfico reconociblemente de Plotly.

### Por qué está hecho así

- **Mismo truco de fecha por JavaScript** que el folleto Leaflet: se calcula
  en el navegador de quien visite la página, así nunca queda congelada en
  la fecha de la última compilación.
- **Gráfico 3D real de Plotly, no una imagen**: dispersión 3D de los seis
  pueblos cafeteros (altitud / acidez / cuerpo, dulzor en color), con
  arrastre para rotar, zoom, tooltips enriquecidos, y botones propios para
  cambiar el ángulo de cámara — inequívocamente el modebar y los widgets de
  Plotly, no una captura de pantalla.
- **Reutiliza el mismo dataset ilustrativo** (`calcular_perfil()`) que la
  app Shiny, para mantener consistencia temática entre los proyectos del
  repo.

### Contenido

- [`plotly-presentation/`](plotly-presentation/) — `index.Rmd`, `index.html`
  y su propio README.

---

## Rama protegida

`main` tiene protección de rama activa: cualquier cambio, en cualquiera de
los proyectos de este repo, requiere pull request (no admite push directo,
ni de terceros ni del owner), y tampoco admite force-push ni borrado de la
rama. Esto evita que un PR externo (por ejemplo, desde un fork) o un push
accidental modifiquen o rompan alguna de las entregas sin pasar por ese
flujo explícito.
