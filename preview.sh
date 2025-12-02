#!/bin/bash
# 本地预览脚本

echo "🚀 启动文档站点本地预览..."
echo "📍 访问地址: http://localhost:8000"
echo "⏹️  停止服务: 按 Ctrl+C"
echo ""

cd "$(dirname "$0")"
python3 -m http.server 8000
