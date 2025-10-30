#!/bin/bash

# Script para configurar Vercel para el proyecto Flutter JVS Cloud
echo "🚀 Configurando Vercel para JVS Cloud..."

# Verificar si Vercel CLI está instalado
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI no está instalado. Instalando..."
    npm install -g vercel@latest
fi

echo "✅ Vercel CLI encontrado"

# Hacer login en Vercel (si no está logueado)
echo "🔐 Verificando autenticación de Vercel..."
if ! vercel whoami &> /dev/null; then
    echo "🔑 Haciendo login en Vercel..."
    vercel login
fi

echo "✅ Autenticado en Vercel"

# Vincular el proyecto
echo "🔗 Vinculando proyecto con Vercel..."
vercel link

echo "📋 Información del proyecto:"
cat .vercel/project.json

echo ""
echo "🔧 Configuración de GitHub Secrets necesaria:"
echo "1. Ve a: https://github.com/JulianPiedrahita/jvs_cloud/settings/secrets/actions"
echo "2. Añade estos secretos:"
echo ""
echo "   VERCEL_TOKEN: (obtén desde https://vercel.com/account/tokens)"
echo "   VERCEL_ORG_ID: $(cat .vercel/project.json | grep -o '"orgId":"[^"]*' | cut -d'"' -f4)"
echo "   VERCEL_PROJECT_ID: $(cat .vercel/project.json | grep -o '"projectId":"[^"]*' | cut -d'"' -f4)"
echo ""
echo "✅ Configuración completa!"