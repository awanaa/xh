<template>
    <div>
        
        <el-select-v2 v-model="value" :options="options" placeholder="全部" style="width: 83px" />
    </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const initials = ['作业', '通知','全部']

const value = ref()
const options = Array.from({ length: 3 }).map((_, idx) => ({
  value: `Option ${idx + 1}`,
  label: `${initials[idx % 10]}`,
}))
</script>

<style scoped></style>