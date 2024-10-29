import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import weixiugong from '@/views/modules/weixiugong/list'
    import weixiudingdan from '@/views/modules/weixiudingdan/list'
    import jiedanxinxi from '@/views/modules/jiedanxinxi/list'
    import dingdanxinxi from '@/views/modules/dingdanxinxi/list'
    import shequgonggao from '@/views/modules/shequgonggao/list'
    import zaixiangoutong from '@/views/modules/zaixiangoutong/list'
    import messages from '@/views/modules/messages/list'
    import zhuhu from '@/views/modules/zhuhu/list'
    import jubaoxinxi from '@/views/modules/jubaoxinxi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
	path: '/weixiugong',
        name: '维修工',
        component: weixiugong
      }
          ,{
	path: '/weixiudingdan',
        name: '维修订单',
        component: weixiudingdan
      }
          ,{
	path: '/jiedanxinxi',
        name: '接单信息',
        component: jiedanxinxi
      }
          ,{
	path: '/dingdanxinxi',
        name: '订单信息',
        component: dingdanxinxi
      }
          ,{
	path: '/shequgonggao',
        name: '社区公告',
        component: shequgonggao
      }
          ,{
	path: '/zaixiangoutong',
        name: '在线沟通',
        component: zaixiangoutong
      }
          ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
          ,{
	path: '/zhuhu',
        name: '住户',
        component: zhuhu
      }
          ,{
	path: '/jubaoxinxi',
        name: '举报信息',
        component: jubaoxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
