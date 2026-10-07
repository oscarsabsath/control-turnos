Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\0scar\.gemini\antigravity\brain\4e9cdfa3-c1a5-4eb6-9031-db3283bf530c\.user_uploaded\media_1791411987445.png"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$dstPath = Join-Path $scriptDir "cabecera-top.png"

if (Test-Path $srcPath) {
    $img = [System.Drawing.Image]::FromFile($srcPath)
    # Recortar la franja superior azul hasta la onda dorada (54% de la altura)
    $cropHeight = [int]($img.Height * 0.54)
    $rect = New-Object System.Drawing.Rectangle(0, 0, $img.Width, $cropHeight)
    $cropBmp = New-Object System.Drawing.Bitmap($img.Width, $cropHeight)
    $g = [System.Drawing.Graphics]::FromImage($cropBmp)
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.DrawImage($img, (New-Object System.Drawing.Rectangle(0, 0, $img.Width, $cropHeight)), $rect, [System.Drawing.GraphicsUnit]::Pixel)
    $g.Dispose()
    $img.Dispose()
    $cropBmp.Save($dstPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $cropBmp.Dispose()
    Write-Host "✅ Cabecera recortada exitosamente y guardada como: $dstPath" -ForegroundColor Green
} else {
    Write-Warning "No se encontro la imagen fuente en $srcPath"
}
