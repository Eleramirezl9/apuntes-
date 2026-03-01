@echo off
REM Script de compilación para documentos LaTeX en Windows
REM Uso: compilar.bat <archivo.tex>

setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Error: Debes proporcionar un archivo .tex
    echo Uso: %~nx0 ^<archivo.tex^>
    echo Ejemplo: %~nx0 src\mi_documento.tex
    exit /b 1
)

set ARCHIVO=%~1

REM Verificar que el archivo existe
if not exist "%ARCHIVO%" (
    echo Error: El archivo '%ARCHIVO%' no existe
    exit /b 1
)

REM Verificar que es un archivo .tex
echo %ARCHIVO% | findstr /i "\.tex$" >nul
if errorlevel 1 (
    echo Error: El archivo debe tener extension .tex
    exit /b 1
)

REM Obtener el nombre base del archivo
for %%F in ("%ARCHIVO%") do set NOMBRE_BASE=%%~nF

REM Crear directorio build si no existe
if not exist "build" mkdir build

echo ===================================
echo Compilando: %ARCHIVO%
echo ===================================

REM Intentar compilar con latexmk primero
where latexmk >nul 2>&1
if %errorlevel% equ 0 (
    echo Usando latexmk...
    latexmk -pdf -output-directory=build -interaction=nonstopmode "%ARCHIVO%"
    set RESULTADO=!errorlevel!

    REM Limpiar archivos temporales
    latexmk -c -output-directory=build

) else (
    where pdflatex >nul 2>&1
    if %errorlevel% equ 0 (
        echo Usando pdflatex...

        REM Compilar dos veces para referencias correctas
        pdflatex -output-directory=build -interaction=nonstopmode "%ARCHIVO%"
        pdflatex -output-directory=build -interaction=nonstopmode "%ARCHIVO%"
        set RESULTADO=!errorlevel!

        REM Limpiar archivos temporales
        cd build
        del /Q *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz 2>nul
        cd ..

    ) else (
        echo Error: No se encontro latexmk ni pdflatex
        echo Por favor instala una distribucion LaTeX (MiKTeX, TeX Live)
        exit /b 1
    )
)

echo ===================================
if !RESULTADO! equ 0 (
    echo Compilacion exitosa!
    echo PDF generado: build\%NOMBRE_BASE%.pdf
    exit /b 0
) else (
    echo Error en la compilacion
    echo Revisa el archivo build\%NOMBRE_BASE%.log para mas detalles
    exit /b 1
)
