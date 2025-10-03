# 🎨 海報圖片整合指南

本文件說明如何將 EO4 演唱會海報整合到網站中。

---

## 📸 海報圖片清單

您有兩張精美的海報需要整合：

### **Poster 1 - 俯拍團體照**
- **原始檔名**: `poster-1.jpg`
- **特色**: 俯拍視角，五位成員圍成圓形，中間有 EO4 Logo
- **用途**: Hero 區塊背景圖
- **建議尺寸**: 2000x2000px（已是正方形構圖）
- **檔案大小目標**: < 300KB

### **Poster 2 - 米色背景團體照**
- **原始檔名**: `poster-2.jpg`
- **特色**: 米色/奶油色背景，五位成員站立，金色 Logo
- **用途**: 陣容區塊團體照 + 社群分享圖
- **建議尺寸**: 1200x1600px（直式構圖）
- **檔案大小目標**: < 200KB

---

## 📁 檔案放置位置

請將圖片按照以下方式放置：

```
github-static-webpage/
└── assets/
    └── images/
        ├── hero-bg.jpg          ← poster-1.jpg (俯拍團體照)
        ├── eo4-group.jpg        ← poster-2.jpg (米色背景團體照)
        ├── og-image.jpg         ← poster-2.jpg 的副本（社群分享用）
        └── qr-code.png          ← 從海報中提取的 QR Code
```

### 🔧 檔案處理步驟

#### 1. **Hero 背景圖 (hero-bg.jpg)**
```powershell
# 將 poster-1.jpg 複製並重新命名
Copy-Item "poster-1.jpg" -Destination "assets\images\hero-bg.jpg"
```

**優化建議：**
- 使用圖片編輯軟體（如 Photoshop, GIMP）
- 調整亮度 -20%（因為會疊加深色遮罩）
- 匯出為 JPG，品質 80-85%
- 目標檔案大小：< 300KB

#### 2. **團體照 (eo4-group.jpg)**
```powershell
# 將 poster-2.jpg 複製並重新命名
Copy-Item "poster-2.jpg" -Destination "assets\images\eo4-group.jpg"
```

**優化建議：**
- 保持原始色調（米色/金色非常完美）
- 可裁切掉底部的文字資訊（保留團體照部分）
- 建議尺寸：1200x800px（橫式裁切）
- 匯出為 JPG，品質 85%
- 目標檔案大小：< 200KB

#### 3. **社群分享圖 (og-image.jpg)**
```powershell
# 創建 OG Image（用於 Facebook、Twitter 分享）
Copy-Item "poster-2.jpg" -Destination "assets\images\og-image.jpg"
```

**優化建議：**
- 裁切為 1200x630px（Facebook OG 標準尺寸）
- 確保 Logo 和主要內容在中央
- 匯出為 JPG，品質 85%
- 目標檔案大小：< 150KB

#### 4. **QR Code (qr-code.png)**

**手動提取步驟：**

1. 用圖片編輯軟體開啟 `poster-1.jpg` 或 `poster-2.jpg`
2. 使用裁切工具選取 QR Code 區域（右下角圓形區域）
3. 裁切並調整大小為 500x500px
4. 匯出為 PNG 格式（保持透明背景）
5. 儲存為 `assets\images\qr-code.png`

