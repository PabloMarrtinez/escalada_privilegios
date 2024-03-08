#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <contraseña> <carpeta_destino>"
    exit 1
fi

PASSWORD="$1"
DEST_FOLDER="$2"

if [ ! -d "$DEST_FOLDER" ]; then
    echo "La carpeta destino no existe: $DEST_FOLDER"
    exit 2
fi

STORED_PASSWORD=$(cat /root/password)

if [[ "$PASSWORD" == "$STORED_PASSWORD" ]]; then
    cp -r /var/log/* "$DEST_FOLDER"
    echo "Los archivos han sido copiados exitosamente a $DEST_FOLDER."
else
    echo "Contraseña incorrecta."
    exit 3
fi
