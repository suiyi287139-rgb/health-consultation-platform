const base = {
    get() {
        return {
            url : "http://localhost:8080/springboote9fx7/",
            name: "springboote9fx7",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboote9fx7/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于SpringBoot的健康咨询服务平台"
        } 
    }
}
export default base
