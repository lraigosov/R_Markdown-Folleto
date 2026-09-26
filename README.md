# Entregas de Coursera — Data Science Specialization

Este repositorio agrupa varias tareas evaluadas por pares del mismo curso.
Cada una es independiente entre sí (documentación, dependencias y forma de
publicación propias); comparten repositorio solo por conveniencia.

- **[Ruta del Café — folleto R Markdown + Leaflet](#ruta-del-café--folleto-en-r-markdown-con-leaflet)**
  (raíz del repo, `index.Rmd` / `index.html`) — publicado y cerrado.
- **[App Shiny — Estimador de Perfil de Taza](shiny-app/)** — en desarrollo.
- **[Presentación reproducible del pitch](pitch-presentation/)** — en desarrollo.

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

## Rama protegida

`main` tiene protección de rama activa: cualquier cambio, en cualquiera de
los proyectos de este repo, requiere pull request (no admite push directo,
ni de terceros ni del owner), y tampoco admite force-push ni borrado de la
rama. Esto evita que un PR externo (por ejemplo, desde un fork) o un push
accidental modifiquen o rompan alguna de las entregas sin pasar por ese
flujo explícito.
