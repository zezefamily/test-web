import VueRouter from 'vue-router'
import Vue from 'vue'

Vue.use(VueRouter)

// import BaseView from "./components/BaseView"
import Page0 from "./components/pages/page0"
import Page1 from "./components/pages/page1"
import Page2 from "./components/pages/page2"
import Page3 from "./components/pages/page3"


const routes = [
    { path: '*', component: Page0 },
    { path: '/page0', component: Page0 },
    { path: '/page1', component: Page1 },
    { path: '/page2', component: Page2 },
    { path: '/page3', component: Page3 }
];


const router = new VueRouter({
    mode: 'history',
    routes // (缩写) 相当于 routes: routes
})

export default router;

