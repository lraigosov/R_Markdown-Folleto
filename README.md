# Ruta del Café — Folleto en R Markdown con Leaflet

**Página publicada:** https://lraigosov.github.io/R_Markdown-Folleto/

## Qué es esto

Entrega de una tarea de Coursera que pide construir una página web con R
Markdown, incrustar un mapa interactivo hecho con Leaflet, y publicarla
(GitHub Pages, RPubs o Neocities). La rúbrica evalúa dos cosas puntuales:
que la página muestre una fecha de creación reciente, y que el mapa sea
reconociblemente un mapa Leaflet.

## Por qué está hecho así

- **Fecha dinámica**: en vez de escribir una fecha fija en el texto, el
  documento la calcula con `Sys.Date()` en tiempo de compilación (`index.Rmd`,
  chunk `setup`), para que cada vez que se recompile quede al día sin editar
  nada a mano.
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

## Contenido

- `index.Rmd` — fuente en R Markdown.
- `index.html` — versión compilada (autocontenida), la que sirve GitHub Pages.

## Rama protegida

`main` tiene protección de rama activa: cualquier cambio requiere pull
request con al menos una revisión aprobada, no admite force-push ni borrado,
y la regla aplica también al owner. Esto evita que un PR externo (por
ejemplo, desde un fork) modifique o rompa la entrega sin revisión explícita.
