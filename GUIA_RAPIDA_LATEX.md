# Guía Rápida de LaTeX

## Sintaxis Básica

### Estructura de un Documento

```latex
\documentclass[12pt, a4paper]{article}
\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}

\title{Mi Título}
\author{Mi Nombre}
\date{\today}

\begin{document}
\maketitle

% Tu contenido aquí

\end{document}
```

## Secciones y Subsecciones

```latex
\section{Título de Sección}
\subsection{Título de Subsección}
\subsubsection{Título de Subsubsección}
```

## Formato de Texto

```latex
\textbf{Texto en negrita}
\textit{Texto en cursiva}
\underline{Texto subrayado}
\texttt{Texto monoespacio}
```

## Listas

### Lista con viñetas
```latex
\begin{itemize}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{itemize}
```

### Lista numerada
```latex
\begin{enumerate}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{enumerate}
```

## Matemáticas

### Modo matemático en línea
```latex
El número $\pi$ es aproximadamente 3.14159
```

### Ecuaciones centradas
```latex
\[
    E = mc^2
\]
```

### Ecuaciones numeradas
```latex
\begin{equation}
    \int_{0}^{\infty} e^{-x} dx = 1
\end{equation}
```

### Símbolos matemáticos comunes

| Símbolo | Código |
|---------|--------|
| α | `\alpha` |
| β | `\beta` |
| π | `\pi` |
| ∞ | `\infty` |
| ∑ | `\sum` |
| ∫ | `\int` |
| ≤ | `\leq` |
| ≥ | `\geq` |
| ≠ | `\neq` |
| × | `\times` |
| ÷ | `\div` |
| ± | `\pm` |
| √ | `\sqrt{x}` |
| ² | `x^2` |
| ₂ | `x_2` |

### Fracciones
```latex
\frac{numerador}{denominador}
```

### Matrices
```latex
\begin{bmatrix}
    a & b \\
    c & d
\end{bmatrix}
```

### Entornos matemáticos múltiples

```latex
\begin{align}
    x &= 5 \\
    y &= 10 \\
    z &= x + y = 15
\end{align}
```

## Imágenes

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.5\textwidth]{imagen.png}
    \caption{Descripción de la imagen}
    \label{fig:etiqueta}
\end{figure}
```

Para referenciar: `Como se ve en la Figura \ref{fig:etiqueta}`

## Tablas

```latex
\begin{table}[h]
    \centering
    \begin{tabular}{|c|c|c|}
        \hline
        Columna 1 & Columna 2 & Columna 3 \\
        \hline
        Dato 1 & Dato 2 & Dato 3 \\
        Dato 4 & Dato 5 & Dato 6 \\
        \hline
    \end{tabular}
    \caption{Descripción de la tabla}
    \label{tab:etiqueta}
\end{table}
```

### Alineación en tablas
- `l` - izquierda
- `c` - centro
- `r` - derecha

## Referencias Cruzadas

```latex
% Definir etiqueta
\section{Introducción}
\label{sec:intro}

% Referenciar
Como se mencionó en la Sección \ref{sec:intro}
```

## Código Fuente

```latex
\begin{lstlisting}[language=Python]
def hola_mundo():
    print("Hola, mundo!")
\end{lstlisting}
```

## Citas y Referencias

```latex
% En el texto
Según \cite{autor2020}, ...

% Al final del documento
\begin{thebibliography}{9}
\bibitem{autor2020}
Apellido, N. (2020). \textit{Título del libro}. Editorial.
\end{thebibliography}
```

## Enlaces e Hipervínculos

```latex
\href{https://www.ejemplo.com}{Texto del enlace}
\url{https://www.ejemplo.com}
```

## Espaciado

```latex
% Salto de línea
\\

% Nueva página
\newpage

% Espacio vertical
\vspace{1cm}

% Espacio horizontal
\hspace{2cm}
```

## Caracteres Especiales

| Carácter | Código |
|----------|--------|
| % | `\%` |
| $ | `\$` |
| & | `\&` |
| # | `\#` |
| _ | `\_` |
| { | `\{` |
| } | `\}` |

## Colores

```latex
% Añadir al preámbulo
\usepackage{xcolor}

% Usar colores
\textcolor{red}{Texto en rojo}
\textcolor{blue}{Texto en azul}
\colorbox{yellow}{Fondo amarillo}
```

## Notas al Pie

```latex
Este es un texto con nota al pie\footnote{Contenido de la nota al pie}.
```

## Comandos Personalizados

```latex
% Definir en el preámbulo
\newcommand{\micomando}[argumentos]{definición}

% Ejemplo
\newcommand{\dx}[1]{\frac{d}{dx}\left(#1\right)}

% Usar
\dx{x^2} % Produce d/dx(x^2)
```

## Consejos Útiles

1. **Compila dos veces**: Para que las referencias se actualicen correctamente
2. **Usa etiquetas descriptivas**: `\label{sec:introduccion}` mejor que `\label{s1}`
3. **Organiza tu código**: Usa comentarios con `%`
4. **Guarda frecuentemente**: LaTeX es sensible a errores de sintaxis
5. **Revisa el log**: Si hay errores, el archivo `.log` tiene información detallada

## Recursos Online

- [Overleaf Tutoriales](https://www.overleaf.com/learn)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [Detexify - Búsqueda de símbolos](http://detexify.kirelabs.org/)
- [Tables Generator](https://www.tablesgenerator.com/)
