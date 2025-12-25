#!/bin/bash

# Script de build do site Jarvis Black
# Gera a pasta public/ pronta para deploy

echo "🔧 Limpando build anterior..."
rm -rf public

echo "🏗️ Gerando site estático..."
hugo

echo "✅ Build concluído com sucesso!"

