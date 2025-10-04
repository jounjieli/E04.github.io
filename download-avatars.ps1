# Instagram 頭像下載輔助腳本
# 此腳本會開啟所有成員的 Instagram 頁面，方便手動下載頭像

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "  EO4 成員 Instagram 頭像下載" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

# 定義成員資訊
$members = @(
    @{Name="李晉杰 (JJ)"; Username="jshen_journnal"; FileName="jj.jpg"},
    @{Name="陳星宏 (Anders)"; Username="xinghong_1124"; FileName="anders.jpg"},
    @{Name="程韋凱"; Username="cheng.1208"; FileName="weikai.jpg"},
    @{Name="賴昶融"; Username="v870617"; FileName="changrong.jpg"},
    @{Name="黃川騏"; Username="barrysing4u"; FileName="chuanqi.jpg"}
)

Write-Host "即將開啟以下成員的 Instagram 頁面：" -ForegroundColor Yellow
Write-Host ""

foreach ($member in $members) {
    Write-Host "  ✓ $($member.Name) - @$($member.Username)" -ForegroundColor Green
}

Write-Host ""
Write-Host "請按照以下步驟操作：" -ForegroundColor Yellow
Write-Host "  1. 右鍵點擊頭像 → 在新分頁開啟圖片" -ForegroundColor White
Write-Host "  2. 右鍵點擊圖片 → 另存圖片" -ForegroundColor White
Write-Host "  3. 儲存到: assets\images\lineup\" -ForegroundColor White
Write-Host "  4. 重新命名為對應的檔名" -ForegroundColor White
Write-Host ""

$continue = Read-Host "按 Enter 開始開啟 Instagram 頁面 (或輸入 n 取消)"

if ($continue -ne "n") {
    Write-Host ""
    Write-Host "正在開啟瀏覽器..." -ForegroundColor Cyan
    Start-Sleep -Seconds 1
    
    foreach ($member in $members) {
        $url = "https://www.instagram.com/$($member.Username)/?hl=zh-tw"
        Write-Host "  → 開啟 $($member.Name) 的頁面" -ForegroundColor Green
        Start-Process $url
        Start-Sleep -Milliseconds 500  # 避免同時開太多分頁
    }
    
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host "  所有頁面已開啟！" -ForegroundColor Green
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "檔案命名對照：" -ForegroundColor Yellow
    Write-Host ""
    
    foreach ($member in $members) {
        Write-Host "  $($member.Name) → $($member.FileName)" -ForegroundColor White
    }
    
    Write-Host ""
    Write-Host "儲存位置: $PSScriptRoot\assets\images\lineup\" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "完成後，重新整理網站頁面即可看到頭像！" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "已取消操作" -ForegroundColor Red
}

Write-Host "按任意鍵結束..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
