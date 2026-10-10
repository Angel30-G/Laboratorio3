#!/bin/bash
cd /home/angel/Documentos/mi-servidor-node

# Descargar metadatos de GitHub sin fusionar
git fetch origin main

# Almacenar los hashes local y remoto
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse @{u})

# Comparar versiones
if [ "$LOCAL" != "$REMOTE" ]; then
    echo "Se detectaron cambios en GitHub. Actualizando repositorio..."
    git pull origin main
    # Reiniciar el servicio de Node para aplicar los cambios en vivo
    sudo systemctl restart helloworld-node.service
else
    echo "El código local ya se encuentra actualizado."
fi
