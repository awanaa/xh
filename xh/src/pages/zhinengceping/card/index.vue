<template>
   <div class="card">
          <el-col :span="6" v-for="(item, index) in cardItems" :key="index">
          <el-card style="max-width: 140px;height: 222px;padding: 0;">
            <img :src="item.src" style="width: 100%;height: 75%;" />
            <h2>{{ item.title }}</h2>
          </el-card>
        </el-col>
     
    </div>
  </template>

<script setup lang="ts">
import { reactive } from 'vue';

const cardItems = reactive([
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
  { title: '2024年普通高等学校招生新高考数学模拟考试（一）', src: 'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png' },
]);


cardItems;
</script>

<style scoped lang="scss">
.card{
  display: flex;
  justify-content: space-between;
  padding: 0 20px;
  margin-top: 20px;
  margin-bottom: 23px;
}
.el-col-6{
  flex: auto;
}

.el-card__body:hover{
  box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
}
// 没有实现该功能,找不到原因
</style>