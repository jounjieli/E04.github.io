# Instagram 整合更新說明

**更新日期**: 2025年10月4日  
**更新內容**: 整合成員 Instagram 頭像與連結

---

## ✅ 已完成的更新

### 1. 演出陣容區塊 (`#lineup`)

**更新內容：**
- 將成員列表改為帶有 Instagram 頭像的卡片設計
- 每位成員顯示：
  - Instagram 頭像（圓形，150x150px）
  - 成員姓名
  - 角色定位
  - Instagram 帳號
  - Instagram 小圖標徽章
- 點擊卡片可直接前往成員的 Instagram 頁面
- Hover 效果：卡片上浮、頭像放大、金色邊框

**成員資訊：**
| 成員 | 角色 | Instagram |
|------|------|-----------|
| 李晉杰 (JJ) | 主唱 | [@jshen_journnal](https://www.instagram.com/jshen_journnal/?hl=zh-tw) |
| 陳星宏 (Anders) | 主唱/鼓手 | [@xinghong_1124](https://www.instagram.com/xinghong_1124/?hl=zh-tw) |
| 程韋凱 | 主唱/吉他手 | [@cheng.1208](https://www.instagram.com/cheng.1208/?hl=zh-tw) |
| 賴昶融 | 主唱/吉他手 | [@v870617](https://www.instagram.com/v870617/?hl=zh-tw) |
| 黃川騏 | 主唱/鍵盤手 | [@barrysing4u](https://www.instagram.com/barrysing4u/?hl=zh-tw) |

### 2. 追蹤我們區塊 (`#social`)

**更新內容：**
- 移除舊的通用社群連結 (Facebook/YouTube/Twitter)
- 新增成員 Instagram 卡片網格
- 每張卡片顯示：
  - 成員頭像（圓形，70x70px）
  - 成員姓名
  - Instagram 帳號
  - Instagram 漸層圖標
- 採用響應式網格佈局（支援手機/平板/桌面）
- Hover 效果：卡片上浮、陰影增強、Instagram 漸層背景

### 3. CSS 樣式更新

**新增的樣式類別：**
- `.member-avatar` - 成員頭像容器
- `.ig-badge` - Instagram 徽章（使用 Instagram 官方漸層色）
- `.member-ig` - Instagram 帳號文字樣式
- `.members-ig-grid` - 成員 IG 卡片網格
- `.member-ig-card` - 成員 IG 卡片
- `.member-ig-avatar` - IG 卡片中的頭像
- `.member-ig-info` - IG 卡片中的資訊區塊

**設計特色：**
- Instagram 官方漸層色系
- 圓形頭像配金色邊框
- 平滑的 hover 動畫效果
- 響應式設計，支援各種螢幕尺寸

---

## 📋 待辦事項

### 🔴 緊急（需立即處理）

#### 下載成員頭像
目前頭像圖片尚未放置，需要執行以下步驟：

1. **前往資料夾**  
   `c:\JJ\claude_workspace\Common\e04_website\github-static-webpage\assets\images\lineup\`

2. **閱讀說明文件**  
   查看 `README.md` 了解如何下載 Instagram 頭像

3. **下載並重新命名圖片**
   ```
   jj.jpg        - 李晉杰的頭像
   anders.jpg    - 陳星宏的頭像
   weikai.jpg    - 程韋凱的頭像
   changrong.jpg - 賴昶融的頭像
   chuanqi.jpg   - 黃川騏的頭像
   ```

4. **放置圖片**  
   將 5 張圖片放入 `assets/images/lineup/` 資料夾

**後備機制：**  
如果圖片載入失敗，網站會自動顯示 EO4 Logo (`E04_logo.png`)

---

## 🧪 測試清單

完成頭像上傳後，請測試以下項目：

### 桌面版測試
- [ ] 演出陣容區塊顯示 5 位成員的圓形頭像
- [ ] Hover 時頭像放大、卡片上浮
- [ ] Instagram 徽章顯示正常
- [ ] 點擊卡片可正確開啟 Instagram 連結
- [ ] 追蹤我們區塊顯示 5 張成員卡片
- [ ] 成員 IG 卡片佈局正常

### 手機版測試
- [ ] 成員卡片自動調整為單欄或雙欄
- [ ] 頭像清晰可見
- [ ] 點擊連結正常運作
- [ ] 所有文字可讀性良好

### 載入測試
- [ ] 圖片載入速度正常
- [ ] 若圖片不存在，顯示 Logo 後備圖
- [ ] 無 404 錯誤

---

## 📂 檔案修改記錄

### 修改的檔案
1. **index.html**
   - 行 187-249: 更新 Lineup Section
   - 行 448-530: 更新 Social Section

2. **css/styles.css**
   - 行 496-597: 更新 Lineup 樣式
   - 行 954-1048: 新增成員 IG 卡片樣式

### 新增的檔案
1. `assets/images/lineup/README.md` - 頭像下載說明
2. `INSTAGRAM_UPDATE.md` - 本文件

---

## 🔄 未來可能的優化

1. **自動化頭像更新**
   - 考慮使用 Instagram API 自動抓取最新頭像
   - 需要申請 Instagram 開發者權限

2. **動態內容**
   - 顯示最新的 Instagram 貼文
   - 顯示追蹤人數

3. **互動功能**
   - 在網站內嵌 Instagram Feed
   - 新增 Instagram Stories 連結

---

## ❓ 常見問題

### Q1: 為什麼圖片顯示為 Logo？
**A:** 圖片檔案不存在或檔名不正確。請確認：
- 圖片已放入 `assets/images/lineup/` 資料夾
- 檔名完全符合要求（注意大小寫）
- 圖片格式為 JPG

### Q2: 可以使用 PNG 格式嗎？
**A:** 可以，但需要修改 HTML 中的檔案副檔名 `.jpg` → `.png`

### Q3: 圖片太大怎麼辦？
**A:** 建議：
- 使用線上工具壓縮圖片（如 TinyPNG）
- 調整圖片尺寸為 500x500px
- 保持檔案大小在 500KB 以下

### Q4: Instagram 連結無法開啟？
**A:** 請檢查：
- 網址是否正確
- 是否有網路連線
- Instagram 帳號是否為公開

---

## 📞 需要協助？

如果遇到任何問題，請聯絡：
- **技術支援**: [聯絡資訊]
- **參考文件**: 
  - `HANDOVER.md` - 完整交接文件
  - `SUMMARY_ZH.md` - 專案摘要
  - `QUICK_START.md` - 快速開始指南

---

**祝網站更新順利！** 🎉
