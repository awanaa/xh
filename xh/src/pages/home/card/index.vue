<template>
  <div class="content">
      <div v-for="(item, index) in cardData" :key="index">
          <el-card style="max-width: 252px;margin-top: 32px;box-shadow: 0px 1px 2px 0px rgba(0,0,0,0.15);">
              <img
                  src="https://www.szxuexiao.com/uploadimages/keben2022/rjgzshengwubx2_2019/0.jpg"
                  style="width: 100%; height: 151px; border-radius: 4px;"
              />
              <h2>{{ item.courseName }}</h2>
              <h2>2024-5-29</h2>
              <div>
                  <svg t="1717656555090" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4262" width="24" height="24">
                      <path d="M512.095172 63.72331c-180.042989 0-326.01848 145.976515-326.01848 326.019504 0 264.890399 326.01848 570.533876 326.01848 570.533876s326.019504-305.642453 326.019504-570.533876C838.114676 209.699825 692.139184 63.72331 512.095172 63.72331zM512.095172 552.752054c-90.061405 0-163.00924-72.987746-163.00924-163.00924 0-90.021494 72.947835-163.010264 163.00924-163.010264 90.022518 0 163.010264 72.988769 163.010264 163.010264C675.105436 479.764308 602.11769 552.752054 512.095172 552.752054z" fill="#272636" p-id="4263"></path>
                  </svg>
                  <span style="font-size: 12px;margin-right: 10px;">明德楼b201</span>
                 
                  <button>查看详情</button>
              </div>
          </el-card>
      </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import res from '@/utils/request'

const size = ref<'default' | 'large' | 'small'>('default')
const cardData = ref([])

async function getCardData() {
try {
  const response = await res.get('/user/student/getCourse')
  console.log(response.data);
  showCardData(response.data);
} catch (error) {
  console.error(error);
}
}

getCardData();

function showCardData(data: any[]) {
cardData.value = data;
}
</script>

<style scoped lang="scss">
::v-deep .el-card {
  padding: 0; /* 取消内边距 */
}
h2 {
    margin-top: 20px;
    margin-bottom: 10px;
}
button {
    background-color: #274ec3;
    border: none;
    color: #fff;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
   
    cursor: pointer;
    border-radius: 4px;
    width: 102px;
}
.content{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    border: 3px solid #a0cff6; 
    border-radius: 10px; 
    width: 300px; 
    height: 150px; 
    padding: 20px; 
    margin: 40px; 
    color: #333; 
    font-family: Arial, sans-serif; 
    background-color: #f9f9f9; 
    box-shadow: 0 4px 8px rgba(0,0,0,0.1); 
    
}
</style>