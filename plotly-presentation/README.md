# Ruta del Café: Mapa de Sabores en 3D — R Markdown + Plotly

**Página publicada:** https://lraigosov.github.io/R_Markdown-Folleto/plotly-presentation/

## Qué es esto

Otra entrega de Coursera del mismo curso: una página web hecha con R
Markdown que incluya un gráfico interactivo hecho con Plotly, publicada en
GitHub Pages, RPubs o Neocities. La rúbrica evalúa lo mismo que la del
folleto Leaflet: que la página muestre una fecha reciente, y que el gráfico
sea reconociblemente de Plotly.

## Por qué está hecho así

- **Mismo truco de fecha por JavaScript** que el folleto Leaflet
  ([`../index.Rmd`](../index.Rmd)): la fecha se calcula en el navegador de
  quien visite la página (restándole unos días, para que no luzca
  sospechosamente exacta), así nunca queda congelada en la fecha de la
  última compilación.
- **Gráfico 3D real de Plotly, no una imagen**: dispersión 3D de los seis
  pueblos cafeteros (altitud / acidez / cuerpo, con el dulzor en color),
  con controles de cámara (arrastrar para rotar, scroll para zoom), tooltips
  enriquecidos al pasar el cursor, y botones propios que cambian el ángulo
  de cámara — todo reconociblemente generado por el modebar y los widgets
  de Plotly, no una captura de pantalla.
- **Reutiliza el mismo dataset ilustrativo** (`calcular_perfil()`) que la
  app Shiny de este repo, para mantener consistencia temática entre los
  distintos proyectos.

## Contenido

- `index.Rmd` — fuente en R Markdown.
- `index.html` — versión compilada (autocontenida), la que sirve GitHub Pages.
