# ====================================================
# EO4 Concert Website - Poster Integration Script
# ====================================================
# Usage: .\integrate-posters.ps1
# ====================================================

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  EO4 Poster Integration Tool  " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if we are in the correct directory
if (-not (Test-Path "assets\images")) {
    Write-Host "Error: Please run this script from the website root directory" -ForegroundColor Red
    Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow
    Write-Host "Should be in: github-static-webpage\" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit
}

Write-Host "Current directory: $(Get-Location)" -ForegroundColor Green
Write-Host ""

# Ask user for poster folder path
Write-Host "Please specify the folder path where poster images are located:" -ForegroundColor Yellow
Write-Host "(Example: C:\Users\YourName\Desktop\EO4_Posters)" -ForegroundColor Gray
Write-Host ""
$posterPath = Read-Host "Poster folder path"

# Check if path exists
if (-not (Test-Path $posterPath)) {
    Write-Host ""
    Write-Host "Error: Cannot find the specified folder" -ForegroundColor Red
    Write-Host "Path: $posterPath" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit
}

Write-Host ""
Write-Host "Found poster folder" -ForegroundColor Green
Write-Host ""

# Initialize counters
$successCount = 0
$errorCount = 0

# ====================
# 1. Copy Poster 1 as Hero Background
# ====================
Write-Host "[1/4] Processing Hero background (poster-1.png)..." -ForegroundColor Cyan
$poster1Source = Join-Path $posterPath "poster-1.png"
$poster1Dest = "assets\images\hero-bg.png"

if (Test-Path $poster1Source) {
    try {
        Copy-Item $poster1Source -Destination $poster1Dest -Force
        $fileSize = (Get-Item $poster1Dest).Length / 1KB
        Write-Host "   Copied as hero-bg.png (File size: $([math]::Round($fileSize, 2)) KB)" -ForegroundColor Green
        $successCount++
        
        if ($fileSize -gt 300) {
            Write-Host "   Warning: File size exceeds 300KB, compression recommended" -ForegroundColor Yellow
        }
    } catch {
        Write-Host "   Copy failed: $($_.Exception.Message)" -ForegroundColor Red
        $errorCount++
    }
} else {
    Write-Host "   Cannot find poster-1.png" -ForegroundColor Red
    Write-Host "   Path: $poster1Source" -ForegroundColor Gray
    $errorCount++
}

Write-Host ""

# ====================
# 2. Copy Poster 2 as Group Photo
# ====================
Write-Host "[2/4] Processing group photo (poster-2.png)..." -ForegroundColor Cyan
$poster2Source = Join-Path $posterPath "poster-2.png"
$poster2Dest = "assets\images\eo4-group.png"

if (Test-Path $poster2Source) {
    try {
        Copy-Item $poster2Source -Destination $poster2Dest -Force
        $fileSize = (Get-Item $poster2Dest).Length / 1KB
        Write-Host "   Copied as eo4-group.png (File size: $([math]::Round($fileSize, 2)) KB)" -ForegroundColor Green
        $successCount++
        
        if ($fileSize -gt 200) {
            Write-Host "   Warning: File size exceeds 200KB, compression recommended" -ForegroundColor Yellow
        }
    } catch {
        Write-Host "   Copy failed: $($_.Exception.Message)" -ForegroundColor Red
        $errorCount++
    }
} else {
    Write-Host "   Cannot find poster-2.png" -ForegroundColor Red
    Write-Host "   Path: $poster2Source" -ForegroundColor Gray
    $errorCount++
}

Write-Host ""

# ====================
# 3. Copy Poster 2 as OG Image
# ====================
Write-Host "[3/4] Processing social share image (og-image.png)..." -ForegroundColor Cyan
$ogDest = "assets\images\og-image.png"

if (Test-Path $poster2Source) {
    try {
        Copy-Item $poster2Source -Destination $ogDest -Force
        $fileSize = (Get-Item $ogDest).Length / 1KB
        Write-Host "   Copied as og-image.png (File size: $([math]::Round($fileSize, 2)) KB)" -ForegroundColor Green
        $successCount++
        
        Write-Host "   Tip: Crop to 1200x630px for Facebook OG standard" -ForegroundColor Cyan
    } catch {
        Write-Host "   Copy failed: $($_.Exception.Message)" -ForegroundColor Red
        $errorCount++
    }
} else {
    Write-Host "   Cannot find poster-2.png (needed for og-image)" -ForegroundColor Red
    $errorCount++
}

Write-Host ""

# ====================
# 4. Check QR Code
# ====================
Write-Host "[4/4] Checking QR Code..." -ForegroundColor Cyan
$qrSource = Join-Path $posterPath "qr-code.png"
$qrDest = "assets\images\qr-code.png"

