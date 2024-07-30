// import path from 'path';
import Layout from '@/pages/layout/index.vue';
import Login from '@/pages/layout/login/index.vue';
import {createRouter, createWebHistory} from  'vue-router';
const router = createRouter({
    history: createWebHistory(),
    routes: [
        {
        path: '/',
        component: () => import('@/pages/home/index.vue'),
       
        },
        {
          path: '/home',
          component: () => import('@/pages/home/index.vue'),
          name: 'home'
          },
        {
            path:'/xuexijindu',
            component: () => import('@/pages/xuexijindu/index.vue'),
            name:"xuexijindu"
        },
        {
          path:'/zhinengceping',
          component: () => import('@/pages/zhinengceping/index.vue'),
          name:"zhinengceping"
      },
      {
        path:'/plan',
        component: () => import('@/pages/plan/index.vue'),
        name:"plan"
    },
    {
      path:'/yingyongguanli',
      component: () => import('@/pages/yingyongguanli/index.vue'),
      name:"yingyongguanli"
  },
  {
    path:'/leave',
    component: () => import('@/pages/yingyongguanli/leave/index.vue'),
  
},
{
  path:'/paper',
  component: () => import('@/pages/yingyongguanli/paper/index.vue'),

},
{
  path:'/inform',
  component: () => import('@/pages/yingyongguanli/inform/index.vue'),

},
      {
        path: '/',
        component: Layout,
        name: "xx",
        children: []
      },
      {
        path: '/login',
        name: 'login',
        component: Login
      },
        
        {
            path:'/',
            redirect:'/home'
        }
    ],


    // 滚动行为:控制滚动条的位置
    scrollBehavior() {
        return { 
            top: 0 ,
            left: 0


        }
    }
});
export default router;


document.addEventListener('DOMContentLoaded', () => {
  const phoneInput = document.getElementById('phoneInput') as HTMLInputElement;
  const countryCode = document.getElementById('countryCode') as HTMLSelectElement;

  if (phoneInput && countryCode) {
    phoneInput.addEventListener('input', () => {
      phoneInput.value = phoneInput.value.replace(/[^\d]/g, '');
    });
  }
});