# 使用官方Node.js基础镜像
FROM node:latest

# 创建应用目录
WORKDIR /usr/src/app

# 将应用的依赖文件复制到容器中
COPY src/app/package*.json ./

# 安装应用依赖
RUN npm install

# 将应用源代码复制到容器中
#COPY . .

# 应用绑定的端口号
EXPOSE 8080

# 定义环境变量
ENV NAME Node.js

# 运行app.js当容器启动时
#CMD [ "npm", "start" ]
CMD [ "npm", "run", "dev" ]
