import { createApp } from 'vue'
import '@/style/reset.scss'
import App from './App.vue'

//引入全局样式
import XhTop from '@/components/xh_top/index.vue';
import XhButtom from '@/components/xh_buttom/index.vue';
import router from '@/router';

import ElementPlus from 'element-plus';
import 'element-plus/dist/index.css';

import zhCn from 'element-plus/es/locale/lang/zh-cn' // 正确的导入路径
import { createI18n } from 'vue-i18n'
import 'dayjs/locale/zh-cn'
import dayjs from 'dayjs'
import { createPinia } from 'pinia'
// 设置 Day.js 的全局本地化为中文
dayjs.locale('zh-cn')

const i18n = createI18n({
  locale: 'zh-cn', // 设置默认语言为中文
  messages: {
    'zh-cn': zhCn
  }
})


const app = createApp(App);
const pinia = createPinia()
app.component('XhTop', XhTop);
app.component('XhButtom', XhButtom);
app.use(router);
app.use(ElementPlus);
app.use(ElementPlus, { locale:zhCn }) // 配置 Element Plus 使用中文
app.use(i18n)
app.use(pinia)
app.mount('#app');


