
var projectName = '社区维修平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '社区公告',
	url: './pages/shequgonggao/list.html'
}, 
{
	name: '维修工',
	url: './pages/weixiugong/list.html'
}, 
{
	name: '维修订单',
	url: './pages/weixiudingdan/list.html'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.html'
},
{
	name: '留言反馈',
	url: './pages/messages/list.html'
}
]

var adminurl =  "http://localhost:8080/springboot78n92/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"住户","menuJump":"列表","tableName":"zhuhu"}],"menu":"住户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"社区公告","menuJump":"列表","tableName":"shequgonggao"}],"menu":"社区公告管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"维修工","menuJump":"列表","tableName":"weixiugong"}],"menu":"维修工管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"维修订单","menuJump":"列表","tableName":"weixiudingdan"}],"menu":"维修订单管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"接单信息","menuJump":"列表","tableName":"jiedanxinxi"}],"menu":"接单信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"在线沟通","menuJump":"列表","tableName":"zaixiangoutong"}],"menu":"在线沟通管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"举报信息","menuJump":"列表","tableName":"jubaoxinxi"}],"menu":"举报信息管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"社区公告列表","menuJump":"列表","tableName":"shequgonggao"}],"menu":"社区公告模块"},{"child":[{"buttons":["查看","举报"],"menu":"维修工列表","menuJump":"列表","tableName":"weixiugong"}],"menu":"维修工模块"},{"child":[{"buttons":["查看","接单","交流"],"menu":"维修订单列表","menuJump":"列表","tableName":"weixiudingdan"}],"menu":"维修订单模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"维修订单","menuJump":"列表","tableName":"weixiudingdan"}],"menu":"维修订单管理"},{"child":[{"buttons":["查看"],"menu":"接单信息","menuJump":"列表","tableName":"jiedanxinxi"}],"menu":"接单信息管理"},{"child":[{"buttons":["查看","支付"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","删除","修改"],"menu":"在线沟通","menuJump":"列表","tableName":"zaixiangoutong"}],"menu":"在线沟通管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"举报信息","menuJump":"列表","tableName":"jubaoxinxi"}],"menu":"举报信息管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"社区公告列表","menuJump":"列表","tableName":"shequgonggao"}],"menu":"社区公告模块"},{"child":[{"buttons":["查看","举报"],"menu":"维修工列表","menuJump":"列表","tableName":"weixiugong"}],"menu":"维修工模块"},{"child":[{"buttons":["查看","接单","交流"],"menu":"维修订单列表","menuJump":"列表","tableName":"weixiudingdan"}],"menu":"维修订单模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"住户","tableName":"zhuhu"},{"backMenu":[{"child":[{"buttons":["查看","删除","维修订单"],"menu":"接单信息","menuJump":"列表","tableName":"jiedanxinxi"}],"menu":"接单信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"在线沟通","menuJump":"列表","tableName":"zaixiangoutong"}],"menu":"在线沟通管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"社区公告列表","menuJump":"列表","tableName":"shequgonggao"}],"menu":"社区公告模块"},{"child":[{"buttons":["查看","举报"],"menu":"维修工列表","menuJump":"列表","tableName":"weixiugong"}],"menu":"维修工模块"},{"child":[{"buttons":["查看","接单","交流"],"menu":"维修订单列表","menuJump":"列表","tableName":"weixiudingdan"}],"menu":"维修订单模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"维修工","tableName":"weixiugong"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
