# Vue 3 Web Application

一個使用 Vue 3、Nginx 反向代理和 Docker 多階段構建的現代化網頁應用程式範例。

## 功能特色

- ✅ Vue 3 + Composition API
- ✅ Vite 作為建構工具
- ✅ Nginx 反向代理
- ✅ Docker 多階段構建
- ✅ Docker Compose 部署
- ✅ 響應式設計
- ✅ 互動式計數器
- ✅ 即時時間顯示

## 本地開發

### 安裝依賴
```bash
npm install
```

### 開發模式
```bash
npm run dev
```

### 建構專案
```bash
npm run build
```

## Docker 部署

### 使用 Docker Compose (推薦)
```bash
# 建構並啟動容器
docker-compose up --build

# 在背景執行
docker-compose up -d --build

# 停止容器
docker-compose down
```

### 使用 Docker 指令
```bash
# 建構映像檔
docker build -t vue3-webapp .

# 執行容器
docker run -d -p 8080:80 --name vue3-app vue3-webapp
```

## 存取應用程式

應用程式將在以下位址運行：
- 本地開發：http://localhost:3000
- Docker 部署：http://localhost:8080

## 專案結構

```
webAppTest/
├── src/                    # 來源程式碼
│   ├── components/         # Vue 元件
│   ├── App.vue            # 主應用程式元件
│   ├── main.js            # 應用程式進入點
│   └── style.css          # 全域樣式
├── nginx/                 # Nginx 設定
│   └── nginx.conf         # Nginx 設定檔
├── Dockerfile             # Docker 多階段構建檔案
├── docker-compose.yml     # Docker Compose 設定
├── package.json           # 專案依賴和腳本
├── vite.config.js        # Vite 設定
└── index.html            # HTML 模板
```

## 技術堆疊

- **前端框架**: Vue 3
- **建構工具**: Vite
- **網頁伺服器**: Nginx
- **容器化**: Docker
- **編排**: Docker Compose