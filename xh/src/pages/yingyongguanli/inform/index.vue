<template>
    <div class="container">
      <XhTop></XhTop>
      <div class="content">
        <router-view></router-view>
        <div class="shang" style="display: flex;justify-content: space-between;">
          <div class="shang-left">
            <Dailog/>
          </div>
          <div class="shang-right" style="display: flex;">
            <Pailie/>
            <button>清除红点</button>
            <Search/>
          </div>
        </div>
        <div class="xia">
            <Card/>
        </div>
        <PublishModal ref="publishModal"/>
      </div>
      <div class="bottom">
    <XhButtom></XhButtom>
  </div>
    </div>
  </template>

<script setup lang="ts">
import Dailog from '@/pages/yingyongguanli/inform/dailog/index.vue'
import Search from '@/pages/yingyongguanli/inform/search/index.vue'
import Pailie from '@/pages/yingyongguanli/inform/pailie/index.vue'
import Card from '@/pages/yingyongguanli/inform/card/index.vue'


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
.shang{
    margin-top: 70px;
    .shang-left{
        margin-bottom: 5px;
        button{
            width: 100px;
height: 40px;
background: #646abc;
border: 1px solid #797979;
border-radius: 4px;
        }
    }
    .shang-right{
        button{
            margin-right: 26px;
            margin-left: 26px;
            width: 87px;
height: 30px;
border: 1px solid #797979;
border-radius: 4px;
        }
    }
}
</style>