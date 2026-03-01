# Guía Rápida de Normas APA 7ma Edición

## 📋 Formato General del Documento

### Configuración de Página
- **Papel:** Tamaño carta (21.59 cm × 27.94 cm / 8.5" × 11")
- **Márgenes:** 2.54 cm (1 pulgada) en todos los lados
- **Fuente:** Times New Roman 12 puntos
- **Interlineado:** Doble en todo el documento
- **Alineación:** A la izquierda (texto sin justificar)
- **Sangría:** Primera línea de cada párrafo con sangría de 1.27 cm (0.5")

### Paginación
- Números en la esquina superior derecha
- La portada cuenta como página 1
- No se coloca número en la portada

## 📄 Estructura del Trabajo

### Orden de las Secciones

1. **Portada** (obligatoria)
2. **Resumen** (Abstract) - página 2
3. **Tabla de Contenido** (opcional)
4. **Cuerpo del Trabajo**
   - Introducción (sin título "Introducción")
   - Método
   - Resultados
   - Discusión
   - Conclusiones
5. **Referencias** (nueva página)
6. **Apéndices** (si aplica)

### Portada (Formato Estudiantes)

```
Título del Trabajo en Mayúsculas y Minúsculas
Centrado, Negrita

Nombre Completo del Estudiante
Afiliación Institucional
Nombre del Curso: Código del Curso
Nombre del Profesor
Fecha de Entrega (Día, Mes, Año)
```

### Resumen (Abstract)

- Ubicación: Página 2
- Título: "Resumen" centrado y en negrita
- Extensión: 150-250 palabras
- Formato: Párrafo único, sin sangría
- Contenido: Propósito, métodos, resultados, conclusiones
- Palabras clave: 3-5 palabras en cursiva después del resumen

## 📐 Niveles de Títulos

APA 7 define 5 niveles de títulos:

| Nivel | Formato | Ejemplo LaTeX |
|-------|---------|---------------|
| **1** | Centrado, Negrita, Mayúsculas/Minúsculas | `\section{Título}` |
| **2** | Izquierda, Negrita, Mayúsculas/Minúsculas | `\subsection{Título}` |
| **3** | Izquierda, Negrita, Cursiva, Mayúsculas/Minúsculas | `\subsubsection{Título}` |
| **4** | Sangría, Negrita, Mayúsculas/Minúsculas, Punto final. | Manual |
| **5** | Sangría, Negrita, Cursiva, Mayúsculas/Minúsculas, Punto final. | Manual |

## 📊 Tablas en Formato APA

### Estructura

```latex
\begin{table}[h]
    \centering
    \caption{Título Descriptivo de la Tabla en Cursiva}
    \label{tab:nombre}
    \begin{tabular}{@{}lcc@{}}
        \toprule
        Encabezado 1 & Encabezado 2 & Encabezado 3 \\
        \midrule
        Dato 1 & Dato 2 & Dato 3 \\
        Dato 4 & Dato 5 & Dato 6 \\
        \bottomrule
    \end{tabular}

    \vspace{6pt}
    \small\textit{Nota.} Información adicional sobre la tabla.
\end{table}
```

### Elementos Clave
- **Número:** "Tabla 1", "Tabla 2" (en cursiva)
- **Título:** Descriptivo, en cursiva, debajo del número
- **Líneas:** Solo horizontales (superior, debajo encabezados, inferior)
- **Notas:** Debajo de la tabla, en cursiva
  - *Nota general:* `\textit{Nota.} Texto...`
  - *Nota específica:* `\textit{Nota.} $^a$ Texto...`
  - *Nota de probabilidad:* `\textit{Nota.} $*p < .05$`

## 🖼️ Figuras en Formato APA

### Estructura

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.7\textwidth]{imagen.png}
    \caption{Título Descriptivo de la Figura en Cursiva}
    \label{fig:nombre}

    \vspace{6pt}
    \small\textit{Nota.} Información adicional.
\end{figure}
```

### Elementos Clave
- **Número:** "Figura 1", "Figura 2" (en cursiva)
- **Título:** Descriptivo, en cursiva, debajo de la figura
- **Notas:** Información sobre copyright, adaptaciones, etc.

## 📝 Citas en el Texto

### Cita Textual Corta (menos de 40 palabras)

Entre comillas dobles, dentro del párrafo:

```latex
Según García (2020), ``las citas cortas se incluyen
entre comillas'' (p. 45).
```

o

```latex
``Las citas cortas se incluyen entre comillas''
(García, 2020, p. 45).
```

### Cita Textual Larga (40 palabras o más)

Bloque independiente, sin comillas, con sangría:

```latex
\begin{quote}
    Las citas largas se presentan en un bloque
    separado, sin comillas, con sangría de 0.5
    pulgadas. El interlineado es doble. La cita
    va después del punto final. (García, 2020, p. 156)