if (Test-Path $qrSource) {
    try {
        Copy-Item $qrSource -Destination $qrDest -Force
        $fileSize = (Get-Item $qrDest).Length / 1KB
        Write-Host "   Copied qr-code.png (File size: $([math]::Round($fileSize, 2)) KB)" -ForegroundColor Green
        $successCount++
    } catch {
        Write-Host "   Copy failed: $($_.Exception.Message)" -ForegroundColor Red
        $errorCount++
    }
} else {
    Write-Host "   Cannot find qr-code.png" -ForegroundColor Yellow
    Write-Host "   Please extract QR Code from poster manually and save as:" -ForegroundColor Gray
    Write-Host "   $qrDest" -ForegroundColor Gray
    Write-Host ""
    Write-Host "   Extraction steps:" -ForegroundColor Cyan
    Write-Host "   1. Open poster-1.png or poster-2.png with image editor" -ForegroundColor White
    Write-Host "   2. Crop the circular QR Code from bottom-right corner" -ForegroundColor White
    Write-Host "   3. Resize to 500x500px" -ForegroundColor White
    Write-Host "   4. Save as PNG format" -ForegroundColor White
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Results" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Success: $successCount files" -ForegroundColor Green
Write-Host "Failed: $errorCount files" -ForegroundColor Red
Write-Host ""

if ($successCount -gt 0) {
    Write-Host "Copied files:" -ForegroundColor Cyan
    Write-Host ""
    
    if (Test-Path "assets\images\hero-bg.png") {
        $size = (Get-Item "assets\images\hero-bg.png").Length / 1KB
        Write-Host "   [OK] hero-bg.png     ($([math]::Round($size, 2)) KB)" -ForegroundColor White
    }
    
    if (Test-Path "assets\images\eo4-group.png") {
        $size = (Get-Item "assets\images\eo4-group.png").Length / 1KB
        Write-Host "   [OK] eo4-group.png   ($([math]::Round($size, 2)) KB)" -ForegroundColor White
    }
    
    if (Test-Path "assets\images\og-image.png") {
        $size = (Get-Item "assets\images\og-image.png").Length / 1KB
        Write-Host "   [OK] og-image.png    ($([math]::Round($size, 2)) KB)" -ForegroundColor White
    }
    
    if (Test-Path "assets\images\qr-code.png") {
        $size = (Get-Item "assets\images\qr-code.png").Length / 1KB
        Write-Host "   [OK] qr-code.png     ($([math]::Round($size, 2)) KB)" -ForegroundColor White
    }
    
    Write-Host ""
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Next Steps" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Start local server to test:" -ForegroundColor Yellow
Write-Host "   python -m http.server 8000" -ForegroundColor White
Write-Host ""
Write-Host "2. Open browser:" -ForegroundColor Yellow
Write-Host "   http://localhost:8000" -ForegroundColor White
Write-Host ""
Write-Host "3. Check image display:" -ForegroundColor Yellow
Write-Host "   - Hero section background" -ForegroundColor White
Write-Host "   - Lineup section group photo" -ForegroundColor White
Write-Host "   - Tickets section QR Code" -ForegroundColor White
Write-Host ""
Write-Host "4. If images are too large, compress using:" -ForegroundColor Yellow
Write-Host "   - TinyPNG: https://tinypng.com/" -ForegroundColor White
Write-Host "   - Squoosh: https://squoosh.app/" -ForegroundColor White
Write-Host ""
Write-Host "5. For detailed instructions, see:" -ForegroundColor Yellow
Write-Host "   docs\POSTER_INTEGRATION.md" -ForegroundColor White
Write-Host ""
Write-Host "Integration completed!" -ForegroundColor Green
Write-Host ""

# Ask if user wants to preview website
Write-Host "Do you want to start local server to preview website now? (Y/N)" -ForegroundColor Yellow
$preview = Read-Host

if ($preview -eq "Y" -or $preview -eq "y") {
    Write-Host ""
    Write-Host "Starting local server..." -ForegroundColor Cyan
    Write-Host "   Website will be available at http://localhost:8000" -ForegroundColor White
    Write-Host "   Press Ctrl+C to stop the server" -ForegroundColor Gray
    Write-Host ""
    
    # Start Python HTTP server
    python -m http.server 8000
} else {
    Write-Host ""
    Write-Host "Done! You can start the server anytime with:" -ForegroundColor Cyan
    Write-Host "   python -m http.server 8000" -ForegroundColor White
    Write-Host ""
}

Read-Host "Press Enter to exit"
