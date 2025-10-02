# EO4 演唱會網站 - 產品需求文件 (PRD)

## 文件資訊
- **專案名稱**：E04 演唱會官方網站
- **文件版本**：v1.0
- **最後更新**：2025年10月1日
- **文件狀態**：待確認
- **負責人**：[待填寫]

---

## 1. 專案概述

### 1.1 專案背景
EO4 將於 2025年11月1日在台中沃酷新創空間 Words Live | 忠明館舉辦演唱會，需要一個專業的宣傳網站來展示活動資訊、吸引觀眾並導引購票。

### 1.2 專案目標
打造一個現代化、時尚的一頁式演唱會宣傳網站，提供完整的活動資訊展示、社群媒體整合與購票導引功能。

### 1.3 目標受眾
- **主要受眾**：E04 的朋友及粉絲
- **次要受眾**：對獨立音樂、Live House 演出有興趣的潛在觀眾
- **年齡層**：18-35 歲為主
- **地理位置**：以台中地區為主，輻射全台灣

### 1.4 專案範圍
- ✅ 一頁式靜態網站
- ✅ 響應式設計（支援桌面、平板、手機）
- ✅ 外部購票平台整合
- ✅ 社群媒體整合
- ✅ GitHub Pages 部署
- ❌ 不包含會員系統
- ❌ 不包含後端功能
- ❌ 不包含多語言版本

### 1.5 活動資訊
- **活動名稱**：EO4
- **日期時間**：2025年11月1日 19:00-END
- **活動地點**：台中市南屯區忠明南路478號B1
- **場地名稱**：沃酷新創空間 Words Live | 忠明館
- **演出形式**：Live House 演唱會

---

## 2. 功能需求規格

### 2.1 頁面結構規劃

#### 2.1.1 Hero Section（首屏主視覺區）
**功能描述**：第一眼吸引訪客注意力的大型視覺區域

**必要元素**：
- 全寬背景圖片或影片（使用提供的演唱會視覺素材）
- EO4 Logo / 主標題
- 活動日期：2025年11月1日
- 活動時間：19:00-END
- 地點資訊：沃酷新創空間 Words Live | 忠明館
- 主要 CTA 按鈕：「立即購票」
- 向下滾動提示圖示

**設計要求**：
- 視覺衝擊力強
- 文字清晰可讀
- CTA 按鈕醒目突出
- 響應式佈局適配所有裝置

**優先級**：🔴 高

---

#### 2.1.2 About Section（演唱會介紹區）
**功能描述**：介紹演唱會主題、特色與亮點

**必要元素**：
- 演唱會標題與標語
- 演唱會簡介（200-300字）
- 特色亮點（3-5 個關鍵點）
- 裝飾性視覺元素（音符、麥克風等）

**內容方向**：
- EO4 的音樂風格
- 演出特色
- 為什麼值得參加

**優先級**：🟡 中

---

#### 2.1.3 Lineup Section（演出陣容區）
**功能描述**：展示演出成員資訊

**必要元素**：
- 團體照片展示（使用提供的 5 人團照）
- 成員介紹（可選）
- 卡片式或網格式排版

**設計要求**：
- 照片品質高清
- 排版整齊美觀
- Hover 效果互動
- 滾動觸發淡入動畫

**優先級**：🟡 中

---

#### 2.1.4 Schedule Section（節目表區）
**功能描述**：展示演出時間軸與節目安排

**必要元素**：
- 時間軸設計
- 演出時間點
- 表演曲目 / 環節名稱
- 特別活動說明（如有）

**設計要求**：
- 時間軸視覺化
- 清晰易讀
- 可能採用垂直或水平排列

**優先級**：🟡 中

---

#### 2.1.5 Venue Section（場地資訊區）
**功能描述**：提供場地詳細資訊與位置

**必要元素**：
- 場地名稱：沃酷新創空間 Words Live | 忠明館
- 完整地址：台中市南屯區忠明南路478號B1
- Google Maps 嵌入地圖（互動式）
- 場地照片（2-3 張）
- 場地特色說明

**互動功能**：
- 點擊地圖可在新視窗開啟 Google Maps
- 地址可一鍵複製

**優先級**：🔴 高

---

#### 2.1.6 Access Section（交通指引區）
**功能描述**：提供詳細的交通指引資訊

**必要元素**：
- **大眾運輸**：
  - 公車路線與站牌
  - 最近的捷運站（如有）
  - 步行時間預估
- **開車**：
  - 停車場資訊
  - 路線建議
- **機車/自行車**：
  - 停車位置
- 交通地圖標示

**優先級**：🟡 中

---

#### 2.1.7 Tickets Section（購票資訊區）
**功能描述**：提供購票相關資訊並導引至購票平台

