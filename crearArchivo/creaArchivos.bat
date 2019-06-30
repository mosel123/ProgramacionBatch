@echo off
title Creador de archivos
echo Introduce la direccion donde se creara el archivo:
set /p direccion=
echo.
echo Ingresa el nombre del archivo:
set /p nombre=
echo.
cd %direccion:~0%
echo "" > "%nombre:~0%".txt
echo.
echo Archivo creado.
echo.
pause > nul