# Obtener el ID del primer contenedor levantado por docker-compose
CONTAINER_ID=$(docker ps --format "{{.ID}}" | head -n 1)

# Si no se obtuvo un ID de contenedor, salir
if [ -z "$CONTAINER_ID" ]; then
  echo "No se pudo obtener el ID del contenedor."
  exit 1
fi

# Obtener la IP del contenedor
CONTAINER_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_ID)

# Si no se pudo obtener la IP, salir
if [ -z "$CONTAINER_IP" ]; then
  echo "No se pudo obtener la IP del contenedor."
  exit 1
fi

# Usar sshpass para hacer SSH al contenedor
# Reemplaza 'user' con el nombre de usuario adecuado si es diferente
sshpass -p 'user' ssh -o StrictHostKeyChecking=no user@$CONTAINER_IP
