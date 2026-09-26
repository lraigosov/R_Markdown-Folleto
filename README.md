# Ruta del Café — Folleto en R Markdown con Leaflet

Folleto interactivo (`index.Rmd`) hecho con R Markdown, con un mapa Leaflet del
Eje Cafetero colombiano (Manizales, Pereira, Armenia, Salento, Filandia,
Circasia), capas base intercambiables (calles/satélite/oscuro), minimapa,
ruta trazada entre pueblos y tarjetas descriptivas. La fecha de creación se
calcula automáticamente con `Sys.Date()` al momento de compilar (knit).

## 1. Compilar (knit)

En R o RStudio, con el directorio de trabajo en esta carpeta:

```r
install.packages(c("rmarkdown", "leaflet"))
rmarkdown::render("index.Rmd")
```

Esto genera `index.html` (autocontenido, `self_contained: true`), listo para
subir a cualquier hosting estático.

> Vuelve a compilar (`rmarkdown::render`) justo antes de entregar la tarea,
> para que la fecha mostrada sea reciente (la rúbrica exige menos de 2 meses
> respecto a la fecha de calificación).

## 2. Publicar

Elige una opción (la tarea solo pide una):

### GitHub Pages
1. Haz commit y push de `index.html` (y `index.Rmd`) a este repositorio.
2. En GitHub: Settings → Pages → Source → rama `main`, carpeta `/ (root)`.
3. La URL será `https://<usuario>.github.io/<repo>/index.html`.

### RPubs
En RStudio, abre `index.Rmd`, haz clic en **Knit** y luego en el botón
**Publish** de la vista previa → **RPubs**.

### Neocities
1. Crea una cuenta en Neocities.
2. Sube `index.html` (puedes renombrarlo a `index.html` en la raíz del sitio).
3. La URL será `https://<tu-sitio>.neocities.org`.