**必要元素**：
- 票價資訊（如有分級）
- QR Code 購票（嵌入提供的 QR Code）
- 購票按鈕（連結至外部售票平台）
- 購票注意事項
- 退換票政策（如有）

**CTA 設計**：
- 主要按鈕：「立即購票」
- 次要連結：「掃描 QR Code 購票」

**優先級**：🔴 高

---

#### 2.1.8 Social Section（社群媒體整合區）
**功能描述**：整合社群媒體平台，增加互動性

**必要元素**：
- Instagram 帳號連結與嵌入 Feed（可選）
- Facebook 粉絲專頁連結
- YouTube 頻道連結（如有）
- 其他社群平台（如有）
- 社群分享按鈕（分享本網站）

**社群圖示**：
- 使用 Font Awesome 或 Feather Icons
- Hover 效果

**優先級**：🟡 中

---

#### 2.1.9 Footer Section（頁尾資訊區）
**功能描述**：提供補充資訊與次要連結

**必要元素**：
- 聯絡資訊（Email / 電話）
- 版權聲明
- 社群媒體圖示連結
- 「回到頂部」按鈕
- 隱私權政策連結（如需）

**優先級**：🟢 低

---

### 2.2 互動功能需求

#### 2.2.1 導航列（Navigation Bar）
**功能描述**：固定在頂部的導航選單

**功能需求**：
- 固定在頂部（Sticky Header）
- 平滑滾動至各區域
- 當前區域高亮顯示
- 滾動時改變背景透明度/顏色
- 手機版：漢堡選單（Hamburger Menu）

**導航項目**：
- 首頁（Home）
- 關於（About）
- 陣容（Lineup）
- 節目表（Schedule）
- 場地（Venue）
- 交通（Access）
- 購票（Tickets）

**優先級**：🔴 高

---

#### 2.2.2 平滑滾動（Smooth Scroll）
**功能描述**：點擊導航連結時平滑滾動至對應區域

**技術實現**：
- 使用 CSS `scroll-behavior: smooth` 或 JavaScript
- 滾動速度：800-1000ms

**優先級**：🔴 高

---

#### 2.2.3 滾動觸發動畫（Scroll Animations）
**功能描述**：元素進入視窗時觸發動畫效果

**動畫效果**：
- Fade In（淡入）
- Slide In（滑入）
- Zoom In（縮放）

**技術實現**：
- 使用 AOS (Animate On Scroll) 或 Intersection Observer API

**優先級**：🟡 中

---

#### 2.2.4 Hover 效果
**功能描述**：滑鼠懸停時的視覺回饋

**應用位置**：
- 按鈕
- 社群圖示
- 成員照片卡片
- 導航連結

**效果類型**：
- 顏色變化
- 陰影加深
- 縮放效果
- 底線動畫

**優先級**：🟢 低

---

#### 2.2.5 手機選單
**功能描述**：手機版的漢堡選單展開/收合

**功能需求**：
- 點擊漢堡圖示展開選單
- 點擊選項後自動收合
- 平滑展開/收合動畫
- 遮罩背景（Overlay）

**優先級**：🔴 高

---

### 2.3 響應式設計需求

#### 2.3.1 斷點設定（Breakpoints）
```css
/* Mobile First Approach */
- Mobile (手機): < 768px
- Tablet (平板): 768px - 1024px  
- Desktop (桌面): > 1024px
- Large Desktop: > 1440px (可選)
```

#### 2.3.2 各裝置適配需求

**手機版（< 768px）**：
- 單欄排版
- 較大的觸控按鈕（最小 44x44px）
- 漢堡選單
- 簡化的導航
- 適當的字體大小（最小 14px）

**平板版（768px - 1024px）**：
- 雙欄或彈性排版
- 適中的圖片尺寸
- 可顯示完整導航或簡化版

**桌面版（> 1024px）**：
- 多欄排版
- 完整導航列
- 大尺寸視覺元素
- 較大的留白空間

**優先級**：🔴 高

---

## 3. 設計規範

### 3.1 視覺風格定位
- **風格關鍵詞**：現代、時尚、年輕、活力、專業
- **設計語言**：簡約而不簡單、視覺衝擊力強
- **靈感來源**：基於提供的演唱會門票設計風格

---

### 3.2 色彩規範

#### 3.2.1 主色彩系統（基於門票配色）

**主色調**：
```css
--primary-gold: #D4AF37;      /* 金色 - 主要強調色 */
--primary-cream: #F5F1E8;     /* 米白色 - 背景色 */
--primary-dark: #1A1A1A;      /* 深色 - 文字/背景 */
--primary-black: #000000;     /* 純黑 - 重點文字 */
```

**輔助色**：
```css
--secondary-beige: #E8DCC4;   /* 米褐色 */
--secondary-brown: #8B7355;   /* 褐色 */
--accent-copper: #B87333;     /* 古銅色 - 裝飾 */
```

