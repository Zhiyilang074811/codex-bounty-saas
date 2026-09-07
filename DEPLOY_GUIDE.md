# SaaS 部署指南 — CODEX.bounty

## 方式 1: Vercel 一键部署（推荐）

1. 打开 https://vercel.com/new
2. Import Project → 选择本地文件夹
3. 选择: C:\Users\someo\Documents\Codex\codex-money\saas_product
4. Framework Preset: Other
5. Root Directory: . (当前目录)
6. Build Command: echo Static
7. Output Directory: .
8. 点击 Deploy

部署完成后访问: https://你的项目名.vercel.app

## 方式 2: 手动上传到 Netlify

1. 打开 https://app.netlify.com/drop
2. 拖拽整个 saas_product 文件夹
3. 自动部署，获得 https 链接

## 方式 3: GitHub Pages

1. 创建新仓库 codex-bounty-saas
2. 推送 index.html 等文件
3. Settings → Pages → Source: main branch
4. 访问: https://Zhiyilang074811.github.io/codex-bounty-saas

## 下一步配置

1. 修改 index.html 中的联系方式（微信/邮箱）
2. 可选: 接入 Stripe 支付（需后端服务）
3. 配置自定义域名