\end{quote}
```

### Paráfrasis

Sin comillas, idea con palabras propias:

```latex
Los estudios demuestran que... (García, 2020).
```

o

```latex
García (2020) demostró que...
```

## 👥 Reglas Según Número de Autores

### Un Autor
- **Primera cita:** García (2020)
- **Citas posteriores:** García (2020)

### Dos Autores
- **Primera cita:** García y López (2020)
- **Citas posteriores:** García y López (2020)
- **Entre paréntesis:** (García & López, 2020)

### Tres o Más Autores
- **Primera cita:** García et al. (2020)
- **Citas posteriores:** García et al. (2020)

**Nota:** En APA 7, siempre se usa "et al." desde la primera cita (cambio respecto a APA 6)

### Autor Corporativo
- **Primera cita:** Organización Mundial de la Salud (OMS, 2020)
- **Citas posteriores:** OMS (2020)

### Sin Autor
- Use las primeras palabras del título entre comillas o en cursiva:
  - Artículo: ("Título del Artículo", 2020)
  - Libro: (*Título del Libro*, 2020)

## 📚 Referencias

### Formato General

Sangría francesa de 1.27 cm (0.5"):

```latex
\noindent
\hangindent=1.27cm
Autor, A. A. (Año). Título. Información.
```

### Libro

```
Apellido, A. A., & Apellido, B. B. (2020). Título del libro
    en cursiva (2.ª ed.). Editorial.
```

### Artículo de Revista

```
Apellido, A. A. (2019). Título del artículo. Nombre de la
    Revista en Cursiva, volumen(número), páginas.
    https://doi.org/xx.xxxx
```

### Capítulo de Libro

```
Apellido, A. A. (2021). Título del capítulo. En B. B. Editor
    (Ed.), Título del libro (pp. 123-145). Editorial.
```

### Página Web

```
Apellido, A. A. (2020, 15 de enero). Título de la página.
    Nombre del Sitio. URL
```

### Artículo de Periódico (Online)

```
Apellido, A. A. (2020, 20 de marzo). Título del artículo.
    Nombre del Periódico. URL
```

### Tesis o Disertación

```
Apellido, A. A. (2019). Título de la tesis [Tesis doctoral,
    Universidad]. Repositorio Institucional. URL
```

## 🔗 DOI y URL

- **DOI preferido:** Siempre usar cuando esté disponible
- **Formato DOI:** https://doi.org/xx.xxxx
- **URL:** Incluir cuando no hay DOI
- **No incluir:** "Recuperado de", "Consultado el" (eliminado en APA 7)
- **Excepciones:** Solo usar "Recuperado de" si la fuente puede cambiar (wikis, blogs)

## ⚠️ Diferencias Importantes: APA 6 vs APA 7

| Aspecto | APA 6 | APA 7 |
|---------|-------|-------|
| **et al.** | Desde 6+ autores | Desde 3+ autores |
| **Primera cita 3-5 autores** | Todos los nombres | et al. |
| **URL** | "Recuperado de" | Solo la URL |
| **DOI** | doi:xx.xxxx | https://doi.org/xx.xxxx |
| **Ubicación editorial** | Ciudad, Estado: Editorial | Solo Editorial |

## 💡 Consejos Importantes

1. **Consistencia:** Mantén el formato uniforme en todo el documento
2. **Sangría francesa:** En referencias, primera línea sin sangría, resto con sangría
3. **Cursivas:** Títulos de libros, revistas, volumen de revista
4. **Comillas:** Títulos de artículos, capítulos
5. **Mayúsculas:** Solo inicial en títulos (excepto nombres propios)
6. **Fechas:** Día, mes y año (20 de enero de 2020)
7. **Números:** Del 1-9 en palabras, 10+ en cifras
8. **Punto final:** Todas las referencias terminan en punto

## 📖 Recursos Adicionales

- **Manual APA 7:** Publication Manual of the American Psychological Association (7th ed.)
- **APA Style:** https://apastyle.apa.org/
- **Formato español:** Normas APA adaptadas al español

## 🎯 Lista de Verificación

Antes de entregar tu trabajo:

- [ ] Márgenes de 2.54 cm en todos los lados
- [ ] Fuente Times New Roman 12 pt
- [ ] Interlineado doble en todo el documento
- [ ] Sangría de 1.27 cm en primera línea de párrafos
- [ ] Portada con toda la información requerida
- [ ] Resumen de 150-250 palabras
- [ ] Títulos con formato correcto según nivel
- [ ] Tablas y figuras numeradas y con título en cursiva
- [ ] Citas correctamente formateadas
- [ ] Referencias con sangría francesa
- [ ] Referencias en orden alfabético
- [ ] Enlaces sin colores (negro, sin subrayado)
- [ ] Página de referencias en nueva página
