@echo off
REM ============================================================================
REM VanaVaid Research Paper LaTeX Compilation Script
REM Author: AI Research Team
REM Date: March 28, 2026
REM ============================================================================

echo.
echo ============================================================================
echo VanaVaid Research Paper LaTeX Compiler
echo ============================================================================
echo.

REM Check if pdflatex is installed
where pdflatex >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: pdflatex is not installed or not in PATH.
    echo Please install MiKTeX (https://miktex.org) or TeX Live
    echo.
    pause
    exit /b 1
)

echo [OK] pdflatex found
echo.

REM Set working directory
cd /d "%~dp0"
echo Working directory: %cd%
echo.

REM Create output directory
if not exist "build" mkdir build
echo [OK] Created build directory
echo.

REM Compile main paper
echo ============================================================================
echo Step 1: Compiling main.tex (pass 1 of 2)
echo ============================================================================
pdflatex -interaction=nonstopmode -output-directory=build main.tex > build\main_log1.txt 2>&1
if %errorlevel% neq 0 (
    echo ERROR: First pass failed. Check build\main_log1.txt
    type build\main_log1.txt
    pause
    exit /b 1
)
echo [OK] First pass completed
echo.

echo ============================================================================
echo Step 2: Compiling main.tex (pass 2 of 2 - resolving references)
echo ============================================================================
pdflatex -interaction=nonstopmode -output-directory=build main.tex > build\main_log2.txt 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Second pass failed. Check build\main_log2.txt
    type build\main_log2.txt
    pause
    exit /b 1
)
echo [OK] Second pass completed
echo.

REM Compile supplementary materials
echo ============================================================================
echo Step 3: Compiling supplementary_materials.tex (pass 1 of 2)
echo ============================================================================
pdflatex -interaction=nonstopmode -output-directory=build supplementary_materials.tex > build\supp_log1.txt 2>&1
if %errorlevel% neq 0 (
    echo ERROR: First pass failed. Check build\supp_log1.txt
    type build\supp_log1.txt
    pause
    exit /b 1
)
echo [OK] First pass completed
echo.

echo ============================================================================
echo Step 4: Compiling supplementary_materials.tex (pass 2 of 2)
echo ============================================================================
pdflatex -interaction=nonstopmode -output-directory=build supplementary_materials.tex > build\supp_log2.txt 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Second pass failed. Check build\supp_log2.txt
    type build\supp_log2.txt
    pause
    exit /b 1
)
echo [OK] Second pass completed
echo.

REM Copy PDFs to root directory
echo ============================================================================
echo Step 5: Copying output PDFs
echo ============================================================================
if exist "build\main.pdf" (
    copy "build\main.pdf" "main.pdf" > nul
    echo [OK] main.pdf created
) else (
    echo ERROR: main.pdf not found in build directory
    pause
    exit /b 1
)

if exist "build\supplementary_materials.pdf" (
    copy "build\supplementary_materials.pdf" "supplementary_materials.pdf" > nul
    echo [OK] supplementary_materials.pdf created
) else (
    echo ERROR: supplementary_materials.pdf not found in build directory
    pause
    exit /b 1
)
echo.

REM Clean up auxiliary files
echo ============================================================================
echo Step 6: Cleaning auxiliary files
echo ============================================================================
del /q build\*.aux build\*.log build\*.out build\*.toc build\*.synctex.gz 2>nul
echo [OK] Cleaned auxiliary files
echo.

REM Final summary
echo ============================================================================
echo COMPILATION SUCCESSFUL!
echo ============================================================================
echo.
echo Output files created:
echo   - main.pdf (Main research paper)
echo   - supplementary_materials.pdf (Supplementary materials)
echo.
echo Temporary files stored in: build\
echo.
echo To view the papers:
echo   type "main.pdf" in your file explorer or use your PDF viewer
echo.
pause
