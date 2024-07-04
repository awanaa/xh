<template>
  <div class="calendar-container">
    <el-calendar v-model="value" style="box-shadow: 0px 2px 4px 0px rgba(0,0,0,0.05);" :locale="zhCn" />
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import zhCn from 'element-plus/es/locale/lang/zh-cn'

const value = ref(new Date())
</script>

<style scoped lang="scss">
.calendar-container {
  width: 48%;
  height: 295px;
  // 确保日历组件适应父容器大小
  ::v-deep .el-calendar {
    width: 100%;
    height: 100%;
    .el-calendar-day{
        padding: 0;
        height: 30px;
        width: 70px;
        span{
             align-items: center;
             display: flex;
             justify-content: center;
        }
       
    }
    .el-calendar__body {
      height: auto; // 根据内容自动调整高度
      width: auto; // 根据内容自动调整宽度
      .el-calendar-table {
        width: 100%;
        // 根据需要调整日历表格样式
      }
    }
  }
}
</style>