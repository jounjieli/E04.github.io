# EO4 字體更新 - 海報風格手寫體 ✍️

**更新日期**: 2025年10月4日  
**目標**: 將網頁 EO4 字體改為與海報相同的手寫體風格

---

## 🎨 字體設計變更

### 原設計 vs 新設計

| 特性 | 原設計 | 新設計（海報風格） |
|------|--------|-------------------|
| **字體風格** | 粗體正體 (Black weight) | 手寫體/書法體 (Cursive) |
| **字體族** | 預設 Sans-serif | Brush Script MT, Cursive |
| **字重** | 900 (Black) | 400 (Regular) |
| **大小寫** | 全大寫 (UPPERCASE) | 保持原樣 (無轉換) |
| **字母間距** | 20px (分散) | -5px (緊密連接) |
| **傾斜角度** | skewX(-5deg) | skewX(-8deg) + rotate(-2deg) |
| **字體大小** | 120px | 140px |

---

## ✨ 核心特色

### 1. **手寫體字型**
```css
font-family: 'Brush Script MT', 'Lucida Handwriting', 'Segoe Script', cursive;
```

字體優先順序：
1. **Brush Script MT** - Windows/Mac 內建手寫體
2. **Lucida Handwriting** - Windows 備選
3. **Segoe Script** - Windows 10+ 備選
4. **cursive** - 系統預設手寫體

### 2. **流暢的傾斜與旋轉**
```css
transform: skewX(-8deg) rotate(-2deg);
```
- 更大的傾斜角度 (-8deg)
- 加上輕微旋轉 (-2deg)
- 模擬自然的書寫角度

### 3. **緊密的字母連接**
```css
letter-spacing: -5px;
```
- 負間距讓字母更緊密
- 更像手寫的自然連接
- 符合海報的流暢感

### 4. **筆觸感陰影**
```css
text-shadow: 
    2px 2px 0px rgba(184, 134, 11, 0.3),    /* 筆觸陰影 */
    4px 4px 0px rgba(139, 115, 85, 0.2),    /* 深度陰影 */
    0 0 15px rgba(212, 175, 55, 0.8),       /* 內層發光 */
    0 0 30px rgba(212, 175, 55, 0.6),       /* 中層發光 */
    0 0 45px rgba(212, 175, 55, 0.4),       /* 外層發光 */
    0 8px 20px rgba(0, 0, 0, 0.6);          /* 底部陰影 */
```

---

## 🌈 配色調整

### 金色漸層（更接近海報）

```css
background: linear-gradient(145deg, 
    #F4E4BC 0%,    /* 淺米金 */
    #D4AF37 20%,   /* 標準金 */
    #C9A428 40%,   /* 中金 */
    #B8860B 60%,   /* 深金 */
    #8B6914 80%,   /* 暗金 */
    #6B5610 100%   /* 深褐金 */
);
```

**特點：**
- 6階漸層，更豐富的色彩層次
- 從淺到深的自然過渡
- 模擬金屬質感

---

## 💫 動畫效果

### 手寫體發光動畫

```css
@keyframes handwritten-glow {
    0%, 100% {
        filter: drop-shadow(0 0 12px rgba(212, 175, 55, 0.5));
        transform: skewX(-8deg) rotate(-2deg) scale(1);
    }
    50% {
        filter: drop-shadow(0 0 25px rgba(212, 175, 55, 0.8));
        transform: skewX(-8deg) rotate(-2deg) scale(1.01);
    }
}
```

**特點：**
- 4秒循環（比原先的3秒更柔和）
- 輕微放大 (1.01) 而非原先的 1.02
- 保持傾斜和旋轉角度不變

---

## 📱 響應式設計

### 各尺寸調整

| 螢幕尺寸 | 字體大小 | 字母間距 | 備註 |
|---------|---------|---------|------|
| **桌面** (>1024px) | 140px | -5px | 預設大小 |
| **平板** (768-1024px) | 100px | -4px | 適中尺寸 |
| **手機橫向** (481-767px) | 72px | -3px | 橫向模式 |
| **手機直向** (<480px) | 56px | -2px | 最小尺寸 |
| **極小螢幕** (<375px) | 56px | -2px | 保持可讀性 |

**所有尺寸都保持：**
- `transform: skewX(-8deg) rotate(-2deg)`
- 手寫體字型
- 相同的動畫效果

---

## 🔄 與海報的對比

### 海報設計特點：
- ✅ 流暢的手寫體
- ✅ 自然的傾斜角度
- ✅ 字母緊密連接
- ✅ 金黃色調
- ✅ 柔和的筆觸感

### 網頁實現：
- ✅ 使用系統手寫體字型
- ✅ CSS transform 模擬傾斜和旋轉
- ✅ 負間距實現字母連接
- ✅ 6階金色漸層
- ✅ 多層陰影模擬筆觸

---

## 📂 修改的檔案

### 1. `css/styles.css`
```css
.hero-title {
    /* 從 120px 改為 140px */
    /* 從 letter-spacing: 20px 改為 -5px */
    /* 新增 font-family: cursive */
    /* 新增 transform: rotate(-2deg) */
    /* 更新 text-shadow 為筆觸感 */
    /* 更新漸層色為 6 階 */
}
```

### 2. `css/responsive.css`
```css
/* 平板 (1024px) */
.hero-title { font-size: 100px; letter-spacing: -4px; }

/* 手機橫向 (767px) */
.hero-title { font-size: 72px; letter-spacing: -3px; }

/* 手機直向 (480px) */
.hero-title { font-size: 56px; letter-spacing: -2px; }

/* 極小螢幕 (375px) */
.hero-title { font-size: 56px; letter-spacing: -2px; }
```

---

## 🎯 視覺效果

### 現在的 EO4 字體：

1. **流暢手寫感** ✍️
   - 使用系統內建手寫體
   - 自然的書寫角度

2. **緊密連接** 🔗
   - 負字母間距
   - 字母之間幾乎無縫

3. **金色質感** ✨
   - 6階漸層
   - 從淺金到深褐金

4. **筆觸陰影** 🖌️
   - 雙層位移陰影
   - 三層發光效果
   - 立體深度

5. **柔和脈動** 💫
   - 4秒循環
   - 輕微發光變化
   - 微小的縮放

---

## 💡 備註

### 字體回退機制

如果使用者系統沒有 Brush Script MT，會自動使用：
1. Lucida Handwriting
2. Segoe Script
3. 系統預設 cursive 字型

### 相容性

- ✅ 所有現代瀏覽器
- ✅ 支援 Windows/Mac/Linux
- ✅ 手機和平板完整支援
- ✅ 保持可讀性

---

## 🚀 測試建議

開啟 `index.html` 查看效果，應該會看到：

1. **E04** 字體呈現手寫流暢感
2. 字母向右傾斜並略微旋轉
3. 字母之間緊密連接
4. 金黃色漸層效果
5. 柔和的發光脈動

**與海報對比：**
- 打開海報圖片
- 同時開啟網頁
- 比較字體的傾斜角度、連接感和色調

---

**更新完成！** ✨  
現在網頁的 EO4 字體更接近海報的手寫藝術風格了！
