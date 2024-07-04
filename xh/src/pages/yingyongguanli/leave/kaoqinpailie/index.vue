<template>
    <div>
      
        <el-select-v2 v-model="value" :options="options" placeholder="请假时间" style="width: 141px" />
    </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const initials = ['一星期内', '一月内', '一年内', '两年内', '三年内']

const value = ref()
const options = Array.from({ length: 5 }).map((_, idx) => ({
  value: `Option ${idx + 1}`,
  label: `${initials[idx % 10]}`,
}))
</script>

<style scoped></style>