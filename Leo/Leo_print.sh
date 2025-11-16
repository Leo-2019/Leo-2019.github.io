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
echo "🚀 本地部署..."
hexo server &
# 延迟 3 秒，确保服务已启动（根据电脑性能可调整时间，如 2 秒或 4 秒）
sleep 3
# 打开本地 Hexo 页面

echo "🎭 访问地址: http://localhost:4000/"
start http://localhost:4000/