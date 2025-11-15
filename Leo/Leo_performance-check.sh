#!/bin/bash

# V's Joker Blog 性能检查
echo "🎭 性能检查开始..."

# 生成静态文件并计时
echo "⏱️  测试生成速度..."
START_TIME=$(date +%s)
hexo clean > /dev/null 2>&1
hexo generate > /dev/null 2>&1
END_TIME=$(date +%s)
GENERATION_TIME=$((END_TIME - START_TIME))

echo "📊 生成耗时: ${GENERATION_TIME}秒"

# 检查文件大小
echo "📏 检查文件大小..."
PUBLIC_SIZE=$(du -sh public | cut -f1)
echo "  静态文件总大小: $PUBLIC_SIZE"

# 检查图片优化
echo "🖼️  检查图片文件..."
IMAGE_COUNT=$(find public -name "*.jpg" -o -name "*.png" -o -name "*.gif" | wc -l)
echo "  图片文件数量: $IMAGE_COUNT"

# 检查 CSS/JS 压缩
echo "🗜️  检查资源压缩..."
CSS_FILES=$(find public -name "*.css" | wc -l)
JS_FILES=$(find public -name "*.js" | wc -l)
echo "  CSS 文件: $CSS_FILES"
echo "  JS 文件: $JS_FILES"

echo "🎪 性能检查完成！"