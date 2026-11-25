# 健康综合咨询问诊平台

基于 Spring Boot 的本科毕业设计，面向用户、医生和管理员，包含挂号预约、在线咨询、诊疗记录、药方记录、患者档案与健康资讯管理等模块。

## 技术与环境

- 后端：Java 8、Spring Boot 2.2.2.RELEASE、MyBatis-Plus、Maven 3.8/3.9。
- 数据库：MySQL，初始化脚本采用 MySQL 5.7 兼容语法。
- 管理端：Vue 2、Element UI、Vue CLI 4、Axios。
- 用户端：HTML、JavaScript、Layui 等本地静态资源。
- 管理端旧版 node-sass 4.x 建议使用 Node.js 14；这是课程项目的历史开发环境，不建议直接部署到生产环境。

## 目录

```text
health-consultation-platform/
├── pom.xml
├── db/springboote9fx7.sql
└── src/
    ├── main/
    │   ├── java/com/
    │   │   ├── SpringbootSchemaApplication.java
    │   │   ├── annotation/ config/ controller/ dao/
    │   │   └── entity/ interceptor/ service/ utils/
    │   └── resources/
    │       ├── application.yml
    │       ├── mapper/
    │       ├── admin/admin/  # Vue 管理端工程
    │       ├── front/front/  # 用户端页面与依赖资源
    │       └── static/upload/.gitkeep
    └── test/java/com/
```

本仓库保留完整源码及本地前端依赖资源，不包含 JDK、Eclipse、Tomcat 安装程序、node_modules、target、旧前端编译包、源码映射、备份文件和历史上传附件。

## 本地启动

### 1. 数据库

创建一个专门用于演示的空数据库，避免在现有业务数据库中导入：

```sql
CREATE DATABASE springboote9fx7 CHARACTER SET utf8mb4;
USE springboote9fx7;
SOURCE /你的本地路径/db/springboote9fx7.sql;
```

也可以通过 Navicat 等工具向该空数据库导入 SQL 文件。公开脚本只包含表结构与下列专用演示管理员，不含原项目用户、病例、咨询、令牌和附件记录。演示账号：`demo_admin`，演示密码：`DemoOnly_2026!`。这是公开测试账号，请勿用于真实服务。

### 2. 后端

在项目根目录打开 PowerShell，配置本机 MySQL 凭据：

```powershell
$env:DB_USERNAME = 'root'
$env:DB_PASSWORD = '你的本地数据库密码'
mvn spring-boot:run
```

数据库主机、端口和名称可通过 `DB_HOST`、`DB_PORT`、`DB_NAME` 设置，默认分别为 `127.0.0.1`、`3306`、`springboote9fx7`。后端端口为 `8080`，上下文路径为 `/springboote9fx7`。

后端构建命令：

```powershell
mvn -DskipTests package
```

跳过测试不代表业务测试通过；原 Spring 上下文测试需要先配置可用的演示数据库。

### 3. 管理端

另开终端进入 `src/main/resources/admin/admin`，使用与旧依赖兼容的 Node 环境：

```powershell
npm install
npm run serve
```

管理端开发地址：`http://localhost:8081`。后端需要同时启动。使用演示管理员登录后，可新增科室、医生和资讯等演示内容。新增资料仅使用虚构数据。

高德地图属于可选集成。需要时将 `.env.example` 复制为 `.env.local`，填写自己的 `VUE_APP_AMAP_KEY`。部分旧用户端页面保留 `YOUR_MAP_API_KEY` 占位符，启用地图前需自行配置；仓库不提供第三方密钥。

### 4. 用户端

后端启动后访问 `http://localhost:8080/springboote9fx7/front/index.html`。初始数据库没有医生、资讯和历史业务记录，首页内容为空属于预期情况，可通过管理端添加演示资料。

## 数据与实现边界

- 本项目用于课程展示，不作为真实医疗服务或支付服务提供。
- 保留现有课程业务逻辑，不将补全源码等同于生产级安全加固。
- 原课程账号校验采用简化实现，公开部署前应重新设计密码存储、权限和数据保护。
- 图片、字体、编辑器等第三方组件保留原有资源及声明，发布者应核对其许可范围；本仓库未对第三方代码另行授权。
- 本次补全进行了源码与目录核对，实际构建及运行验证情况以提交说明为准。
