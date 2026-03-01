#!/bin/bash

# Script de compilación para documentos LaTeX
# Uso: ./compilar.sh <archivo.tex>

# Colores para mensajes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sin color

# Función para mostrar el uso
mostrar_uso() {
    echo "Uso: $0 <archivo.tex>"
    echo "Ejemplo: $0 src/mi_documento.tex"
    exit 1
}

# Verificar que se proporcionó un archivo
if [ $# -eq 0 ]; then
    echo -e "${RED}Error: Debes proporcionar un archivo .tex${NC}"
    mostrar_uso
fi

ARCHIVO=$1

# Verificar que el archivo existe
if [ ! -f "$ARCHIVO" ]; then
    echo -e "${RED}Error: El archivo '$ARCHIVO' no existe${NC}"
    exit 1
fi

# Verificar que es un archivo .tex
if [[ ! "$ARCHIVO" =~ \.tex$ ]]; then
    echo -e "${RED}Error: El archivo debe tener extensión .tex${NC}"
    exit 1
fi

# Obtener el nombre base del archivo (sin ruta ni extensión)
NOMBRE_BASE=$(basename "$ARCHIVO" .tex)
DIR_BASE=$(dirname "$ARCHIVO")

# Crear directorio build si no existe
mkdir -p build

echo -e "${YELLOW}Compilando: $ARCHIVO${NC}"
echo "-----------------------------------"

# Intentar compilar con latexmk primero (método recomendado)
if command -v latexmk &> /dev/null; then
    echo -e "${GREEN}Usando latexmk...${NC}"
    latexmk -pdf -output-directory=build -interaction=nonstopmode "$ARCHIVO"
    RESULTADO=$?

    # Limpiar archivos temporales
    latexmk -c -output-directory=build

elif command -v pdflatex &> /dev/null; then
    echo -e "${GREEN}Usando pdflatex...${NC}"

    # Compilar dos veces para referencias correctas
    pdflatex -output-directory=build -interaction=nonstopmode "$ARCHIVO"
    pdflatex -output-directory=build -interaction=nonstopmode "$ARCHIVO"
    RESULTADO=$?

    # Limpiar archivos temporales
    cd build
    rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz
    cd ..

else
    echo -e "${RED}Error: No se encontró latexmk ni pdflatex${NC}"
    echo "Por favor instala una distribución LaTeX (MiKTeX, TeX Live, MacTeX)"
    exit 1
fi

# Verificar el resultado
if [ $RESULTADO -eq 0 ]; then
    echo "-----------------------------------"
    echo -e "${GREEN}Compilación exitosa!${NC}"
    echo -e "PDF generado: ${GREEN}build/${NOMBRE_BASE}.pdf${NC}"
else
    echo "-----------------------------------"
    echo -e "${RED}Error en la compilación${NC}"
    echo "Revisa el archivo build/${NOMBRE_BASE}.log para más detalles"
    exit 1
fi
