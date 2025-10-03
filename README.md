# EO4 演唱會官方網站 🎵

![EO4 Concert Banner](./assets/images/og-image.jpg)

> 五個靈魂，一場音樂盛宴 | 2025.11.01 | Words Live 忠明館

## 📖 專案簡介

這是 EO4 演唱會的官方宣傳網站，採用純靜態網頁設計，部署於 GitHub Pages。網站提供演唱會資訊展示、購票導引、社群媒體整合等功能。

### 🎯 專案特色

- ✨ **現代化設計**：採用黃金配色，呼應演唱會門票視覺
- 📱 **響應式設計**：完美支援手機、平板、桌面裝置
- 🎭 **一頁式體驗**：流暢的滾動與平滑過渡效果
- 🚀 **優異效能**：Lighthouse 評分 90+ 目標
- ♿ **無障礙支援**：符合 WCAG 2.1 標準
- 🎨 **動畫效果**：AOS 滾動動畫，提升使用體驗

## 📅 活動資訊

- **日期**：2025年11月1日（星期六）
- **時間**：18:00 入場，18:30 開演
- **地點**：台中市南屯區忠明南路478號B1
- **場地**：沃酷新創空間 Words Live | 忠明館
- **票價**：NT$ 300

## 🎤 演出陣容

- **陳星宏 (Anders)** - 主唱/鼓手
- **李晉杰 (JJ)** - 主唱
- **賴昶融** - 主唱/貝斯手
- **程韋凱** - 主唱/鼓手
- **黃川崎** - 主唱/鍵盤手

## 🛠️ 技術架構

### 前端技術
- **HTML5** - 語意化標籤、結構化資料
- **CSS3** - CSS Variables、Flexbox、Grid
- **JavaScript** - ES6+、原生 JavaScript

### 外部資源
- **字型**：Google Fonts (Montserrat, Noto Sans TC)
- **圖示**：Font Awesome 6.4.0
- **動畫**：AOS (Animate On Scroll) 2.3.1
- **地圖**：Google Maps Embed API

## 📂 專案結構
```
eo4-concert-website/
│
├── index.html                    # 主頁面
│
├── css/
│   ├── styles.css               # 主樣式表
│   └── responsive.css           # RWD 響應式樣式
│
├── js/
│   └── main.js                  # 主要 JavaScript
│
├── assets/
│   ├── images/
│   │   ├── hero-bg.jpg          # Hero 背景圖（使用 poster-1.jpg）
│   │   ├── eo4-group.jpg        # 團體照（使用 poster-2.jpg）
│   │   ├── qr-code.png          # 購票 QR Code（從海報提取）
│   │   ├── og-image.jpg         # 社群分享圖（使用 poster-2.jpg）
│   │   └── lineup/              # 成員照片目錄
│   │       ├── anders.jpg       # 陳星宏（需準備）
│   │       ├── jj.jpg           # 李晉杰（需準備）
│   │       ├── lai.jpg          # 賴昶融（需準備）
│   │       ├── cheng.jpg        # 程韋凱（需準備）
│   │       └── huang.jpg        # 黃川崎（需準備）
│   │
│   └── icons/
│       └── favicon.ico          # 網站圖示（需準備）
│
├── docs/
│   ├── PRD.md                   # 產品需求文件
│   ├── IMAGE_GUIDE.md           # 圖片素材指南
│   ├── POSTER_INTEGRATION.md    # 海報整合指南
│   ├── DEPLOYMENT_GUIDE.md      # 部署指南
│   └── specifications.md        # 技術規格文件
│
├── integrate-posters.ps1        # 海報整合自動化腳本
└── README.md                    # 專案說明文件
```

## 🚀 快速開始

### 方法 1：直接開啟 HTML

1. Clone 此專案：
   ```bash
   git clone https://github.com/yourusername/eo4-concert-website.git
   ```

2. 用瀏覽器開啟 `index.html`

### 方法 2：使用本地伺服器（推薦）

```bash
# 使用 Python 3
python -m http.server 8000

# 使用 VS Code Live Server 擴充功能
# 右鍵點擊 index.html -> Open with Live Server
```

瀏覽器開啟：`http://localhost:8000`

## 🎨 自訂設定

### 修改顏色
在 `css/styles.css` 中修改 CSS 變數：
```css
:root {
    --primary-gold: #D4AF37;      /* 主要金色 */
    --primary-cream: #F5F1E8;     /* 米白色背景 */
    --primary-dark: #1A1A1A;      /* 深色文字 */
}
```

### 修改內容
直接編輯 `index.html` 中的文字內容：
- **活動資訊**：搜尋 `hero-info` 區塊
- **演唱會介紹**：搜尋 `about-content` 區塊
- **節目表**：搜尋 `schedule-timeline` 區塊

### 替換圖片
將圖片放入 `assets/images/` 目錄，並更新 HTML 中的路徑。

## 🖼️ 海報圖片整合

### 快速整合（推薦）

使用自動化腳本快速整合海報圖片：

```powershell
# 在專案根目錄執行
.\integrate-posters.ps1
```

