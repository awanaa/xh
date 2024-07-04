<template>
    <div class="card-container">
      <div class="card" v-for="(card, index) in cards" :key="index">
        <div class="shang">
          <span class="frist">
            {{ card.title }}
          </span>
          <span class="sec" :class="{'completed': card.status === '已完成'}">
            {{ card.status }}
          </span>
        </div>
        <div class="xia">
          <span class="xia-span">{{ card.description }}</span>
        </div>
        <button><a href="/plan">查看详情</a></button>
      </div>
    </div>
  </template>
  
  <script setup lang="ts">
  import { defineProps } from 'vue';
  
  defineProps({
    cards: {
      type: Array as () => Array<any>, // 使用泛型类型断言来指定cards是一个数组
      required: true,
    },
  });
  </script>

<style scoped lang="scss">
a {
  text-decoration: none;
  color: #333333;
}
.card-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr); /* 三列布局 */
  gap: 20px; /* 卡片之间的间隔 */
}
.card {
    margin-bottom: 122px;
    margin-right: 47px;
    width: 400px;
    height: 231px;
    border-radius: 12px;
    box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.10);
    
}

.shang {
    display: flex;
    align-items: center;
    
    width: 400px;
    height: 80px;
    border-bottom: 2px solid #3333331b;

    .frist {
       
        margin-left: 24px;
        // width: 316px;
        height: 24px;
        border-radius: 12px;
        font-size: 16px;
        font-family: PingFang SC, PingFang SC-Normal;
        font-weight: normal;
        text-align: LEFT;
        color: #333333;
        line-height: 24px;
        text-shadow: 0px 5px 5px 0px rgba(0, 0, 0, 0.10);
    }

    .sec {
        &.completed {
      background: none; /* 去掉粉色填充 */
      color: blue; /* 文字颜色变为蓝色 */
    }
        margin-left: 5px;
        width: 42px;
        height: 22px;
        background: #e99b9b;
        font-size: 14px;
        font-family: PingFang SC, PingFang SC-Normal;
        font-weight: normal;
        text-align: LEFT;
        color: #d90000;
        line-height: 22px;
        text-shadow: 0px 5px 5px 0px rgba(0, 0, 0, 0.10);
    }
}
.xia{
    display: flex;
    align-items: center;
    .xia-span{
        margin-left: 24px;
        margin-top: 16px;
        font-size: 14px;
font-family: PingFang SC, PingFang SC-Normal;
font-weight: normal;
line-height: 22px;
text-shadow: 0px 5px 5px 0px rgba(0,0,0,0.10); 
    }
}
button {
    margin-top: 33px;
    margin-left: 280px;
    width: 89px;
height: 36px;
border: 1px solid #797979;
border-radius: 4px;
font-size: 14px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: CENTER;
color: #333333;
line-height: 20px;
}
</style>