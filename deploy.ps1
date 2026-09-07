#!/bin/bash
# 仙途AI · 一键部署到 Vercel
# 使用前请确保已安装 Vercel CLI: npm i -g vercel

set -e
echo "🚀 开始部署 仙途AI..."

# 1. 初始化项目（如未初始化）
if [ ! -f "vercel.json" ]; then
  echo "创建 vercel.json..."
  cat > vercel.json << 'EOF'
{
  "buildCommand": "echo \"Static site, no build needed\"",
  "outputDirectory": ".",
  "routes": [
    { "src": "/(.*)", "dest": "/index.html" }
  ]
}
EOF
fi

# 2. 安装依赖（如有需要）
echo "检查依赖..."
npm install 2>/dev/null || echo "无 package.json，跳过"

# 3. 部署到 Vercel
echo "部署中...（首次需要登录）"
vercel --prod

echo ""
echo "✅ 部署完成！"
echo "访问你的站点：https://你的项目名.vercel.app"
echo ""
echo "下一步："
echo "1. 绑定自定义域名（可选）"
echo "2. 接入 Stripe 支付（需后端）"
echo "3. 配置 AI API Key（见 .env.example）"
