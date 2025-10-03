# 🚀 海報整合快速指南

## 📸 您需要的圖片

1. **poster-1.jpg** - 俯拍團體照（有 EO4 Logo 的那張）
2. **poster-2.jpg** - 米色背景團體照（站立的那張）
3. **QR Code** - 從海報中提取（圓形，在右下角）

---

## ⚡ 三步驟快速整合

### 步驟 1：準備圖片
將海報檔案放到一個資料夾（例如桌面的 `EO4_Posters` 資料夾）：
```
C:\Users\YourName\Desktop\EO4_Posters\
├── poster-1.jpg
├── poster-2.jpg
└── qr-code.png  (從海報提取)
```

### 步驟 2：執行整合腳本
```powershell
# 在專案根目錄開啟 PowerShell
cd c:\JJ\claude_workspace\Common\e04_website\github-static-webpage

# 執行整合腳本
.\integrate-posters.ps1
```

### 步驟 3：測試網站
```powershell
# 啟動本地伺服器
python -m http.server 8000

# 開啟瀏覽器訪問
# http://localhost:8000
```

---

## 🎯 圖片用途說明

| 原始檔案 | 複製為 | 用途 | 位置 |
|---------|--------|------|------|
| poster-1.jpg | hero-bg.jpg | Hero 區塊背景 | 網站最上方 |
| poster-2.jpg | eo4-group.jpg | 團體照 | 陣容區塊下方 |
| poster-2.jpg | og-image.jpg | 社群分享圖 | Facebook/Twitter 分享時顯示 |
| qr-code.png | qr-code.png | 購票 QR Code | 購票區塊右側 |

---

## 📝 手動放置（如果不用腳本）

直接將圖片複製到以下位置：

```powershell
# 複製 poster-1.jpg
Copy-Item "C:\path\to\poster-1.jpg" -Destination "assets\images\hero-bg.jpg"

# 複製 poster-2.jpg（團體照）
Copy-Item "C:\path\to\poster-2.jpg" -Destination "assets\images\eo4-group.jpg"

# 複製 poster-2.jpg（社群分享）
Copy-Item "C:\path\to\poster-2.jpg" -Destination "assets\images\og-image.jpg"

# 複製 QR Code
Copy-Item "C:\path\to\qr-code.png" -Destination "assets\images\qr-code.png"
```

---

## 🔍 提取 QR Code 的方法

### 方法 1：使用小畫家（Windows 內建）
1. 開啟 `poster-1.jpg` 或 `poster-2.jpg`
2. 點選「選取」工具
3. 框選右下角的圓形 QR Code
4. 點選「裁剪」
5. 調整大小為 500x500px
6. 另存新檔為 `qr-code.png`

### 方法 2：使用線上工具
1. 前往 https://www.iloveimg.com/crop-image
2. 上傳海報
3. 裁切 QR Code 部分
4. 下載並命名為 `qr-code.png`

### 方法 3：使用 Photoshop/GIMP
1. 開啟海報
2. 使用矩形選取工具框選 QR Code
3. Image → Crop to Selection
4. Image → Scale Image → 500x500px
5. Export as PNG

---

## ✅ 檢查清單

完成整合後，請確認：

- [ ] `assets\images\hero-bg.jpg` 已存在
- [ ] `assets\images\eo4-group.jpg` 已存在
- [ ] `assets\images\og-image.jpg` 已存在
- [ ] `assets\images\qr-code.png` 已存在
- [ ] Hero 區塊背景圖正常顯示
- [ ] 陣容區塊團體照正常顯示
- [ ] 購票區塊 QR Code 正常顯示
- [ ] 手機版顯示正常

---

## 🎨 圖片優化建議

如果圖片檔案太大（>300KB），建議壓縮：

1. **線上壓縮工具**
   - TinyPNG: https://tinypng.com/
   - Squoosh: https://squoosh.app/
   - Compressor.io: https://compressor.io/

2. **目標檔案大小**
   - hero-bg.jpg: < 300KB
   - eo4-group.jpg: < 200KB
   - og-image.jpg: < 150KB
   - qr-code.png: < 50KB

---

## 💡 提示

- QR Code 連結到官網，確保 QR Code 清晰可掃描
- 海報已包含完整的演出資訊，非常適合作為網站素材
- 如果 Hero 背景太亮，網站會自動套用深色遮罩
- 團體照會自動置中並加上陰影效果

---

## 📞 需要協助？

參考完整文件：
- [🎨 海報整合詳細指南](./POSTER_INTEGRATION.md)
- [🖼️ 圖片素材指南](./IMAGE_GUIDE.md)
- [📖 README](../README.md)

---

**版本**: v1.0  
**最後更新**: 2025-10-03
