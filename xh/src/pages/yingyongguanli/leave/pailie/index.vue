<template>
    <div>
      
        <el-select-v2 v-model="value" :options="options" placeholder="年级" style="width: 141px" />
    </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const initials = ['七年级', '八年级', '九年级', '高一', '高二', '高三']

const value = ref()
const options = Array.from({ length: 6 }).map((_, idx) => ({
  value: `Option ${idx + 1}`,
  label: `${initials[idx % 10]}`,
}))
</script>

<style scoped></style>