# 🚀 GitHub Pages 部署待办清单

## ✅ 第一步：准备GitHub仓库

- [x] 1. 登录GitHub账号
- [ ] 2. 创建新仓库（推荐名称：`ops-project-docs`）
  - Repository name: `ops-project-docs`
  - Description: OPS预印本网站开发文档
  - Public (公开) 或 Private (私有，需GitHub Pro)
  - 不要勾选 "Initialize with README"
- [ ] 3. 创建完成后，记下仓库地址（如 `https://github.com/your-username/ops-project-docs.git`）

---

## ✅ 第二步：上传项目文件

### 方法A：命令行方式（推荐）

```bash
# 1. 进入项目目录
cd /path/to/docs-site

# 2. 初始化Git仓库
git init

# 3. 添加所有文件
git add .

# 4. 提交文件
git commit -m "Initial commit: Project documentation site"

# 5. 关联远程仓库（替换your-username为你的GitHub用户名）
git remote add origin https://github.com/your-username/ops-project-docs.git

# 6. 推送到GitHub
git branch -M main
git push -u origin main
```

### 方法B：GitHub Desktop（图形界面）

1. 下载并安装 GitHub Desktop
2. 打开GitHub Desktop，选择 "Add Local Repository"
3. 选择 `docs-site` 文件夹
4. 点击 "Publish repository"
5. 选择账号和仓库名称，点击发布

### 方法C：GitHub网页直接上传

1. 进入创建好的GitHub仓库
2. 点击 "uploading an existing file"
3. 将 `docs-site` 目录下的所有文件拖拽到页面
4. 点击 "Commit changes"

---

## ✅ 第三步：启用GitHub Pages

- [ ] 1. 在GitHub仓库页面，点击 `Settings` （设置）
- [ ] 2. 在左侧菜单找到 `Pages`
- [ ] 3. 在 "Source" 下拉菜单中选择：
  - **Build and deployment**: `GitHub Actions` （推荐，自动部署）
  - 或者 `Deploy from a branch` → 选择 `main` 分支 → `/ (root)` 目录
- [ ] 4. 点击 `Save`
- [ ] 5. 等待1-3分钟，页面顶部会显示网站地址（如 `https://your-username.github.io/ops-project-docs/`）

---

## ✅ 第四步：验证部署

- [ ] 1. 访问GitHub Pages提供的网址
- [ ] 2. 检查首页是否正常显示
- [ ] 3. 测试各个导航链接：
  - [ ] 项目概览
  - [ ] 进度追踪
  - [ ] 开发指南
- [ ] 4. 检查样式是否正确加载

---

## ✅ 第五步：分享给团队

- [ ] 1. 将GitHub Pages网址发送到微信群：
  ```
  项目文档已上线！
  地址：https://your-username.github.io/ops-project-docs/
  
  可以查看：
  - 📖 项目概览和背景说明
  - 📊 实时任务进度追踪
  - 🔧 开发维护指南
  ```

- [ ] 2. 说明更新方式：
  ```
  更新进度方法：
  1. 本地修改 progress.html 文件
  2. 提交并push到GitHub
  3. 等待1-2分钟自动更新
  ```

---

## 📝 后续更新流程

### 更新进度表

```bash
# 1. 编辑 progress.html 文件
nano progress.html  # 或使用其他编辑器

# 2. 修改任务状态，如：
#    - 将复选框改为选中状态：checked
#    - 更改状态文字："⏸️ 待开始" → "🔄 进行中" → "✅ 已完成"
#    - 更新负责人信息

# 3. 提交更改
git add progress.html
git commit -m "更新任务进度：完成XX任务"

# 4. 推送到GitHub
git push

# 5. 等待1-2分钟，GitHub Pages自动更新
```

### 更新其他文档

同样的流程，编辑对应的HTML文件，然后提交推送即可。

---

## 🔒 隐私和安全检查清单

部署前务必检查：

- [ ] ❌ 没有服务器IP地址
- [ ] ❌ 没有SSH密钥或密码
- [ ] ❌ 没有数据库连接信息
- [ ] ❌ 没有API密钥
- [ ] ❌ 没有个人联系方式（电话、邮箱等）
- [ ] ✅ 只包含项目说明、技术文档、任务进度等公开信息

**⚠️ 重要提醒**：GitHub Pages默认是公开的，所有人都能访问！

---

## 🐛 常见问题排查

### Q1: 推送时要求输入用户名密码

**A**: GitHub已不支持密码登录，需要使用Personal Access Token

1. 在GitHub: Settings → Developer settings → Personal access tokens → Generate new token
2. 勾选 `repo` 权限
3. 生成后复制token
4. 推送时，用户名输入GitHub用户名，密码输入token

### Q2: 网站显示404错误

**A**: 
1. 检查GitHub Pages是否已启用
2. 确认分支和目录选择正确
3. 等待几分钟，部署需要时间
4. 检查 `index.html` 文件是否在根目录

### Q3: 样式丢失，网站显示不正常

**A**: 
1. 检查 `assets/css/style.css` 文件是否上传
2. 查看浏览器开发者工具（F12）Console是否有错误
3. 确认相对路径是否正确

### Q4: 无法推送到GitHub

**A**:
1. 检查网络连接
2. 确认仓库地址是否正确
3. 确认是否有推送权限
4. 尝试先 `git pull` 再 `git push`

---

## ✨ 完成！

完成以上步骤后，项目文档站点就正式上线了！

**下一步**：
- 与团队确认任务分配
- 定期更新进度表
- 根据项目推进补充文档

---

**文档创建时间**: 2024-12-02  
**维护人**: Yanx
