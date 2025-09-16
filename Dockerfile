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

# Build ứng dụng NestJS
RUN npm run build

# Expose cổng (mặc định của NestJS)
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "run", "start:prod"]
