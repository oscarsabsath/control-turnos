# Script para copiar las imagenes oficiales de OneVoice27 al proyecto
$brainDir = "C:\Users\0scar\.gemini\antigravity\brain\4e9cdfa3-c1a5-4eb6-9031-db3283bf530c\.user_uploaded"
$targetDir = $PSScriptRoot

Write-Host "Iniciando copia de recursos oficiales..." -ForegroundColor Cyan

# 1. Cabecera oficial OneVoice27
$headerSrc = "$brainDir\media_1791412526544.jpg"
if (Test-Path $headerSrc) {
    Copy-Item $headerSrc "$targetDir\cabecera-onevoice.jpg" -Force
    Write-Host "✅ Cabecera copiada como cabecera-onevoice.jpg" -ForegroundColor Green
} else {
    Write-Warning "No se encontro $headerSrc"
}

# 2. Imagen Santa Biblia inferior izquierda
$bibleSrc = "$brainDir\media_1791413658534.png"
if (Test-Path $bibleSrc) {
    Copy-Item $bibleSrc "$targetDir\biblia-col-left.png" -Force
    Write-Host "✅ Santa Biblia copiada como biblia-col-left.png" -ForegroundColor Green
} else {
    Write-Warning "No se encontro $bibleSrc"
}

Write-Host "¡Listo! Ambos recursos estan listos en la carpeta del proyecto." -ForegroundColor Cyan
