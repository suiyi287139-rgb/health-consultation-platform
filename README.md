# 健康综合咨询问诊平台

基于 Spring Boot 的本科毕业设计，面向用户、医生和管理员，包含挂号预约、在线咨询、诊疗记录、药方、患者档案及健康资讯等业务模块。

> 当前 GitHub 上传尚不完整。本次整理恢复已上传文件的 Maven 目录层级，并未补齐全部项目；目前不能直接编译运行。

## 技术栈

- Java 8、Spring Boot 2.2.2.RELEASE
- MyBatis / MyBatis-Plus、MySQL
- 原项目包含 Vue 管理端，当前仓库尚未上传完整前端源码

具体依赖以 `pom.xml` 为准。

## 目录结构

```text
health-consultation-platform/
├── pom.xml
├── db/
│   └── springboote9fx7.sql
└── src/
    ├── main/
    │   ├── java/com/
    │   │   ├── annotation/
    │   │   ├── config/
    │   │   ├── controller/
    │   │   ├── dao/
    │   │   ├── interceptor/
    │   │   ├── service/
    │   │   └── utils/
    │   └── resources/
    │       ├── mapper/
    │       └── static/
    └── test/java/com/
```

Java 源文件应位于与 `package` 声明一致的目录。MyBatis XML 与静态资源位于 `src/main/resources`，测试位于 `src/test/java`。

## 仍需补齐的文件

对照本地原项目 `springboote9fx7`，当前至少缺少：

1. `src/main/java/com/SpringbootSchemaApplication.java`：启动类。
2. `src/main/java/com/entity/`：实体及其关联类型。
3. `src/main/java/com/utils/` 中未上传的工具类。当前该目录仅有部分文件。
4. `src/main/resources/application.yml`：数据库、端口、上下文路径、MyBatis 等配置；请使用示例配置或环境变量。
5. `src/main/resources/admin/` 和 `src/main/resources/front/`：原项目的管理端与用户端资源。

请对照本地目录继续核对，以上不是完整缺失清单。完整源码上传前不要将该仓库描述为“开箱即用”。

## 文件上传方式

网页版上传时，应先进入对应目标目录，再上传其中的文件或子目录，保留目录层级。例如控制器应位于：

```text
src/main/java/com/controller/GuahaoyuyueController.java
```

请勿上传 `target/`、`node_modules/`、IDE/JDK/Tomcat 安装目录和整个项目压缩包。

## 数据与配置

- 发布前检查数据库脚本及附件，移除真实个人信息和病例等数据。
- 数据库密码、第三方密钥等使用环境变量或本地配置，不要提交到仓库。
- 当前 `db/` 和 `static/upload/` 内容仅恢复原有位置，本次目录整理不代表已完成数据脱敏审查。
- 本科课程项目中的模拟流程应在演示时说明，不作为真实医疗服务提供。