**或使用線上工具：**
- 前往 [Online Image Editor](https://www.iloveimg.com/crop-image)
- 上傳海報
- 裁切 QR Code 部分
- 下載並重新命名

---

## 🎨 CSS 優化設定

網站已經配置好使用這些圖片，但您可以根據實際效果微調：

### Hero 區塊背景定位

如果 Hero 背景需要調整，可修改 `css/styles.css`：

```css
.hero-section {
    background-image: url('../assets/images/hero-bg.jpg');
    background-size: cover;           /* 或 contain（依實際效果） */
    background-position: center top;  /* 調整定位 */
    background-attachment: fixed;     /* 視差效果 */
}
```

**調整建議：**
- `background-position: center center;` - 置中
- `background-position: center top;` - 頂部對齊
- `background-position: center 30%;` - 自訂位置

### 團體照樣式

團體照區塊已設定為：

```css
.group-photo img {
    width: 100%;
    max-width: 1200px;
    height: auto;
    border-radius: 12px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
}
```

---

## 🖼️ 圖片優化工具推薦

### 線上工具（免費）
1. **TinyPNG** - https://tinypng.com/
   - JPG/PNG 壓縮
   - 保持高品質

2. **Squoosh** - https://squoosh.app/
   - Google 開發的圖片優化工具
   - 可調整壓縮參數

3. **Compressor.io** - https://compressor.io/
   - 高效壓縮
   - 支援多種格式

### 軟體工具
1. **Adobe Photoshop**
   - 專業級編輯
   - File → Export → Save for Web

2. **GIMP**（免費）
   - 開源替代方案
   - Export As → 調整品質

3. **XnConvert**（免費）
   - 批次處理
   - 支援多種格式

---

## ✅ 整合檢查清單

完成圖片整合後，請檢查以下項目：

- [ ] `hero-bg.jpg` 已放置在 `assets/images/`
- [ ] `eo4-group.jpg` 已放置在 `assets/images/`
- [ ] `og-image.jpg` 已放置在 `assets/images/`
- [ ] `qr-code.png` 已放置在 `assets/images/`
- [ ] 所有圖片檔案大小都已優化（< 300KB）
- [ ] Hero 背景圖顯示正常
- [ ] 團體照顯示正常
- [ ] QR Code 清晰可掃描
- [ ] 手機版顯示正常
- [ ] 平板版顯示正常
- [ ] 桌面版顯示正常

---

## 🧪 測試步驟

### 1. 本地測試
```powershell
# 啟動本地伺服器
cd c:\JJ\claude_workspace\Common\e04_website\github-static-webpage
python -m http.server 8000
```

然後開啟瀏覽器訪問 `http://localhost:8000`

### 2. 檢查項目
- Hero 區塊背景是否正確顯示
- 圖片是否模糊（需要更高解析度）
- 圖片是否過大（載入緩慢）
- 響應式設計是否正常

### 3. 社群分享測試

使用以下工具測試 OG Image：

- **Facebook Debugger**: https://developers.facebook.com/tools/debug/
- **Twitter Card Validator**: https://cards-dev.twitter.com/validator
- **LinkedIn Post Inspector**: https://www.linkedin.com/post-inspector/

---

## 📱 響應式圖片建議

如果需要針對不同裝置優化載入速度，可以使用響應式圖片：

```html
<!-- Hero 區塊使用 picture 元素 -->
<picture>
    <source media="(max-width: 768px)" srcset="./assets/images/hero-bg-mobile.jpg">
    <source media="(max-width: 1024px)" srcset="./assets/images/hero-bg-tablet.jpg">
    <img src="./assets/images/hero-bg.jpg" alt="EO4 演唱會">
</picture>
```

但目前的實作使用 CSS 背景圖，已足夠應付大部分情況。

---

## 🎯 快速命令（PowerShell）

將以下命令存成 `copy-posters.ps1` 腳本：

```powershell
# EO4 海報圖片複製腳本

Write-Host "🎨 開始複製海報圖片..." -ForegroundColor Cyan

# 設定來源路徑（請修改為您的實際路徑）
$posterPath = "C:\Users\YourName\Desktop\EO4_Posters"

# 複製 Poster 1 作為 Hero 背景
if (Test-Path "$posterPath\poster-1.jpg") {
    Copy-Item "$posterPath\poster-1.jpg" -Destination "assets\images\hero-bg.jpg"
    Write-Host "✅ Hero 背景圖已複製" -ForegroundColor Green
} else {
    Write-Host "❌ 找不到 poster-1.jpg" -ForegroundColor Red
}

# 複製 Poster 2 作為團體照
if (Test-Path "$posterPath\poster-2.jpg") {
    Copy-Item "$posterPath\poster-2.jpg" -Destination "assets\images\eo4-group.jpg"
    Write-Host "✅ 團體照已複製" -ForegroundColor Green
} else {
    Write-Host "❌ 找不到 poster-2.jpg" -ForegroundColor Red
}

# 複製 Poster 2 作為 OG Image
if (Test-Path "$posterPath\poster-2.jpg") {
    Copy-Item "$posterPath\poster-2.jpg" -Destination "assets\images\og-image.jpg"
    Write-Host "✅ OG Image 已複製" -ForegroundColor Green
}

Write-Host ""
Write-Host "🎉 圖片複製完成！" -ForegroundColor Cyan
Write-Host "📝 別忘了手動提取並放置 QR Code (qr-code.png)" -ForegroundColor Yellow
```

---

## 💡 進階優化技巧

### 1. WebP 格式（更小的檔案）

現代瀏覽器支援 WebP 格式，檔案大小可減少 30-50%：

```html
<picture>
    <source srcset="./assets/images/hero-bg.webp" type="image/webp">
    <img src="./assets/images/hero-bg.jpg" alt="EO4 演唱會">
</picture>
```

### 2. 懶加載（Lazy Loading）

對於不在首屏的圖片，使用懶加載：

```html
<img src="./assets/images/eo4-group.jpg" 
     alt="EO4 團體照" 
     loading="lazy">
```

（網站已經使用此技術）

### 3. CDN 加速（部署後）

如果網站流量大，可以考慮使用 CDN：
- Cloudflare（免費）
- jsDelivr（免費）
- Netlify（免費）

---

## 📞 需要協助？

如果遇到問題：

1. **圖片顯示不正確**
   - 檢查檔案路徑是否正確
   - 確認檔案名稱大小寫
   - 清除瀏覽器快取（Ctrl + Shift + R）

2. **圖片載入緩慢**
   - 使用 TinyPNG 壓縮
   - 檢查檔案大小（應 < 300KB）
   - 考慮轉換為 WebP 格式

3. **手機版顯示異常**
   - 檢查響應式 CSS
   - 測試不同螢幕尺寸
   - 使用瀏覽器的裝置模擬器

---

**文件版本**: v1.0  
**最後更新**: 2025-10-03  
**維護者**: EO4 網站開發團隊
