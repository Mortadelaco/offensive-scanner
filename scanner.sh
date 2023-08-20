#!/bin/bash

# Función para mostrar un mensaje con formato
show_message() {
    echo -e "\e[1m$1\e[0m"  # Texto en negrita
    sleep 2
}

# Función para mostrar un mensaje con formato y pausa
show_message_with_pause() {
    echo -e "\e[1m$1\e[0m"  # Texto en negrita
    sleep 3
}

clear  # Limpiar la pantalla

echo "Bienvenido a Recon a continuacion se iniciara el script."
sleep 2

show_message "A continuación, iniciará el reconocimiento del sistema."

show_message_with_pause "Información del sistema operativo:"
uname -a

show_message_with_pause "Espacio en disco:"
df -h

show_message_with_pause "Memoria RAM:"
free -h

show_message_with_pause "Usuarios conectados:"
who


show_message_with_pause "Dirección IP:"
curl ifconfig.me

show_message_with_pause "Búsqueda de archivos posiblemente vulnerables:"

find /etc -type f \( -name "*.conf" -o -name "*.config" -o -name "*.bak" \) -exec grep -l "password" {} + | xargs ls -l

show_message "Finalización del escaneo. ¡Muchas gracias por usar este script!"
