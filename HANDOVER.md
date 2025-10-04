# EO4 演唱會網站交接文件

## 📋 專案概述

**專案名稱**: EO4 Concert Website  
**網站網址**: https://jounjieli.github.io/E04.github.io/  
**倉庫**: https://github.com/jounjieli/E04  
**開發方式**: 規範驅動開發 (Specification-Driven Development)  
**最後更新**: 2025年10月4日

---

## 🎯 活動資訊

- **演出日期**: 2025年11月1日（星期六）
- **入場時間**: 18:00
- **開演時間**: 18:30
- **演出地點**: Words Live Taichung (台中市西區英才路534號)
- **票價**: 入場券 NT$ 400

---

## 👥 演出陣容

| 成員 | 角色 | Instagram |
|------|------|-----------|
| 陳星宏 (Anders) | 主唱/鼓手 | [@xinghong_1124](https://www.instagram.com/xinghong_1124/) |
| 李晉杰 (JJ) | 主唱 | [@jshen_journnal](https://www.instagram.com/jshen_journnal/) |
| 賴昶融 | 主唱/貝斯手 | [@v870617](https://www.instagram.com/v870617/) |
| 程韋凱 | 主唱/鼓手 | [@cheng.1208](https://www.instagram.com/cheng.1208/) |
| 黃川騏 | 主唱/鍵盤手 | [@barrysing4u](https://www.instagram.com/barrysing4u/) |

---

## 🏗️ 技術架構

### 前端技術棧
- **HTML5**: 語義化標籤、Schema.org 結構化資料
- **CSS3**: CSS Variables、Flexbox/Grid、響應式設計
- **JavaScript ES6+**: 原生 JS（無框架）
- **外部資源**:
  - Google Fonts (Montserrat + Noto Sans TC)
  - Font Awesome 6.4.0
  - AOS (Animate On Scroll) 2.3.1

### 設計系統
```css
主色調:
- 金色 #D4AF37 (primary-gold)
- 米色 #F5F1E8 (background)
- 深色 #1A1A1A (text)

斷點:
- Desktop: > 1024px
- Tablet: 768px - 1024px
- Mobile: < 768px
- Extra Small: < 480px
```

---

## 📁 檔案結構

```
github-static-webpage/
├── index.html              # 主頁面（單頁網站）
├── css/
│   ├── styles.css         # 主樣式表
│   └── responsive.css     # 響應式設計
├── js/
│   └── main.js           # 互動功能
├── assets/
│   └── images/
│       ├── banner.png         # Hero 背景（團體橫幅照）
│       ├── eo4-group.png     # 陣容區團體照
│       ├── qr-code.png       # 購票 QR Code
│       ├── og-image.png      # 社群分享圖
│       └── E04_logo.png      # 網站 Logo（待整合）
├── docs/
│   ├── PRD.md                    # 產品需求文件
│   ├── POSTER_INTEGRATION.md     # 海報整合指南
│   ├── IMAGE_GUIDE.md            # 圖片規範
│   └── specifications.md         # 技術規格
├── QUICK_START.md          # 快速開始指南
├── README.md               # 專案說明
└── integrate-posters.ps1   # 自動化腳本
```

---

## 🎨 網站區塊說明

### 1. Hero Section（首頁橫幅）
- 使用 `banner.png` 作為背景（cover 模式）
- 顯示活動標題、日期、地點
- 包含「立即購票」CTA 按鈕

### 2. About Section（關於活動）
- 活動簡介
- 特色亮點（4個重點展示）

### 3. Lineup Section（演出陣容）⭐ **最新更新**
- **Instagram 頭像網格**: 5位成員的 IG 頭像
- 點擊頭像可連結至個人 Instagram
- 顯示成員名稱、角色、IG 帳號
- 團體照展示

### 4. Schedule Section（演出時程）
- Timeline 時間軸設計
- 18:00-18:30 入場、18:30-21:00 演出、21:00-21:30 散場

### 5. Venue Section（場地資訊）
- Google Maps 嵌入地圖
- 場地照片、地址、聯絡資訊

### 6. Access Section（交通資訊）
- 大眾運輸、開車、停車資訊

### 7. Tickets Section（票務資訊）
- 票價、購票 QR Code
- 注意事項

### 8. Social Section（追蹤我們）⭐ **最新更新**
- **成員 Instagram 連結網格**: 5位成員的 IG 連結卡片
- 社群分享按鈕（Facebook、Instagram、Line、複製連結）

### 9. Footer（頁尾）
- 聯絡資訊、快速連結、版權聲明

---

## 🔧 待完成項目

### 🔴 高優先級
1. **Instagram 頭像更新**
   - 目前使用 placeholder 圖片
   - 需手動下載成員 IG 頭像並更新
   - 參考指南: `docs/INSTAGRAM_AVATAR_GUIDE.md`（若存在）

2. **Logo 整合**
   - Logo 檔案已存在: `assets/images/E04_logo.png`
   - 需加入導航列
   - 更新 favicon

3. **購票連結更新**
   - 目前購票按鈕連結為 `#tickets`（錨點）
   - 需更新為實際購票平台網址

### 🟡 中優先級
4. **圖片優化**
   - `banner.png` 檔案過大（22+ MB）
   - 建議壓縮至 < 300KB
   - 工具: TinyPNG、ImageOptim

5. **SEO 優化**
   - 更新 meta description
   - 新增 Twitter Card 資訊
   - Google Analytics 整合（如需要）

### 🟢 低優先級
6. **效能優化**
   - 圖片 lazy loading
   - CSS/JS minify
   - CDN 考慮

---

## 🚀 部署流程

### GitHub Pages 部署
```bash
# 1. 進入專案目錄
cd c:\JJ\claude_workspace\Common\e04_website\github-static-webpage

# 2. 檢查變更
git status

# 3. 加入變更
git add .

# 4. 提交變更
git commit -m "描述你的更新"

# 5. 推送到 GitHub
git push origin main

# 6. 等待 1-2 分鐘，網站自動部署
# 訪問: https://jounjieli.github.io/E04.github.io/
```

### 本地測試
```bash
# 方法1: 使用 VS Code Live Server 擴充功能
# 右鍵點擊 index.html → Open with Live Server

# 方法2: 使用 Python 簡易伺服器
python -m http.server 8000
# 訪問: http://localhost:8000
```

---

## 📝 常見任務操作

### 更新活動資訊
**檔案**: `index.html`
```html
<!-- 搜尋以下區塊並修改 -->
<div class="hero-info">
    <p class="hero-date">2025.11.01 (Sat)</p>
    <p class="hero-time">18:00 入場 | 18:30 開演</p>
    <p class="hero-venue">Words Live Taichung</p>
</div>
```

### 更新成員資訊
**檔案**: `index.html` (第 180-240 行)
```html
<!-- 在 Lineup Section 中修改成員卡片 -->
<div class="member-card">
    <a href="IG網址" target="_blank">
        <div class="member-avatar">
            <img src="頭像路徑" alt="成員名稱">
        </div>
        <h3>成員名稱</h3>
        <p class="member-role">角色</p>
        <p class="member-ig">@帳號</p>
    </a>
</div>
```

### 修改顏色主題
**檔案**: `css/styles.css` (第 1-50 行)
```css
:root {
    --primary-gold: #D4AF37;      /* 主色調 */
    --color-bg-cream: #F5F1E8;    /* 背景色 */
    --primary-dark: #1A1A1A;      /* 文字色 */
}
```

### 更新 Instagram 頭像
1. 下載成員 IG 頭像（建議 300x300px）
2. 儲存至 `assets/images/members/` 目錄
3. 更新 `index.html` 中的圖片路徑：
```html
<img src="./assets/images/members/anders.jpg" alt="陳星宏 Anders">
```

---

## 🐛 已知問題與解決方案

### 問題1: 圖片載入緩慢
**原因**: 圖片檔案過大  
**解決**: 使用 TinyPNG 壓縮圖片至適當大小

### 問題2: 手機版橫幅顯示不完整
**原因**: 圖片裁切設定  
**解決**: 已使用 `background: center/cover`，可調整 `background-position`

### 問題3: Instagram 頭像為 placeholder
**原因**: IG API 需要認證，無法自動抓取  
**解決**: 需手動下載並替換圖片

---

## 📚 重要文件連結

- **產品需求文件 (PRD)**: `docs/PRD.md`
- **海報整合指南**: `docs/POSTER_INTEGRATION.md`
- **圖片規範**: `docs/IMAGE_GUIDE.md`
- **快速開始**: `QUICK_START.md`
- **專案說明**: `README.md`

---

## 🎯 下一步建議

1. **立即處理**:
   - 更新 Instagram 頭像為真實圖片
   - 加入網站 Logo
   - 更新購票連結

2. **一週內完成**:
   - 壓縮圖片檔案
   - 測試所有連結
   - 手機版完整測試

3. **持續優化**:
   - 收集使用者回饋
   - 效能監控
   - SEO 優化

---

## 📞 聯絡資訊

如有技術問題，可參考以下資源：
- GitHub Issues: https://github.com/jounjieli/E04/issues
- 文件目錄: `docs/`
- 程式碼註解: 查看 HTML/CSS/JS 檔案中的註解

---

## 📊 更新記錄

| 日期 | 更新內容 | 負責人 |
|------|---------|--------|
| 2025-10-04 | Instagram 陣容頭像整合、社群連結更新 | GitHub Copilot |
| 2025-10-04 | Hero 背景更換為 banner.png | GitHub Copilot |
| 2025-10-04 | 移除個人照片，改為文字列表 | GitHub Copilot |
| 2025-10-04 | 成員名稱校正（黃川騏） | GitHub Copilot |
| 2025-10-04 | 演出時間更新（18:00/18:30） | GitHub Copilot |
| 2025-10-04 | 初版網站建置完成 | GitHub Copilot |

---

## ✅ 最新完成項目 (2025-10-04)

### Instagram 整合功能
1. ✅ **演出陣容區**: 新增 5位成員的 Instagram 頭像網格
   - 圓形頭像設計，金色邊框
   - Hover 效果顯示 Instagram icon
   - 點擊可連結至成員 IG
   - 顯示成員名稱、角色、IG 帳號

2. ✅ **追蹤我們區**: 新增成員 Instagram 連結卡片
   - 5張卡片網格佈局
   - Instagram 風格設計
   - Hover 動畫效果
   - 響應式設計（桌面5欄、平板3欄、手機2-1欄）

3. ✅ **響應式優化**: 
   - 桌面: 5欄網格
   - 平板 (768-1024px): 3欄網格
   - 手機 (< 768px): 2欄網格
   - 小螢幕 (< 480px): 1欄網格

### CSS 更新
- 新增 `.member-grid` 樣式
- 新增 `.member-social-grid` 樣式
- Instagram 品牌色整合 (#E1306C)
- 金色主題一致性

---

**文件建立日期**: 2025年10月4日  
**文件版本**: v1.0  
**下次審核日期**: 演出前一週（2025-10-25）
