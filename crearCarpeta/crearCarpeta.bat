@echo off
title Directorios
echo Bienvenido...
echo.
cd C:\Users\Usuario\Desktop\programBatch\creaCarpeta\
dir /b
echo.
echo Si deceas crear una nueva carpeta presiona una tecla...
echo.
pause > nul
md "Nueva carpeta"
echo La carpeta fue creada.
echo.
cd C:\Users\Usuario\Desktop\programBatch\project\
dir /b
echo.
pause > nul
exit