<template>
   
    <div class="container">
    <XhTop></XhTop>
  <!-- 展示路由组件 -->
  <div class="content">
    <!-- 展示路由组件区域 -->
    <router-view></router-view>
    <div class="shang">
    <!-- 轮播图  -->
    <Carousel/>
    <!-- 日历 -->
    <Calendar/>
    
    </div>
    <div class="zhong">
      <!-- 卡片 -->
    <Card/>
    </div>

    <div class="question">
      <!-- 调查问卷 -->
    <Question/>
    </div>
  </div>
  <div class="bottom">
    <XhButtom></XhButtom>
  </div>
  </div>
    
</template>

<script setup lang="ts">
// 引入首页轮播图组件
import Carousel from './carousel/index.vue';
// 引入日历
import Calendar from './calendar/index.vue';
// 引入卡片
import Card from './card/index.vue';
//引入调查问卷
import Question from './question/index.vue';
</script>

<style scoped>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  .content{
    margin-top: 80px;
    width: 1200px;
    min-height: 700px;
    /* background: red; */
  }
}
.shang{
    display: flex;
    justify-content: space-between;
}
</style>