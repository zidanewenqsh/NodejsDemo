# NodejsDemo
My node.js demo projects
# Node.js Dockerized App

本项目展示如何使用 Docker 和 docker-compose 构建和运行一个 Node.js 应用。

## 项目结构

```
/
|- Dockerfile
|- docker-compose.yml
|- package.json
|- app.js
|- README.md
```

- `Dockerfile` - 定义用于构建 Node.js 应用的 Docker 镜像。
- `docker-compose.yml` - 包含运行应用所需的服务配置。
- `package.json` - 定义项目依赖和脚本。
- `app.js` - Express 应用的入口文件。
- `README.md` - 项目文档说明。

## 快速开始

确保您已安装 Docker 和 docker-compose。然后执行以下步骤：

1. 克隆仓库：

```bash
git clone https://github.com/zidanewenqsh/NodejsDemo.git
cd NodejsDemo
```

2. 构建并启动容器：

```bash
docker-compose up --build
```

3. 访问应用：

在浏览器中访问 `http://localhost:8080`，应显示 "Hello World!"。

## 开发说明

### 环境变量

- `NODE_ENV` - 设置为 `development` 以启用开发模式。

### 卷

- 代码卷挂载 - 当前目录下的所有文件都映射到容器的 `/usr/src/app`。
- 匿名卷挂载 - `/usr/src/app/node_modules` 确保容器内的 `node_modules` 不被覆盖。

### 端口

- 应用在容器内部监听 8080 端口，并映射到宿主机的 8080 端口。

## 维护指南

### 更新依赖

若要添加或更新项目依赖，请修改 `package.json` 文件，并运行以下命令：

```bash
docker-compose run --rm app npm install
```

这将在 Docker 容器内安装依赖，而不是在本地环境。

重建 Docker 镜像以应用更改：

```bash
docker-compose up --build
```

## 支持

遇到问题请提交 issue 到项目仓库。

## 许可证

本项目采用 [MIT 许可证](LICENSE)。
