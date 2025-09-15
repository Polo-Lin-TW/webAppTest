# Dockerfile for Vue 3 application with Vite dev server

FROM node:18-alpine

# 設定工作目錄
WORKDIR /app

# 複製 package.json
COPY package.json ./

# 安裝依賴套件
RUN npm install

# 複製專案檔案
COPY . .

# 暴露 Vite 開發伺服器預設 port
EXPOSE 5173

# 設定健康檢查
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:5173/ || exit 1

# 啟動 Vite 開發伺服器
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]