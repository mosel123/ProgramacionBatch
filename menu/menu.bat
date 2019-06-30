@echo off
title Menu
echo Bienvenido...
echo.

:Menu
echo Opciones:
echo.
echo 1 - Crear una carpeta.
echo 2 - Borrar una carpeta (con su contenido).
echo 3 - Borrar un archivo especifico.
echo 4 - Crear un archivo.
echo 5 - Salir del programa.
echo.
echo Ingresa una opcion: 
set /p opcion=
if %opcion% ==1 goto opcion1 
if %opcion% ==2 goto opcion2 
if %opcion% ==3 goto opcion3 
if %opcion% ==4 goto opcion4 
if %opcion% ==5 goto salir 

:opcion1
title Crear una carpeta...
cls
echo Introduce la direccion destino:
set /p direccion1=
echo.
echo Introduce el nombre de la carpeta:
set /p nombre1=
echo.
cd %direccion1:~0%
md %nombre1:~0%
echo Tarea completada.
echo.
goto main

:opcion2
title Borrar una carpeta...
cls
echo Introduce la direccion destino:
set /p direccion2=
echo.
rd /s %direccion2:~0% 
echo Tarea completada.
echo.
goto main

:opcion3
title Borrar un archivo...
cls
echo Introduce la direccion destino:
set /p direccion3=
echo.
echo Ingresa el nombre del archivo:
set /p nombre3=
echo.
cd %direccion3:~0% 
del %nombre3:~0%
echo Tarea completada.
echo.
goto main

:opcion4
title Crear una archivo...
cls
echo Introduce la direccion donde se creara el archivo:
set /p direccion=
echo.
echo Ingresa el nombre del archivo:
set /p nombre=
echo.
echo Ingresa la extencion del archivo:
set /p extencion=
echo.
cd %direccion:~0%
echo "" > "%nombre:~0%""%extencion:~0%"
echo Archivo creado.
echo.
pause > nul
goto main

:main 
goto Menu 

:salir
title Adios...
cls
echo.
echo Saliendo del programa...
pause > nul
exit