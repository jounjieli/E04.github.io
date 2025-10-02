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
- **時間**：19:00 - END
- **地點**：台中市南屯區忠明南路478號B1
- **場地**：沃酷新創空間 Words Live | 忠明館

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
│   │   ├── hero-bg.jpg          # Hero 背景圖（需準備）
│   │   ├── eo4-group.jpg        # 團體照（需準備）
│   │   ├── qr-code.png          # 購票 QR Code（需準備）
│   │   ├── og-image.jpg         # 社群分享圖（需準備）
│   │   └── lineup/              # 成員照片目錄
│   │       ├── member-1.jpg     （需準備）
│   │       ├── member-2.jpg     （需準備）
│   │       ├── member-3.jpg     （需準備）
│   │       ├── member-4.jpg     （需準備）
│   │       └── member-5.jpg     （需準備）
│   │
│   └── icons/
│       └── favicon.ico          # 網站圖示（需準備）
│
├── docs/
│   ├── PRD.md                   # 產品需求文件
│   ├── specifications.md        # 技術規格文件
│   └── requirements.md          # 需求說明
│
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

## 🖼️ 圖片素材需求

| 檔案名稱 | 尺寸 | 格式 | 說明 |
|---------|------|------|------|
| `hero-bg.jpg` | 2000x1200px | JPG | Hero 背景圖 |
| `eo4-group.jpg` | 1200x800px | JPG | 團體照 |
| `member-1~5.jpg` | 800x800px | JPG | 成員照片 |
| `qr-code.png` | 500x500px | PNG | 購票 QR Code |
| `og-image.jpg` | 1200x630px | JPG | 社群分享圖 |
| `favicon.ico` | 32x32px | ICO | 網站圖示 |

**優化建議**：使用 [TinyPNG](https://tinypng.com/) 壓縮圖片，控制在 200KB 以下

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
- [x] 演出陣容展示
- [x] 時間軸節目表
- [x] 場地資訊與 Google Maps
- [x] 交通指引
- [x] 購票資訊 + QR Code
- [x] 社群媒體整合
- [x] 平滑滾動效果
- [x] AOS 滾動動畫
- [x] SEO 優化（Meta Tags + Schema.org）

### 待完成
- [ ] 替換真實圖片素材
- [ ] 更新購票平台連結
- [ ] 更新社群媒體連結

## 🐛 問題排查

### 圖片無法顯示
**解決**：確認圖片已放入 `assets/images/` 目錄，檢查路徑是否正確

### 導航選單無法開啟（手機版）
**解決**：確認 `js/main.js` 已正確載入，清除瀏覽器快取

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