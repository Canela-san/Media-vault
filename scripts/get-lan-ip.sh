#!/usr/bin/env bash
# Mostra o endereço IP do servidor na rede local e a URL do Jellyfin.
# Útil na hora de configurar o app na Smart TV ou no celular.

set -euo pipefail

IP=$(ip -4 addr show scope global | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n1)
PORT=$(grep -E '^JELLYFIN_PORT=' .env 2>/dev/null | cut -d '=' -f2)
PORT=${PORT:-8096}

if [ -z "$IP" ]; then
  echo "Não foi possível detectar o IP local. Rode 'ip addr' manualmente."
  exit 1
fi

echo "IP local do servidor: $IP"
echo "URL do Jellyfin:      http://$IP:$PORT"
