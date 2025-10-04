const sharp = require('sharp');
const fs = require('fs');
const path = require('path');

// 圖片目錄
const directories = [
    './assets/images',
    './assets/images/lineup'
];

// 支援的圖片格式
const imageExtensions = /\.(jpg|jpeg|png)$/i;

// 轉換函數
async function convertToWebP(inputPath, outputPath) {
    try {
        await sharp(inputPath)
            .webp({ 
                quality: 85,  // 高品質設定
                effort: 6     // 壓縮努力程度 (0-6, 6最佳)
            })
            .toFile(outputPath);
        
        const inputStats = fs.statSync(inputPath);
        const outputStats = fs.statSync(outputPath);
        const savedPercent = ((inputStats.size - outputStats.size) / inputStats.size * 100).toFixed(2);
        
        console.log(`✅ ${path.basename(inputPath)} -> ${path.basename(outputPath)}`);
        console.log(`   原始: ${(inputStats.size / 1024).toFixed(2)} KB | WebP: ${(outputStats.size / 1024).toFixed(2)} KB | 節省: ${savedPercent}%\n`);
        
        return true;
    } catch (error) {
        console.error(`❌ 轉換失敗 ${inputPath}:`, error.message);
        return false;
    }
}

// 主要執行函數
async function convertAllImages() {
    console.log('🚀 開始轉換圖片為 WebP 格式...\n');
    
    let totalConverted = 0;
    let totalSkipped = 0;
    
    for (const dir of directories) {
        if (!fs.existsSync(dir)) {
            console.log(`⚠️  目錄不存在: ${dir}\n`);
            continue;
        }
        
        console.log(`📁 處理目錄: ${dir}`);
        
        const files = fs.readdirSync(dir);
        const imageFiles = files.filter(file => imageExtensions.test(file));
        
        for (const file of imageFiles) {
            const inputPath = path.join(dir, file);
            const outputPath = path.join(dir, file.replace(imageExtensions, '.webp'));
            
            // 如果 WebP 已存在，跳過
            if (fs.existsSync(outputPath)) {
                console.log(`⏭️  已存在，跳過: ${path.basename(outputPath)}\n`);
                totalSkipped++;
                continue;
            }
            
            const success = await convertToWebP(inputPath, outputPath);
            if (success) totalConverted++;
        }
    }
    
    console.log('=' .repeat(60));
    console.log(`✨ 轉換完成！`);
    console.log(`   成功轉換: ${totalConverted} 個檔案`);
    console.log(`   跳過: ${totalSkipped} 個檔案`);
    console.log('=' .repeat(60));
}

// 執行
convertAllImages().catch(console.error);
