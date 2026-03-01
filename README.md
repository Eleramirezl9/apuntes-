# Plantillas LaTeX para Documentos Formales

Este repositorio contiene plantillas LaTeX profesionales para crear documentos PDF formales de alta calidad.

## Estructura del Proyecto

```
apuntes-/
├── templates/           # Plantillas reutilizables
│   ├── plantilla_documento.tex    # Plantilla para documentos generales
│   ├── plantilla_articulo.tex     # Plantilla para artículos científicos
│   └── plantilla_reporte.tex      # Plantilla para reportes técnicos
├── src/                # Archivos fuente de documentos en desarrollo
│   └── ejercicios_calculo.tex     # Ejemplo: ejercicios de cálculo
├── build/              # Archivos compilados (PDFs y archivos temporales)
├── assets/             # Recursos del proyecto
│   └── images/         # Imágenes utilizadas en los documentos
└── scripts/            # Scripts de utilidad
```

## Requisitos

Para compilar los documentos LaTeX necesitas tener instalado:

- **LaTeX Distribution**:
  - **Windows**: [MiKTeX](https://miktex.org/) o [TeX Live](https://www.tug.org/texlive/)
  - **macOS**: [MacTeX](https://www.tug.org/mactex/)
  - **Linux**: TeX Live (`sudo apt-get install texlive-full`)

## Cómo Usar las Plantillas

### Método 1: Copiar plantilla a src/

1. Copia la plantilla deseada desde `templates/` a `src/`:
   ```bash
   cp templates/plantilla_documento.tex src/mi_documento.tex
   ```

2. Edita `src/mi_documento.tex` con tu contenido

3. Compila el documento (ver sección de compilación)

### Método 2: Usar directamente desde templates/

1. Edita directamente la plantilla en `templates/`

2. Compílala según tus necesidades

## Compilación de Documentos

### Opción 1: Compilación Manual

#### Con pdflatex:
```bash
cd src
pdflatex mi_documento.tex
pdflatex mi_documento.tex  # Ejecutar dos veces para referencias correctas
```

#### Con latexmk (recomendado):
```bash
cd src
latexmk -pdf -output-directory=../build mi_documento.tex
```

### Opción 2: Usando el Script de Compilación

```bash
./scripts/compilar.sh src/mi_documento.tex
```

El PDF resultante se guardará en la carpeta `build/`.

## Plantillas Disponibles

### 1. Plantilla de Documento General (`plantilla_documento.tex`)
- Ideal para: Documentos generales, apuntes, ensayos
- Características:
  - Una columna
  - Tabla de contenidos
  - Soporte para matemáticas
  - Enlaces internos

### 2. Plantilla de Artículo Científico (`plantilla_articulo.tex`)
- Ideal para: Papers, artículos académicos
- Características:
  - Dos columnas
  - Resumen (abstract)
  - Palabras clave
  - Sección de referencias
  - Formato académico

### 3. Plantilla de Reporte Técnico (`plantilla_reporte.tex`)
- Ideal para: Reportes técnicos, informes, tesis
- Características:
  - Estructura por capítulos
  - Índices de figuras y tablas
  - Apéndices
  - Soporte para código fuente
  - Referencias bibliográficas

## Paquetes LaTeX Incluidos

Todas las plantillas incluyen estos paquetes esenciales:

- **inputenc**: Codificación UTF-8 para caracteres especiales
- **babel**: Soporte para idioma español
- **amsmath, amssymb, amsfonts**: Matemáticas avanzadas
- **graphicx**: Inclusión de imágenes
- **geometry**: Configuración de márgenes
- **hyperref**: Enlaces e hipervínculos

## Agregar Imágenes

1. Coloca tus imágenes en `assets/images/`

2. En tu documento LaTeX, usa:
   ```latex
   \begin{figure}[h]
       \centering
       \includegraphics[width=0.5\textwidth]{nombre_imagen.png}
       \caption{Descripción de la imagen}
       \label{fig:etiqueta}
   \end{figure}
   ```

## Limpieza de Archivos Temporales

Para limpiar archivos temporales de compilación:

```bash
cd build
rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz
```

## Ejemplo de Uso

El archivo `src/ejercicios_calculo.tex` es un ejemplo completo de un documento con:
- Múltiples secciones y subsecciones
- Fórmulas matemáticas complejas
- Ecuaciones numeradas
- Uso de comandos personalizados
- Referencias cruzadas

Puedes usarlo como referencia para aprender la sintaxis de LaTeX.

## Recursos Adicionales

- [Documentación oficial de LaTeX](https://www.latex-project.org/help/documentation/)
- [Overleaf - Editor LaTeX online](https://www.overleaf.com/)
- [Detexify - Búsqueda de símbolos LaTeX](http://detexify.kirelabs.org/classify.html)
- [CTAN - Comprehensive TeX Archive Network](https://www.ctan.org/)

## Solución de Problemas

### Error: "command not found: pdflatex"
- Asegúrate de tener LaTeX instalado correctamente
- Verifica que la ruta de LaTeX esté en tu PATH

### El PDF no muestra las referencias correctamente
- Compila el documento dos veces para actualizar las referencias

### Caracteres especiales no se muestran correctamente
- Verifica que el archivo esté guardado en codificación UTF-8

## Licencia

Este proyecto está bajo la licencia especificada en el archivo LICENSE.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias para mejorar las plantillas o agregar nuevas, no dudes en crear un pull request.