**功能色**：
```css
--color-text-primary: #1A1A1A;    /* 主要文字 */
--color-text-secondary: #666666;  /* 次要文字 */
--color-text-light: #FFFFFF;      /* 淺色文字 */
--color-bg-light: #FFFFFF;        /* 淺色背景 */
--color-bg-dark: #1A1A1A;         /* 深色背景 */
--color-border: #E0E0E0;          /* 邊框 */
```

**應用建議**：
- Hero Section：深色背景 + 金色文字
- About Section：淺色背景 + 深色文字
- 交替使用淺色/深色區域，增加層次感
- CTA 按鈕使用金色，突出重點

---

### 3.3 字體規範

#### 3.3.1 字體選擇

**中文字體**：
```css
/* 主要字體 */
font-family: 'Noto Sans TC', '思源黑體', 'Microsoft JhengHei', sans-serif;

/* 標題字體 */
font-family: 'Noto Serif TC', 'Noto Sans TC', serif; /* 可選 */
```

**英文/數字字體**：
```css
/* 標題 */
font-family: 'Montserrat', 'Bebas Neue', sans-serif;

/* 內文 */
font-family: 'Montserrat', 'Inter', sans-serif;
```

#### 3.3.2 字體大小規範

**桌面版**：
```css
--font-size-h1: 64px;      /* 主標題 */
--font-size-h2: 48px;      /* 區塊標題 */
--font-size-h3: 32px;      /* 次標題 */
--font-size-body: 18px;    /* 內文 */
--font-size-small: 14px;   /* 小字 */
```

**手機版**：
```css
--font-size-h1: 40px;
--font-size-h2: 32px;
--font-size-h3: 24px;
--font-size-body: 16px;
--font-size-small: 14px;
```

#### 3.3.3 字重規範
```css
--font-weight-light: 300;
--font-weight-regular: 400;
--font-weight-medium: 500;
--font-weight-bold: 700;
--font-weight-black: 900;
```

---

### 3.4 間距系統

#### 3.4.1 基礎間距單位
```css
--spacing-unit: 8px;

--spacing-xs: 8px;     /* 0.5rem */
--spacing-sm: 16px;    /* 1rem */
--spacing-md: 24px;    /* 1.5rem */
--spacing-lg: 32px;    /* 2rem */
--spacing-xl: 48px;    /* 3rem */
--spacing-xxl: 64px;   /* 4rem */
```

#### 3.4.2 區塊間距
```css
/* Section 間距 */
--section-padding-desktop: 100px 0;
--section-padding-mobile: 60px 0;

/* Container 最大寬度 */
--container-max-width: 1200px;
--container-padding: 0 24px;
```

---

### 3.5 視覺元素規範

#### 3.5.1 按鈕樣式
```css
/* Primary Button */
.btn-primary {
  background: var(--primary-gold);
  color: var(--primary-dark);
  padding: 16px 48px;
  border-radius: 8px;
  font-weight: 700;
  transition: all 0.3s ease;
}

.btn-primary:hover {
  background: #C4A036;
  transform: translateY(-2px);
  box-shadow: 0 8px 24px rgba(212, 175, 55, 0.3);
}
```

#### 3.5.2 陰影效果
```css
--shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.1);
--shadow-md: 0 4px 16px rgba(0, 0, 0, 0.15);
--shadow-lg: 0 8px 32px rgba(0, 0, 0, 0.2);
```

#### 3.5.3 圓角規範
```css
--border-radius-sm: 4px;
--border-radius-md: 8px;
--border-radius-lg: 16px;
--border-radius-full: 9999px;
```

#### 3.5.4 裝飾元素
- 音符圖案（使用 SVG）
- 麥克風圖示
- 線條分隔線
- 漸層背景（金色到深色）
- 幾何圖形裝飾

---

### 3.6 圖片規格

#### 3.6.1 圖片尺寸建議
```
Hero Banner: 2000x1200px (16:9.6)
成員照片: 800x800px (1:1)
場地照片: 1200x800px (3:2)
OG Image: 1200x630px (1.91:1)
Logo: SVG 向量格式（可縮放）
```

#### 3.6.2 圖片優化
- 格式：WebP（優先） + JPG/PNG（備用）
- 壓縮：TinyPNG 或類似工具
- 檔案大小：< 200KB/張
- 使用 lazy loading
- 提供不同尺寸（Responsive Images）

---

## 4. 技術規格

### 4.1 技術架構

