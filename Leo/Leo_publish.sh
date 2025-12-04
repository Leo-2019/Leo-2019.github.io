#!/bin/bash

# 设置编码为UTF-8（Git Bash通常默认支持，此处可选）
export LANG=en_US.UTF-8

echo "⏩ 开始部署 Leo's Blog..."

# 检查Hexo CLI是否安装
if ! command -v hexo &> /dev/null; then
    echo "❌ Hexo CLI 未安装，正在安装..."
    npm install -g hexo-cli
fi

# 清理旧文件
echo "🧹 清理旧文件..."
hexo clean

# 生成静态文件
echo "🔨 生成静态文件..."
hexo generate

# 检查生成结果
if [ -d "public" ]; then
    echo "✅ 静态文件生成成功"
    echo "📊 文件统计:"
    # 统计文件数量
    find public -type f | wc -l | xargs echo "  文件数量:"
    # 统计总大小（单位：MB）
    du -sh public | cut -f1 | xargs echo "  总大小:"
else
    echo "❌ 静态文件生成失败"
    exit 1
fi

# 部署到GitHub Pages
echo "🚀 部署到 GitHub Pages..."
hexo deploy

echo "🎪 部署完成！舞台已准备就绪！"
echo "🎭 访问地址: https://Leo-2019.github.io"

# 暂停以查看输出（Git Bash中替代pause）
read -p "按任意键继续..."