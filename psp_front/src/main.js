/*
 * @Author: KingWJC
 * @Date: 2021-10-18 16:21:24
 * @LastEditors: KingWJC
 * @LastEditTime: 2021-10-28 11:24:40
 * @Descripttion: 
 * @FilePath: \psp_front\src\main.js
 */
// with polyfills
import 'core-js/stable'
import 'regenerator-runtime/runtime'

import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store/'
import { VueAxios } from './utils/request'
import { FormModel } from 'ant-design-vue'

// mock
// WARNING: `mockjs` NOT SUPPORT `IE` PLEASE DO NOT USE IN `production` ENV.
import './mock'

import bootstrap from './core/bootstrap'
import './core/lazy_use'
import './permission' // permission control
import './utils/filter' // global filter
import './components/global.less'
import { Dialog } from '@/components'

Vue.config.productionTip = false

// mount axios Vue.$http and this.$http
Vue.use(VueAxios)
Vue.use(Dialog)
Vue.use(FormModel)

new Vue({
    router,
    store,
    created: bootstrap,
    render: h => h(App)
}).$mount('#app')
