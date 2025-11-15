#!/bin/bash

# V's Joker Blog 健康检查脚本
echo "🎭 V's Joker Blog 健康检查开始..."

# 检查 Node.js 版本
echo "📋 检查 Node.js 版本..."
NODE_VERSION=$(node -v)
echo "  Node.js: $NODE_VERSION"

# 检查 Hexo 版本
echo "📋 检查 Hexo 版本..."
HEXO_VERSION=$(hexo version | head -n 1)
echo "  $HEXO_VERSION"

# 检查依赖
echo "📋 检查依赖完整性..."
npm audit --audit-level moderate

# 检查主题
echo "📋 检查主题状态..."
if [ -d "themes/next" ]; then
    cd themes/next
    THEME_COMMIT=$(git rev-parse --short HEAD)
    echo "  NexT 主题: $THEME_COMMIT"
    cd ../..
else
    echo "  ❌ NexT 主题未找到"
fi

# 检查配置文件
echo "📋 检查配置文件..."
if [ -f "_config.yml" ]; then
    echo "  ✅ 主配置文件存在"
else
    echo "  ❌ 主配置文件缺失"
fi

if [ -f "_config.next.yml" ]; then
    echo "  ✅ 主题配置文件存在"
else
    echo "  ❌ 主题配置文件缺失"
fi

# 检查文章数量
POST_COUNT=$(find source/_posts -name "*.md" | wc -l)
echo "📊 文章统计: $POST_COUNT 篇文章"

# 测试生成
echo "🔨 测试静态文件生成..."
hexo clean > /dev/null 2>&1
if hexo generate > /dev/null 2>&1; then
    echo "  ✅ 静态文件生成正常"
    GENERATED_FILES=$(find public -type f | wc -l)
    echo "  📊 生成文件数: $GENERATED_FILES"
else
    echo "  ❌ 静态文件生成失败"
fi

echo "🎪 健康检查完成！"