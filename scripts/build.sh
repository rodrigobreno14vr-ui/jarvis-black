#!/bin/bash

echo "🔧 Iniciando build do Jarvis Black..."

# Ir para a raiz do projeto
cd "$(dirname "$0")/.."

# Limpar build antigo
rm -rf public

# Gerar site
hugo --minify

if [ $? -eq 0 ]; then
  echo "✅ Build concluído com sucesso."
else
  echo "❌ Erro no build."
  exit 1
fi