#### 4.1.1 前端技術棧
```
HTML5
├── 語意化標籤
├── Meta Tags (SEO + OG)
└── Accessibility (ARIA)

CSS3
├── 自定義 CSS 或 Tailwind CSS
├── CSS Variables
├── Flexbox / Grid
├── Animations & Transitions
└── Media Queries

JavaScript (ES6+)
├── 原生 JavaScript（無框架）
├── Smooth Scroll
├── Mobile Menu Toggle
├── Scroll Animations (AOS)
└── Lazy Loading
```

#### 4.1.2 外部資源
```
字型：Google Fonts
圖示：Font Awesome / Feather Icons
動畫：AOS (Animate On Scroll)
地圖：Google Maps Embed API
分析：Google Analytics (可選)
```

---

### 4.2 專案結構

#### 4.2.1 目錄結構
```
eo4-concert-website/
│
├── index.html                 # 主頁面
│
├── css/
│   ├── styles.css            # 主樣式表
│   ├── responsive.css        # RWD 樣式
│   └── animations.css        # 動畫效果
│
├── js/
│   ├── main.js               # 主要 JavaScript
│   ├── scroll.js             # 滾動效果
│   └── mobile-menu.js        # 手機選單
│
├── assets/
│   ├── images/
│   │   ├── hero-bg.jpg       # Hero 背景圖
│   │   ├── lineup/           # 陣容照片
│   │   ├── venue/            # 場地照片
│   │   └── logo.svg          # Logo
│   │
│   ├── icons/                # 圖示檔案
│   │   └── favicon.ico
│   │
│   └── fonts/                # 自訂字型（如需）
│
├── docs/
│   ├── PRD.md                # 產品需求文件
│   ├── specifications.md     # 技術規格文件
│   └── content-guide.md      # 內容指南
│
├── README.md                 # 專案說明
├── .gitignore                # Git 忽略檔案
└── LICENSE                   # 授權文件（可選）
```

---

### 4.3 部署規範

#### 4.3.1 GitHub Pages 設定
```yaml
部署平台: GitHub Pages
分支: main 或 gh-pages
根目錄: / 或 /docs
自動部署: 推送至指定分支後自動部署
HTTPS: 自動啟用
```

#### 4.3.2 自定義域名（可選）
```
1. 在 Repository Settings 設定 Custom Domain
2. 新增 CNAME 檔案至根目錄
3. 在域名商設定 DNS 記錄：
   - Type: CNAME
   - Host: www (或 @)
   - Value: username.github.io
```

---

### 4.4 性能要求

#### 4.4.1 載入速度目標
```
首次載入時間 (FCP): < 2 秒
完全載入時間 (Load): < 3 秒
Time to Interactive (TTI): < 3.5 秒
```

#### 4.4.2 Lighthouse 評分目標
```
Performance:    > 90
Accessibility:  > 90
Best Practices: > 90
SEO:            > 90
```

#### 4.4.3 優化策略
- ✅ 圖片壓縮與 WebP 格式
- ✅ CSS/JS 檔案壓縮（Minify）
- ✅ 啟用瀏覽器快取
- ✅ 延遲載入圖片（Lazy Loading）
- ✅ 關鍵 CSS 內聯
- ✅ 使用 CDN（字型、圖示庫）

---

### 4.5 瀏覽器支援

#### 4.5.1 支援的瀏覽器
```
Desktop:
- Chrome: 最新版本 + 前兩個版本
- Firefox: 最新版本 + 前兩個版本
- Safari: 最新版本 + 前兩個版本
- Edge: 最新版本 + 前兩個版本

Mobile:
- iOS Safari: iOS 14+
- Chrome Mobile: Android 10+
- Samsung Internet: 最新版本
```

#### 4.5.2 瀏覽器測試清單
- [ ] Chrome (Windows)
- [ ] Chrome (macOS)
- [ ] Firefox (Windows)
- [ ] Safari (macOS)
- [ ] Edge (Windows)
- [ ] Chrome Mobile (Android)
- [ ] Safari (iOS)

---

### 4.6 SEO 優化

#### 4.6.1 Meta Tags
```html
<!-- 基礎 Meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="EO4 演唱會 2025.11.01 台中 Words Live | 忠明館 - 現場演出不容錯過！">
<meta name="keywords" content="EO4, 演唱會, 台中, Words Live, 忠明館, Live House, 音樂">

<!-- Open Graph (Facebook) -->
<meta property="og:title" content="EO4 演唱會 | 2025.11.01">
<meta property="og:description" content="EO4 演唱會即將於 2025 年 11 月 1 日在台中 Words Live 登場！">
<meta property="og:image" content="https://yoursite.com/assets/images/og-image.jpg">
<meta property="og:url" content="https://yoursite.com">
<meta property="og:type" content="website">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="EO4 演唱會 | 2025.11.01">
<meta name="twitter:description" content="EO4 演唱會即將於 2025 年 11 月 1 日在台中 Words Live 登場！">
<meta name="twitter:image" content="https://yoursite.com/assets/images/og-image.jpg">

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="./assets/icons/favicon.ico">
<link rel="apple-touch-icon" href="./assets/icons/apple-touch-icon.png">
```

