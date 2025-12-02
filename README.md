# OPS预印本网站开发文档

本项目使用GitHub Pages托管项目文档和进度追踪。

## 📖 在线文档

访问在线文档：`https://your-username.github.io/ops-project-docs/`

## 🚀 快速部署到GitHub Pages

### 方法1：直接启用GitHub Pages（最简单）

1. 创建新的GitHub仓库（如 `ops-project-docs`）
2. 将本项目所有文件推送到仓库
3. 在仓库设置中：
   - 进入 `Settings` → `Pages`
   - Source选择 `Deploy from a branch`
   - Branch选择 `main` (或 `master`)，文件夹选择 `/ (root)`
   - 点击Save
4. 等待几分钟，访问 `https://your-username.github.io/ops-project-docs/`

### 方法2：使用GitHub Actions自动部署（推荐）

已配置好 `.github/workflows/deploy.yml`，推送到GitHub后会自动部署。

```bash
# 初始化Git仓库
git init
git add .
git commit -m "Initial commit: Project documentation"

# 关联远程仓库并推送
git remote add origin https://github.com/your-username/ops-project-docs.git
git branch -M main
git push -u origin main
```

## 📝 更新文档

### 更新进度（本地修改）

1. 编辑 `progress.md` 文件，修改任务状态
2. 提交并推送：
   ```bash
   git add progress.md
   git commit -m "更新任务进度"
   git push
   ```
3. GitHub Pages会自动更新（约1-2分钟）

### 更新其他文档

编辑对应的 `.md` 文件，然后提交推送即可。

## 📂 文档结构

```
.
├── index.html           # 首页（自动生成目录）
├── README.md           # 项目说明
├── overview.md         # 项目概览
├── progress.md         # 进度追踪表
├── dev-guide.md        # 开发维护指南
├── deployment.md       # 部署指南
└── assets/
    └── css/
        └── style.css   # 自定义样式
```

## 🔧 本地预览

```bash
# 使用Python启动本地服务器
python -m http.server 8000

# 访问 http://localhost:8000
```

## 📱 关于GitHub登录状态检测

**重要说明**：GitHub Pages只能托管静态网页，无法检测GitHub登录状态或直接修改文件。

**推荐方案**：
- 在本地修改 `progress.md`
- 使用Git提交并推送
- GitHub Pages自动更新

**备选方案**（如果需要在线编辑）：
- 使用GitHub网页界面直接编辑文件
- 点击文件 → 编辑（铅笔图标）→ 提交更改

## 🔒 隐私和安全

**注意事项**：
- ⚠️ GitHub Pages是**公开的**，所有人都能访问
- 🚫 不要提交任何敏感信息：
  - 服务器IP地址
  - 密码、密钥
  - 数据库连接信息
  - 个人联系方式
- ✅ 可以提交：
  - 项目概览和说明
  - 技术文档
  - 任务进度（脱敏后）
  - 开发指南

**私有选项**：
如果需要私有文档站点，可以考虑：
- 使用私有GitHub仓库 + GitHub Pages（需要GitHub Pro）
- 使用GitLab Pages（支持私有项目）
- 自建文档服务器

## 📧 联系方式

项目相关问题请在微信群讨论。
