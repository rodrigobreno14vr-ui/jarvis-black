#!/bin/bash

echo "🚀 Deploy Jarvis Black"

# CONFIGURAÇÕES (ajustar no Dia 5)
SERVER_USER="usuario"
SERVER_HOST="servidor.com"
SERVER_PATH="/var/www/jarvis-black"

# Build antes de enviar
./scripts/build.sh || exit 1

echo "📡 Enviando arquivos para o servidor..."

rsync -avz --delete public/ \
  ${SERVER_USER}@${SERVER_HOST}:${SERVER_PATH}

echo "✅ Deploy concluído."
