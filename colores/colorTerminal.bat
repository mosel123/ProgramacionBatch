@echo off
title Colores
echo Bienvenido...
echo Oprime cualquier tecla para comenzar...
pause > nul
echo.

:menu
title
cls
echo Deseas ingresar o ver los colores del terminal:
echo 1 - Si
echo 2 - No
echo.
set /p opcion=
if %opcion% ==1 goto continua 
if %opcion% ==2 goto salir 

:continua
title Seleccion
cls
echo Ingresa que color deseas o selecciona mostrar un colores:
echo 1 - Ingresar un color.
echo 2 - Ver los colores.
echo 3 - Volver al menu.
echo.
set /p opcion=
if %opcion% ==1 goto ingresa 
if %opcion% ==2 goto colores 
if %opcion% ==3 goto menu 

:ingresa
title Cambio de colores
cls
echo Ingresa el codigo de los colores que deseas:
set /p codeColor=
color %codeColor:~0%
echo Que deseas hacer ahora:
echo 1 - Ingresar otro color.
echo 2 - Volver a las opciones.
echo.
set /p opcion=
if %opcion% ==1 goto ingresa 
if %opcion% ==2 goto continua

:colores
title Muestra los colores
cls
color /?
echo.
echo Presiona una tecla para continuar...
pause > nul
echo Que deseas hacer ahora:
echo 1 - Volver a ver los colores.
echo 2 - Volver a las opciones.
echo.
set /p opcion=
if %opcion% ==1 goto colores 
if %opcion% ==2 goto continua

:salir
title Adios...
cls
echo.
echo Saliendo del programa...
pause > nul
exit