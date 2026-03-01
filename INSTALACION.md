# Guía de Instalación y Configuración

## 1. Instalar LaTeX

### Windows - MiKTeX (Recomendado)

1. **Descargar:**
   - Ve a https://miktex.org/download
   - Descarga "Basic MiKTeX Installer" (aprox. 200 MB)

2. **Instalar:**
   - Ejecuta el instalador
   - **Importante:** Selecciona "**Install missing packages on-the-fly: Yes**"
   - Esto instalará automáticamente paquetes adicionales cuando los necesites

3. **Verificar instalación:**
   ```bash
   pdflatex --version
   ```
   Deberías ver algo como: `pdfTeX 3.x (MiKTeX 24.x)`

### Alternativa: TeX Live

1. **Descargar:**
   - Ve a https://www.tug.org/texlive/windows.html
   - Descarga el instalador (más pesado, ~4 GB)

2. **Instalar:**
   - Ejecuta el instalador
   - Instalación completa con todos los paquetes

## 2. Extensión de VSCode

Asegúrate de tener instalada la extensión:

**LaTeX Workshop** por James Yu
- ID: `james-yu.latex-workshop`
- Instálala desde el marketplace de VSCode

## 3. Configuración del Proyecto

El proyecto ya tiene la configuración en `.vscode/settings.json`:
- Compila con pdfLaTeX
- Guarda PDFs en la carpeta `build/`
- Limpia archivos temporales automáticamente

## 4. Cómo Compilar

### Desde VSCode:

1. **Abre un archivo .tex** (ejemplo: `src/ejercicios_calculo.tex`)

2. **Compila:**
   - **Opción 1:** Presiona `Ctrl + Alt + B` (Windows/Linux) o `Cmd + Alt + B` (Mac)
   - **Opción 2:** Click en el botón verde "Build LaTeX project" en la barra lateral
   - **Opción 3:** Haz clic derecho → "Build LaTeX project"

3. **Ver el PDF:**
   - **Opción 1:** Presiona `Ctrl + Alt + V` para abrir el PDF
   - **Opción 2:** Click en el ícono de "View LaTeX PDF" en la barra lateral

### Desde la Terminal:

```bash
# Windows
scripts\compilar.bat src\mi_documento.tex

# Git Bash / Linux / Mac
./scripts/compilar.sh src/mi_documento.tex
```

El PDF se generará en `build/mi_documento.pdf`

## 5. Solución de Problemas

### Error: "pdflatex: command not found"

**Solución:**
- Verifica que LaTeX esté instalado: `pdflatex --version`
- Si no aparece, reinstala MiKTeX
- Reinicia VSCode después de instalar

### Error: "Missing package"

**Solución con MiKTeX:**
- MiKTeX debería instalar paquetes automáticamente
- Si aparece un diálogo, click en "Install"

**Solución manual:**
```bash
# MiKTeX Package Manager
mpm --install <nombre-paquete>
```

### Error: Caracteres especiales no se muestran

**Solución:**
- Asegúrate que el archivo esté en UTF-8
- En VSCode: Click en "UTF-8" en la barra inferior
- Si dice otra cosa, cambia a UTF-8

### El PDF no se actualiza

**Solución:**
- Cierra el visor de PDF
- Compila de nuevo
- En VSCode, usa el visor integrado en lugar de uno externo

## 6. Flujo de Trabajo Recomendado

1. **Copia una plantilla:**
   ```bash
   cp templates/plantilla_documento.tex src/mi_proyecto.tex
   ```

2. **Edita el contenido** en VSCode

3. **Compila:** `Ctrl + Alt + B`

4. **Visualiza:** `Ctrl + Alt + V`

5. **Tu PDF estará en:** `build/mi_proyecto.pdf`

## 7. Recursos Adicionales

- **Documentación LaTeX:** https://www.latex-project.org/help/documentation/
- **Overleaf Tutoriales:** https://www.overleaf.com/learn
- **Símbolos LaTeX:** http://detexify.kirelabs.org/
- **Generador de Tablas:** https://www.tablesgenerator.com/

## 8. Alternativa Online: Overleaf

Si prefieres no instalar nada localmente:

1. Ve a https://www.overleaf.com/
2. Crea una cuenta gratuita
3. Crea un nuevo proyecto
4. Sube tus archivos .tex
5. Compila online

## Ayuda

Si tienes problemas:
1. Revisa el archivo `build/nombre_archivo.log` para ver errores detallados
2. Consulta la `GUIA_RAPIDA_LATEX.md` para sintaxis
3. Consulta el `README.md` para estructura del proyecto
