# Script para configurar Vercel para el proyecto Flutter JVS Cloud
Write-Host "Configurando Vercel para JVS Cloud..." -ForegroundColor Green

# Verificar si Vercel CLI esta instalado
$vercelExists = Get-Command vercel -ErrorAction SilentlyContinue
if (-not $vercelExists) {
    Write-Host "Vercel CLI no esta instalado. Instalando..." -ForegroundColor Red
    npm install -g vercel@latest
}

Write-Host "Vercel CLI encontrado" -ForegroundColor Green

# Hacer login en Vercel (si no esta logueado)
Write-Host "Verificando autenticacion de Vercel..." -ForegroundColor Yellow
$whoami = vercel whoami 2>$null
if (-not $whoami) {
    Write-Host "Haciendo login en Vercel..." -ForegroundColor Yellow
    vercel login
}

Write-Host "Autenticado en Vercel" -ForegroundColor Green

# Vincular el proyecto
Write-Host "Vinculando proyecto con Vercel..." -ForegroundColor Yellow
vercel link

Write-Host "Informacion del proyecto:" -ForegroundColor Cyan
Get-Content .vercel\project.json

Write-Host ""
Write-Host "Configuracion de GitHub Secrets necesaria:" -ForegroundColor Cyan
Write-Host "1. Ve a: https://github.com/JulianPiedrahita/jvs_cloud/settings/secrets/actions" -ForegroundColor White
Write-Host "2. Anade estos secretos:" -ForegroundColor White
Write-Host ""

$projectJson = Get-Content .vercel\project.json | ConvertFrom-Json
Write-Host "   VERCEL_TOKEN: (obten desde https://vercel.com/account/tokens)" -ForegroundColor Yellow
Write-Host "   VERCEL_ORG_ID: $($projectJson.orgId)" -ForegroundColor Yellow
Write-Host "   VERCEL_PROJECT_ID: $($projectJson.projectId)" -ForegroundColor Yellow
Write-Host ""
Write-Host "Configuracion completa!" -ForegroundColor Green