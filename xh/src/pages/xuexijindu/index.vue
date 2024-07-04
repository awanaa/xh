<template>
    <div class="container">
      <XhTop></XhTop>
      <!-- 展示路由组件 -->
      <div class="content">
        <!-- 展示路由组件区域 -->
        <router-view></router-view>
  
        <div class="shang">
          <div class="left">
            <div class="dian"></div>
            <button v-for="(button, index) in buttons" :key="index" :class="{ act: index === activeButtonIndex }"
                    @click="filterCards(index)">
              {{ button }}
            </button>
          </div>
          <div class="right">
            <span>创建计划</span>
          </div>
        </div>
        <div class="zhong"></div>
        <div class="xia">
          <card :cards="filteredCards"></card>
        </div>
      </div>
      <div class="bottom">
    <XhButtom></XhButtom>
  </div>
    </div>
  </template>
  
  <script setup lang="ts">
  import card from '@/pages/xuexijindu/card/card.vue';
  import { ref, computed } from 'vue';
  
  const buttons = ['全部', '进行中', '已完成'];
  const activeButtonIndex = ref(0);
  const cards = ref([
    // ...您的卡片数据数组
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '进行中', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '已完成', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
    { title: '高三第一次模拟考生物逆袭15分', status: '已完成', description: '通过自己已经学过的知识点，借助这个课程和计划，我一个月后高考模拟考试中的生物学科要考到80分' },
  ]);
  const filter = ref('全部');
  
  const filteredCards = computed(() => {
    if (filter.value === '全部') {
      return cards.value;
    } else {
      return cards.value.filter(card => card.status === filter.value);
    }
  });
  
  const filterCards = (index: number) => {
    activeButtonIndex.value = index;
    filter.value = buttons[index];
  };
  </script>

<style scoped lang="scss">
.container {
    display: flex;
    flex-direction: column;
    align-items: center;

    .content {
        margin-top: 80px;
        width: 1442px;
        min-height: 700px;
    }
}
.shang {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
    margin-bottom: 9px;
}
.left{
    display: flex;
    justify-content: center;
    .dian{
        width: 6px;
height: 20px;
background: #1047f7;
margin-right: 15px;
margin-top: 10px;
    }
button {
    
    width: 100px;
    padding: 5px 10px;
    background-color: #fff;

}
}

.act {
    background-color: #797979 !important;
    color: #fff !important;
}
.right{
    span{
        width: 103px;
height: 30px;
background: rgba(255,0,0,0.00);
border: 1px solid #797979;
border-radius: 2px;
padding: 5px 10px;
    }
    span:hover{
        background: #607fe5;
        color: #fff;
    }
}
.zhong{
    width: 1443px;
height: 0px;
border: 1px solid #797979;
margin-bottom: 42px;
}
</style>