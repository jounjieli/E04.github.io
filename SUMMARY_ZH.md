# EO4 演唱會網站 - 專案摘要

## 🎯 專案基本資訊

**網站**: https://jounjieli.github.io/E04.github.io/  
**活動日期**: 2025年11月1日 18:30  
**地點**: Words Live Taichung  
**技術**: HTML5 + CSS3 + Vanilla JS（單頁式網站）

---

## ✅ 已完成功能

### 核心功能
- ✅ 完整的單頁式演唱會網站（9個區塊）
- ✅ 響應式設計（支援手機/平板/桌面）
- ✅ Instagram 成員頭像整合
- ✅ 社群分享功能（FB/IG/Line）
- ✅ Google Maps 地圖嵌入
- ✅ 購票 QR Code 展示
- ✅ 活動資訊時程表

### 最新更新 (2025-10-04)
1. **Instagram 陣容展示**
   - 5位成員的 IG 頭像網格
   - 可點擊連結至個人 Instagram
   - 顯示成員角色與帳號

2. **社群連結整合**
   - 追蹤我們區新增成員 IG 卡片
   - Instagram 風格設計
   - 完整的響應式佈局

---

## 🔴 待辦事項（優先順序）

### 🔥 緊急（建議本週完成）
1. **更新 Instagram 頭像**
   - 目前使用 placeholder 圖片
   - 需下載真實頭像並替換
   - 位置: `index.html` 第 187-249 行

2. **整合網站 Logo**
   - Logo 檔案: `assets/images/E04_logo.png`
   - 需加入導航列
   - 更新網站 favicon

3. **更新購票連結**
   - 目前為錨點連結 `#tickets`
   - 需改為實際購票平台網址
   - 位置: `index.html` 搜尋 `href="#tickets"`

### ⚠️ 重要（演出前完成）
4. **圖片優化**
   - `banner.png` 過大（22+ MB）
   - 建議壓縮至 < 500KB
   - 工具: [TinyPNG](https://tinypng.com/)

5. **測試所有功能**
   - 手機版完整測試
   - 所有連結檢查
   - 購票流程測試

---

## 📂 關鍵檔案位置

```
重要檔案:
├── index.html              ← 主網頁（修改內容這裡）
├── css/styles.css         ← 樣式設計（修改顏色/字型這裡）
├── css/responsive.css     ← 手機版樣式
├── js/main.js            ← 互動功能
└── assets/images/        ← 所有圖片資源
    ├── banner.png        ← Hero 背景（需壓縮）
    ├── E04_logo.png      ← Logo（待整合）
    └── qr-code.png       ← 購票 QR

重要文件:
├── HANDOVER.md           ← 完整交接文件（詳細說明）
├── QUICK_START.md        ← 快速開始指南
└── docs/PRD.md          ← 產品需求文件
```

---

## 🚀 快速操作指南

### 如何更新網站內容？
1. 編輯 `index.html`
2. 儲存變更
3. 執行以下指令推送到 GitHub:
```bash
git add .
git commit -m "更新內容"
git push origin main
```
4. 等待 1-2 分鐘，訪問網站查看更新

### 如何測試網站？
**方法1**: VS Code Live Server
- 安裝 Live Server 擴充功能
- 右鍵 `index.html` → "Open with Live Server"

**方法2**: 直接開啟檔案
- 雙擊 `index.html` 在瀏覽器中開啟

---

## 👥 成員 Instagram 帳號

| 成員 | IG 帳號 | 角色 |
|------|---------|------|
| 陳星宏 (Anders) | @xinghong_1124 | 主唱/鼓手 |
| 李晉杰 (JJ) | @jshen_journnal | 主唱 |
| 賴昶融 | @v870617 | 主唱/貝斯手 |
| 程韋凱 | @cheng.1208 | 主唱/鼓手 |
| 黃川騏 | @barrysing4u | 主唱/鍵盤手 |

---

## 🎨 設計規範

### 顏色
- 主色（金色）: `#D4AF37`
- 背景（米色）: `#F5F1E8`
- 文字（深色）: `#1A1A1A`

### 字型
- 英文: Montserrat
- 中文: Noto Sans TC

### 響應式斷點
- 手機: < 768px
- 平板: 768px - 1024px
- 桌面: > 1024px

---

## 🐛 常見問題

**Q: 圖片載入很慢？**  
A: 需要壓縮圖片，特別是 `banner.png`（目前 22MB）

**Q: 手機版顯示怪怪的？**  
A: 檢查 `css/responsive.css`，確認斷點設定

**Q: Instagram 頭像無法顯示？**  
A: 檢查圖片路徑，確認檔案是否存在於 `assets/images/` 目錄

**Q: 如何修改活動時間？**  
A: 編輯 `index.html`，搜尋 "18:00" 或 "18:30" 並修改

---

## 📞 需要協助？

1. 查看完整交接文件: `HANDOVER.md`
2. 查看快速指南: `QUICK_START.md`
3. 查看產品文件: `docs/PRD.md`
4. 檢查程式碼註解（HTML/CSS/JS 檔案中都有詳細說明）

---

## 🎯 下週 TODO Checklist

- [ ] 下載並更新 5位成員的 IG 真實頭像
- [ ] 加入 EO4 Logo 到導航列
- [ ] 更新 favicon 為 Logo
- [ ] 更新購票連結為實際網址
- [ ] 壓縮 banner.png 圖片
- [ ] 手機版完整測試
- [ ] 分享功能測試
- [ ] 檢查所有連結是否正常

---

**最後更新**: 2025年10月4日  
**網站狀態**: ✅ 上線中  
**待處理項目**: 3個緊急 + 2個重要  
**演出倒數**: 28天
