# Sử dụng Node.js image chính thức
FROM node:20-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và lock file
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn
COPY . .

# Build ứng dụng Next.js
RUN npm run build

# Expose cổng (mặc định của Next.js)
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
