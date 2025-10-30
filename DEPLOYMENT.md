# 🚀 Deployment Guide - JVS Cloud

## Configuración de Vercel con GitHub Actions

### 📋 Requisitos Previos
- Cuenta en [Vercel](https://vercel.com)
- Repositorio en GitHub
- Node.js instalado localmente

### 🔧 Configuración Inicial

#### 1. Ejecutar Script de Configuración
```bash
# En Linux/Mac
chmod +x setup-vercel.sh
./setup-vercel.sh

# En Windows
powershell -ExecutionPolicy Bypass -File setup-vercel.ps1
```

#### 2. Configurar Secretos en GitHub
Ve a: `https://github.com/JulianPiedrahita/jvs_cloud/settings/secrets/actions`

Añade estos secretos:
- `VERCEL_TOKEN`: Token de Vercel (obtén desde https://vercel.com/account/tokens)
- `VERCEL_ORG_ID`: ID de tu organización (mostrado en el script)
- `VERCEL_PROJECT_ID`: ID del proyecto (mostrado en el script)

### 🔄 Flujo de Deployment

1. **Push a `main`** → Trigger automático del GitHub Action
2. **GitHub Actions:**
   - ✅ Instala Flutter
   - ✅ Instala dependencias (`flutter pub get`)
   - ✅ Construye la app web (`flutter build web`)
   - ✅ Instala Vercel CLI
   - ✅ Despliega a Vercel

### 📁 Archivos de Configuración

| Archivo | Propósito |
|---------|-----------|
| `.github/workflows/deploy.yml` | Pipeline de GitHub Actions |
| `vercel.json` | Configuración de Vercel |
| `.vercelignore` | Archivos a ignorar en deployment |
| `.vercel/project.json` | Configuración del proyecto vinculado |

### 🌐 URLs
- **Production**: Se generará automáticamente después del primer deploy
- **Preview**: Se crea automáticamente para Pull Requests

### 🔍 Monitoring
- **Vercel Dashboard**: https://vercel.com/dashboard
- **GitHub Actions**: https://github.com/JulianPiedrahita/jvs_cloud/actions

### 🛠 Troubleshooting

#### Error: "Repository not found"
- Verifica que los secretos estén configurados correctamente
- Asegúrate de que el token de Vercel tenga permisos

#### Error: "Build failed"
- Revisa los logs en GitHub Actions
- Verifica que `flutter build web` funcione localmente

#### Error: "Project not linked"
- Ejecuta `vercel link` localmente
- Confirma que `.vercel/project.json` existe

### 📚 Comandos Útiles

```bash
# Despliegue manual local
vercel --prod

# Ver logs de deployment
vercel logs [deployment-url]

# Listar deployments
vercel ls

# Ver información del proyecto
vercel inspect [deployment-url]
```