#### 4.6.2 結構化資料 (Schema.org)
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "MusicEvent",
  "name": "EO4 演唱會",
  "startDate": "2025-11-01T19:00",
  "location": {
    "@type": "Place",
    "name": "沃酷新創空間 Words Live | 忠明館",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "忠明南路478號B1",
      "addressLocality": "南屯區",
      "addressRegion": "台中市",
      "addressCountry": "TW"
    }
  },
  "performer": {
    "@type": "MusicGroup",
    "name": "EO4"
  }
}
</script>
```

---

## 5. 內容需求

### 5.1 文案內容清單

#### 5.1.1 必要文案
- [ ] **演唱會標語**（1 句，10-20 字）
  - 範例：「五個靈魂，一場音樂盛宴」
  
- [ ] **演唱會簡介**（200-300 字）
  - EO4 的音樂風格
  - 這場演出的特色
  - 觀眾可以期待什麼
  
- [ ] **成員介紹**（每人 50-100 字，可選）
  - 成員名稱
  - 負責樂器/聲部
  - 簡短介紹

- [ ] **節目表內容**
  - 開場時間
  - 各時段節目
  - 曲目列表（如可公開）
  
- [ ] **購票須知**
  - 票價資訊
  - 購票方式
  - 退換票規則
  - 入場規定
  
- [ ] **場地介紹**（100-150 字）
  - Words Live 場地特色
  - 容納人數
  - 場地設施

- [ ] **交通指引文字**
  - 大眾運輸路線說明
  - 停車資訊
  - 步行路線

- [ ] **聯絡資訊**
  - Email
  - 電話（如有）
  - 社群媒體帳號

---

### 5.2 多媒體素材清單

#### 5.2.1 圖片素材
- [ ] **Hero 主視覺**（1 張）
  - 尺寸：2000x1200px
  - 格式：JPG/PNG（需壓縮）
  - 用途：首屏大圖
  
- [ ] **團體照**（1-2 張）
  - ✅ 已提供（3 張不同版本）
  - 用途：陣容展示區
  
- [ ] **成員個人照**（5 張，可選）
  - 尺寸：800x800px
  - 格式：JPG（需壓縮）
  - 用途：成員卡片展示
  
- [ ] **場地照片**（3-5 張）
  - 尺寸：1200x800px
  - 內容：Words Live 外觀、內部、舞台
  
- [ ] **Logo 檔案**
  - 格式：SVG（向量格式優先）
  - 備用格式：PNG（透明背景）
  - 尺寸：至少 1000x1000px
  
- [ ] **QR Code**
  - ✅ 已在門票上提供
  - 需獨立輸出 PNG 檔案
  - 尺寸：500x500px
  
- [ ] **OG Image**（社群分享圖）
  - 尺寸：1200x630px
  - 內容：EO4 + 日期時間地點

#### 5.2.2 影片素材（可選）
- [ ] **宣傳影片 / 精彩片段**
  - 格式：MP4
  - 長度：15-30 秒
  - 用途：Hero 背景影片

#### 5.2.3 圖示與裝飾
- [ ] 音符 SVG 圖示
- [ ] 麥克風 SVG 圖示
- [ ] 社群媒體圖示（使用 Font Awesome）

---

### 5.3 外部連結清單

#### 5.3.1 必要連結
- [ ] **購票平台 URL**
  - 平台名稱：[待提供]
  - 網址：[待提供]
  
- [ ] **Google Maps 地點**
  - 地址：台中市南屯區忠明南路478號B1
  - 嵌入連結：[待生成]

#### 5.3.2 社群媒體連結
- [ ] **Instagram**
  - 帳號：@[待提供]
  - 網址：https://instagram.com/[帳號]
  
- [ ] **Facebook**
  - 粉專名稱：[待提供]
  - 網址：https://facebook.com/[粉專ID]
  
- [ ] **YouTube**（如有）
  - 頻道名稱：[待提供]
  - 網址：https://youtube.com/@[頻道]
  
- [ ] **其他平台**（如有）
  - TikTok / X (Twitter) / Threads 等

---

## 6. 開發排程

### 6.1 專案時程規劃

#### Phase 1：規劃與設計階段（3-4 天）
**時間**：Day 1-4

**任務清單**：
- [x] PRD 文件制定與確認
- [ ] 收集所有文案與素材
- [ ] Wireframe 草圖繪製
- [ ] 視覺設計稿製作（Figma）
- [ ] 設計稿審核與修改
- [ ] 最終設計稿確認

**交付物**：
- PRD 文件
- Wireframe
- 視覺設計稿（Desktop + Mobile）
- 設計系統文件

---

#### Phase 2：前端開發階段（5-7 天）
**時間**：Day 5-11

**任務清單**：

**Day 5-6：專案架構與 HTML**
- [ ] 建立專案目錄結構
- [ ] 設定 Git Repository
- [ ] 撰寫 HTML 結構
- [ ] 加入語意化標籤
- [ ] 整合 Meta Tags

**Day 7-8：CSS 樣式開發**
- [ ] 建立 CSS 變數系統
- [ ] 開發各區塊樣式
- [ ] 實作按鈕與表單元素
- [ ] 加入 Hover 效果

**Day 9-10：響應式開發**
- [ ] 手機版樣式調整
- [ ] 平板版樣式調整
- [ ] 測試各斷點切換

**Day 11：JavaScript 互動功能**
- [ ] 導航列平滑滾動
- [ ] 手機選單開關
- [ ] 滾動動畫效果
- [ ] Lazy Loading 實作

**交付物**：
- 完整的 HTML/CSS/JS 程式碼
- 本地端可運行的網站

---

#### Phase 3：內容整合與測試階段（3-4 天）
**時間**：Day 12-15

**任務清單**：

**Day 12：內容整合**
- [ ] 替換所有文案內容
- [ ] 置入真實圖片素材
- [ ] 更新所有外部連結
- [ ] 嵌入 Google Maps
- [ ] 加入 QR Code

**Day 13：功能測試**
- [ ] 導航功能測試
- [ ] 連結測試（內部 + 外部）
- [ ] 表單測試（如有）
- [ ] 動畫效果測試

**Day 14：跨瀏覽器/裝置測試**
- [ ] Chrome 測試
- [ ] Firefox 測試
- [ ] Safari 測試
- [ ] Edge 測試
- [ ] 手機瀏覽器測試（iOS + Android）
- [ ] 平板測試

**Day 15：優化**
- [ ] 圖片壓縮與格式優化
- [ ] CSS/JS 檔案壓縮
- [ ] Lighthouse 測試與優化
- [ ] 載入速度優化
- [ ] SEO 檢查

**交付物**：
- 測試報告
- Bug 修復
- 優化後的網站

---

#### Phase 4：部署與上線階段（1-2 天）
**時間**：Day 16-17

**任務清單**：

**Day 16：部署設定**
- [ ] GitHub Repository 建立
- [ ] 推送程式碼至 GitHub
- [ ] 啟用 GitHub Pages
- [ ] 設定自定義域名（如需）
- [ ] SSL 憑證確認

**Day 17：上線測試**
- [ ] 線上環境測試
- [ ] 所有連結再次確認
- [ ] 社群分享測試（OG Image）
- [ ] Google Analytics 設定（如需）
- [ ] 最終驗收

**交付物**：
- 正式上線的網站
- 部署文件
- 操作手冊

---

### 6.2 里程碑（Milestones）

| 里程碑 | 日期 | 交付物 |
|--------|------|--------|
| M1: 需求確認 | Day 1 | PRD 文件、素材清單 |
| M2: 設計完成 | Day 4 | 視覺設計稿確認 |
| M3: 開發完成 | Day 11 | 可運行的網站（本地） |
| M4: 測試完成 | Day 15 | 測試報告、優化完成 |
| M5: 正式上線 | Day 17 | 網站上線 |

---

### 6.3 風險與應變

#### 風險 1：素材提供延遲
- **影響**：開發進度延後
- **應變**：使用佔位圖先行開發，後續替換

#### 風險 2：外部服務異常
- **影響**：Google Maps 或購票連結失效
- **應變**：提供備用文字說明與手動輸入地址選項

#### 風險 3：測試發現重大問題
- **影響**：上線時間延後
- **應變**：延長測試階段 1-2 天

---

## 7. 驗收標準

### 7.1 功能驗收清單

#### 7.1.1 頁面結構
- [ ] 所有 8 個主要區塊正確顯示
- [ ] 導航列固定在頂部
- [ ] Footer 資訊完整
- [ ] 「回到頂部」按鈕功能正常

#### 7.1.2 互動功能
- [ ] 導航連結平滑滾動至對應區塊
- [ ] 手機版漢堡選單可正常開關
- [ ] 所有外部連結可正常開啟（新視窗）
- [ ] QR Code 可正常掃描
- [ ] Google Maps 可正常互動

#### 7.1.3 動畫效果
- [ ] 滾動觸發動畫正常運作
- [ ] Hover 效果流暢
- [ ] 頁面切換無卡頓

#### 7.1.4 內容完整性
- [ ] 所有文案正確無誤
- [ ] 所有圖片正確載入
- [ ] 日期時間資訊正確
- [ ] 聯絡資訊正確

---

### 7.2 設計驗收清單

#### 7.2.1 視覺一致性
- [ ] 色彩使用符合設計規範
- [ ] 字體使用正確
- [ ] 間距符合設計系統
- [ ] 與設計稿一致度 > 95%

#### 7.2.2 排版美觀
- [ ] 文字對齊整齊
- [ ] 圖片比例正確
- [ ] 留白空間適當
- [ ] 視覺層次分明

---

### 7.3 響應式驗收清單

#### 7.3.1 手機版（< 768px）
- [ ] 單欄排版正確
- [ ] 漢堡選單正常運作
- [ ] 觸控按鈕大小適中（≥ 44px）
- [ ] 文字大小可閱讀（≥ 14px）
- [ ] 圖片自適應寬度
- [ ] 無橫向滾動條

#### 7.3.2 平板版（768px - 1024px）
- [ ] 排版適當
- [ ] 導航列正常顯示
- [ ] 圖片尺寸適中

#### 7.3.3 桌面版（> 1024px）
- [ ] 完整導航列顯示
- [ ] 多欄排版正確
- [ ] 最大寬度限制（1200px）
- [ ] 居中對齊

---

### 7.4 性能驗收清單

#### 7.4.1 載入速度
- [ ] 首屏載入時間 < 3 秒
- [ ] 完整載入時間 < 5 秒
- [ ] Time to Interactive < 3.5 秒

#### 7.4.2 Lighthouse 評分
- [ ] Performance > 90
- [ ] Accessibility > 90
- [ ] Best Practices > 90
- [ ] SEO > 90

#### 7.4.3 資源優化
- [ ] 圖片已壓縮（< 200KB/張）
- [ ] 使用 WebP 格式（有 fallback）
- [ ] CSS/JS 已壓縮
- [ ] 啟用圖片 Lazy Loading

---

### 7.5 跨瀏覽器驗收清單

#### 7.5.1 桌面瀏覽器
- [ ] Chrome（Windows + macOS）
- [ ] Firefox（Windows + macOS）
- [ ] Safari（macOS）
- [ ] Edge（Windows）

#### 7.5.2 手機瀏覽器
- [ ] Safari（iOS 14+）
- [ ] Chrome Mobile（Android 10+）
- [ ] Samsung Internet

#### 7.5.3 測試項目
- [ ] 頁面排版正確
- [ ] 所有功能正常運作
- [ ] 無 Console 錯誤
- [ ] 字體正確載入

---

### 7.6 SEO 驗收清單

#### 7.6.1 Meta Tags
- [ ] Title 標籤存在且正確
- [ ] Description Meta 存在且正確
- [ ] OG Tags 完整（title, description, image, url）
- [ ] Twitter Card 設定正確

#### 7.6.2 結構化資料
- [ ] Schema.org 標記正確
- [ ] Google Rich Results Test 通過

#### 7.6.3 技術 SEO
- [ ] 語意化 HTML 標籤
- [ ] Alt 屬性完整
- [ ] Heading 層級正確（H1-H6）
- [ ] 無重複的 H1
- [ ] robots.txt（如需）
- [ ] sitemap.xml（如需）

---

### 7.7 Accessibility 驗收清單

#### 7.7.1 鍵盤導航
- [ ] Tab 鍵可瀏覽所有互動元素
- [ ] Focus 狀態清晰可見
- [ ] 跳過導航連結（Skip to content）

#### 7.7.2 螢幕閱讀器
- [ ] ARIA 標籤正確使用
- [ ] 圖片有替代文字
- [ ] 連結文字描述清楚

#### 7.7.3 色彩與對比
- [ ] 文字對比度符合 WCAG AA 標準（4.5:1）
- [ ] 不僅依靠顏色傳達資訊

---

## 8. 維護與更新

### 8.1 內容更新流程

#### 8.1.1 文案更新
1. 編輯 `index.html` 相應區塊
2. 測試本地端顯示
3. 推送至 GitHub
4. 確認線上更新

#### 8.1.2 圖片更新
1. 壓縮圖片至適當大小
2. 上傳至 `assets/images/` 目錄
3. 更新 HTML 中的圖片路徑
4. 清除瀏覽器快取測試

#### 8.1.3 連結更新
1. 確認新連結有效
2. 更新 HTML 中的 `href` 屬性
3. 測試連結可正常開啟

---

### 8.2 監控與分析

#### 8.2.1 Google Analytics（建議設定）
- 追蹤頁面訪問量
- 分析使用者行為
- 監控跳出率
- 追蹤購票按鈕點擊（Event Tracking）

#### 8.2.2 關鍵指標（KPIs）
- 網站訪客數
- 購票連結點擊率
- 平均停留時間
- 跳出率
- 社群媒體連結點擊數

---

### 8.3 緊急應變

#### 8.3.1 網站無法訪問
1. 檢查 GitHub Pages 狀態
2. 確認 Repository 設定正確
3. 檢查域名 DNS 設定（如有）

#### 8.3.2 購票連結失效
1. 立即更新為正確連結
2. 在網站顯眼處公告新連結
3. 透過社群媒體同步通知

#### 8.3.3 性能問題
1. 使用 Lighthouse 診斷
2. 壓縮圖片與資源
3. 移除不必要的第三方腳本

---

## 9. 專案團隊與角色

### 9.1 專案角色

| 角色 | 職責 | 負責人 |
|------|------|--------|
| **專案負責人** | 整體協調、決策 | [待指定] |
| **產品經理** | 需求確認、驗收 | [待指定] |
| **視覺設計師** | 視覺設計、設計系統 | [待指定] |
| **前端開發** | HTML/CSS/JS 開發 | [待指定] |
| **內容編輯** | 文案撰寫、素材準備 | [待指定] |
| **測試人員** | 功能測試、Bug 回報 | [待指定] |

---

### 9.2 溝通機制

#### 9.2.1 會議安排
- **Kickoff Meeting**：專案啟動會議（1 小時）
- **每日 Standup**：開發期間每日同步（15 分鐘）
- **設計審查會議**：設計稿確認（1 小時）
- **驗收會議**：最終驗收（1 小時）

#### 9.2.2 協作工具
- **專案管理**：Trello / Notion / GitHub Projects
- **設計協作**：Figma
- **程式碼管理**：GitHub
- **溝通工具**：Slack / Discord / Line

---

## 10. 附錄

### 10.1 專業術語表

| 術語 | 說明 |
|------|------|
| **一頁式網站** | Single Page Website，所有內容在一個頁面上，透過滾動瀏覽 |
| **響應式設計** | Responsive Web Design (RWD)，自適應不同裝置螢幕 |
| **CTA** | Call To Action，行動呼籲按鈕 |
| **Hero Section** | 網頁首屏的大型視覺區域 |
| **Lazy Loading** | 延遲載入，圖片進入視窗時才載入 |
| **Lighthouse** | Google 的網站性能測試工具 |
| **OG Tags** | Open Graph Tags，社群媒體分享時顯示的資訊 |
| **Schema.org** | 結構化資料標記，幫助搜尋引擎理解內容 |

---

### 10.2 參考資源

#### 10.2.1 設計靈感
- [Awwwards](https://www.awwwards.com/) - 優秀網站設計案例
- [Behance](https://www.behance.net/) - 設計作品集
- [Dribbble](https://dribbble.com/) - UI/UX 設計靈感

#### 10.2.2 技術文件
- [MDN Web Docs](https://developer.mozilla.org/) - 前端技術文件
- [CSS-Tricks](https://css-tricks.com/) - CSS 技巧與教學
- [Web.dev](https://web.dev/) - Google 的網站最佳實踐

#### 10.2.3 工具
- [TinyPNG](https://tinypng.com/) - 圖片壓縮
- [Google Fonts](https://fonts.google.com/) - 免費網頁字型
- [Font Awesome](https://fontawesome.com/) - 圖示庫
- [AOS](https://michalsnik.github.io/aos/) - 滾動動畫庫

---

### 10.3 相關文件

| 文件名稱 | 路徑 | 說明 |
|----------|------|------|
| **技術規格文件** | `/docs/specifications.md` | 詳細技術實作規範 |
| **設計系統文件** | `/docs/design-system.md` | 設計規範與元件庫 |
| **內容指南** | `/docs/content-guide.md` | 文案撰寫與素材規範 |
| **部署手冊** | `/docs/deployment-guide.md` | GitHub Pages 部署步驟 |
| **測試計畫** | `/docs/test-plan.md` | 測試項目與流程 |

---

## 11. 版本紀錄

| 版本 | 日期 | 修改內容 | 修改人 |
|------|------|----------|--------|
| v1.0 | 2025-10-01 | 初版 PRD 完成 | [待填寫] |
| v1.1 | [待定] | 需求確認後更新 | [待填寫] |

---

## 12. 簽核欄

| 角色 | 姓名 | 簽名 | 日期 |
|------|------|------|------|
| 專案負責人 | [待填寫] | _______ | ______ |
| 產品經理 | [待填寫] | _______ | ______ |
| 設計師 | [待填寫] | _______ | ______ |
| 開發人員 | [待填寫] | _______ | ______ |

---

## 結語

本 PRD 文件旨在清楚定義 EO4 演唱會網站專案的所有需求與規格，作為設計、開發、測試與驗收的依據。若有任何疑問或需要調整的部分，請隨時提出討論。

讓我們一起打造一個令人驚艷的演唱會網站！🎵🎸

---

**文件結束**