腳本會自動：
1. 將 `poster-1.jpg` 複製為 `hero-bg.jpg`（Hero 背景）
2. 將 `poster-2.jpg` 複製為 `eo4-group.jpg`（團體照）
3. 將 `poster-2.jpg` 複製為 `og-image.jpg`（社群分享）
4. 檢查並複製 `qr-code.png`

### 手動整合

如果您偏好手動操作，請參考 [📖 海報整合指南](./docs/POSTER_INTEGRATION.md)

### 圖片素材需求

| 檔案名稱 | 來源 | 尺寸 | 格式 | 說明 |
|---------|------|------|------|------|
| `hero-bg.jpg` | poster-1.jpg | 2000x2000px | JPG | Hero 背景圖（俯拍團體照） |
| `eo4-group.jpg` | poster-2.jpg | 1200x1600px | JPG | 團體照（米色背景） |
| `og-image.jpg` | poster-2.jpg | 1200x630px | JPG | 社群分享圖 |
| `qr-code.png` | 從海報提取 | 500x500px | PNG | 購票 QR Code |
| `anders.jpg` | 需準備 | 800x800px | JPG | 陳星宏個人照 |
| `jj.jpg` | 需準備 | 800x800px | JPG | 李晉杰個人照 |
| `lai.jpg` | 需準備 | 800x800px | JPG | 賴昶融個人照 |
| `cheng.jpg` | 需準備 | 800x800px | JPG | 程韋凱個人照 |
| `huang.jpg` | 需準備 | 800x800px | JPG | 黃川崎個人照 |
| `favicon.ico` | 需準備 | 32x32px | ICO | 網站圖示 |

**優化建議**：使用 [TinyPNG](https://tinypng.com/) 壓縮圖片，控制在 300KB 以下

## 🌐 部署到 GitHub Pages

### 步驟 1：推送至 GitHub
```bash
git init
git add .
git commit -m "Initial commit: EO4 Concert Website"
git branch -M main
git remote add origin https://github.com/your-username/eo4-concert.git
git push -u origin main
```

### 步驟 2：啟用 GitHub Pages
1. 進入 GitHub Repository
2. 點擊 **Settings** → **Pages**
3. 在 **Source** 選擇 `main` 分支
4. 點擊 **Save**

網站將部署至：`https://your-username.github.io/eo4-concert/`

## ✅ 功能清單

### 已完成
- [x] 響應式導航列（桌面 + 手機版）
- [x] Hero Section 大型主視覺
- [x] 演唱會介紹區
- [x] 演出陣容展示（包含成員姓名與角色）
- [x] 時間軸節目表（18:00 入場、18:30 開演）
- [x] 場地資訊與 Google Maps
- [x] 交通指引
- [x] 購票資訊 + QR Code
- [x] 社群媒體整合（含 Instagram 分享）
- [x] 平滑滾動效果
- [x] AOS 滾動動畫
- [x] SEO 優化（Meta Tags + Schema.org）
- [x] 海報圖片整合（poster-1, poster-2）
- [x] 自動化部署腳本

### 待完成
- [ ] 放置真實海報圖片（poster-1.jpg, poster-2.jpg）
- [ ] 提取並放置 QR Code（qr-code.png）
- [ ] 準備成員個人照片（5張）
- [ ] 更新購票平台連結（目前連結到官網）
- [ ] 更新社群媒體連結（Instagram, Facebook, YouTube）
- [ ] 建立 favicon 圖示

## 🐛 問題排查

### 圖片無法顯示
**解決**：
1. 確認圖片已放入 `assets/images/` 目錄
2. 檢查檔案名稱大小寫（GitHub 有區分）
3. 清除瀏覽器快取（Ctrl + Shift + R）
4. 使用開發者工具檢查路徑錯誤

### 導航選單無法開啟（手機版）
**解決**：
1. 確認 `js/main.js` 已正確載入
2. 檢查瀏覽器 Console 是否有 JavaScript 錯誤
3. 清除瀏覽器快取

### 海報整合腳本無法執行
**解決**：
1. 確認在專案根目錄執行腳本
2. 檢查 PowerShell 執行政策：
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. 確認海報檔案路徑正確

## 📚 相關文件

- **[📋 產品需求文件 (PRD)](./docs/PRD.md)** - 完整的功能需求說明
- **[🚀 部署指南](./docs/DEPLOYMENT_GUIDE.md)** - 詳細的 GitHub Pages 部署教學
- **[🖼️ 圖片素材指南](./docs/IMAGE_GUIDE.md)** - 圖片準備與規格說明
- **[🎨 海報整合指南](./docs/POSTER_INTEGRATION.md)** - 海報圖片整合詳細說明

## 📞 聯絡資訊

- **Email**: contact@eo4.com
- **Phone**: 0912-345-678
- **Instagram**: [@eo4](https://instagram.com/eo4)
- **Facebook**: [EO4 Official](https://facebook.com/eo4)

## 📄 授權

本專案採用 MIT 授權條款

---

**Made with ❤️ for Music Lovers**

*Last updated: 2025-10-01*