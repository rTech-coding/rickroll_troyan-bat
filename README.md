# 🎭 Alerta del Sistema (Rickroll Prank Script)

Un script en lote (`.bat`) diseñado para Windows que simula de forma inofensiva una alerta crítica de virus en el sistema para luego revelar una broma y reproducir la famosa animación ASCII de Rick Astley.

---

## 🛠️ Características

* **Alertas nativas de Windows:** Utiliza cuadros de diálogo VBScript (`msgbox`) para dar una apariencia realista de error del sistema.
* **Animación en Consola:** Transmite de forma fluida la animación de Rick Astley directamente en la terminal.
* **Limpieza automática:** No deja rastro en el sistema; genera y elimina sus propios archivos temporales (`.vbs`) automáticamente.

---

## ⚙️ Requisitos de Funcionamiento

Para que el script se ejecute correctamente, el equipo debe cumplir con lo siguiente:
* **Sistema Operativo:** Windows 10, Windows 11 o versiones que soporten `wscript`.
* **Conexión a Internet:** Requerida para que el comando `curl` pueda transmitir la animación en vivo desde el servidor externo.

---

## 📝 Código Fuente

```cmd
@echo off
title Alerta del Sistema
cls

:: Crear y mostrar la primera alerta falsa de virus
echo x=msgbox("Se ha detectado un virus troyano en el sistema. ¿Desea formatear el disco duro para salvar los archivos?", 2+16, "ERROR GRAVE DEL SISTEMA") > %temp%\mensaje1.vbs
wscript %temp%\mensaje1.vbs
del %temp%\mensaje1.vbs

:: Crear y mostrar la revelación de la broma
echo x=msgbox("Ha sido rickrolleado por anonymus//x410891.", 0+64, "Informacion") > %temp%\mensaje2.vbs
start wscript %temp%\mensaje2.vbs

:: Lanzar la animación de Rick Astley en la consola
cls
curl ascii.live/rick

:: Limpiar el archivo temporal al terminar
del %temp%\mensaje2.vbs
exit
```

---

## 🚀 Instrucciones de Uso

1. Haz clic derecho en tu escritorio o carpeta y selecciona **Nuevo > Documento de texto**.
2. Copia el código fuente de arriba y pégalo dentro del archivo de texto.
3. Guarda el archivo con el nombre que desees, pero asegúrate de cambiar la extensión a `.bat` (por ejemplo: `alerta.bat`).
4. Haz doble clic en el archivo `.bat` para ejecutarlo.

---

## 🔍 ¿Cómo funciona paso a paso?

1. **`@echo off` & `title`:** Oculta los comandos internos mientras se ejecutan y renombra la ventana de la consola.
2. **Generación del Susto (`mensaje1.vbs`):** Escribe un script VBS temporal en la carpeta `%temp%` con botones de Abortar/Reintentar/Ignorar y un ícono de error crítico. El script se detiene aquí hasta que el usuario presiona un botón.
3. **Revelación (`mensaje2.vbs`):** Borra el primer aviso, crea uno nuevo informando de la broma y lo lanza en segundo plano utilizando `start` para no bloquear el flujo de la consola.
4. **El Rickroll (`curl`):** Limpia la pantalla y realiza una petición HTTP al servidor `ascii.live/rick`, el cual devuelve caracteres en bucle simulando el video musical.
5. **Autolimpieza:** Al cerrar o terminar el proceso, elimina el segundo archivo temporal para mantener el almacenamiento limpio.

---

## Creado por rTech
