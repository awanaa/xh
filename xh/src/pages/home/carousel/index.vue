<template>
    <div class="carousel">
        <el-carousel height="295px">
      <el-carousel-item v-for="item in 4" :key="item">
       <img src="../../../assets/微信图片_20231105023313.jpg">
      </el-carousel-item>
    </el-carousel>
    </div>
</template>

<script setup lang="ts">

</script>

<style scoped lang="scss">
.carousel{
    width: 50%;
    height: 295px;
}
img{
    width: 100%;
    height: 295px;
}

</style>