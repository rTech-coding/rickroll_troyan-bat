@echo off
title Alerta del Sistema
cls

:: Crear y mostrar la primera alerta falsa de virus
echo x=msgbox("Se ha detectado un virus troyano en el sistema.¿Desea formatear el disco duro para salvar los archivos?", 2+16, "ERROR GRAVE DEL SISTEMA") > "%temp%\mensaje1.vbs"
wscript "%temp%\mensaje1.vbs"
del "%temp%\mensaje1.vbs"

:: Crear y mostrar la revelación de la broma
echo x=msgbox("Ha sido rickrolleado por anonymus//x410891.", 0+64, "Informacion") > "%temp%\mensaje2.vbs"
start "" wscript "%temp%\mensaje2.vbs"

:: Lanzar la animación de Rick Astley en la consola
cls
curl ascii.live/rick

:: Limpiar el archivo temporal al terminar
del "%temp%\mensaje2.vbs"
exit
