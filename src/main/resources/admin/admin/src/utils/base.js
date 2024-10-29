const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot78n92/",
            name: "springboot78n92",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot78n92/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "社区维修平台"
        } 
    }
}
export default base
