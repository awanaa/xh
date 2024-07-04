<template>
    <div>
        <el-button plain @click="dialogFormVisible = true" style=" width: 100px;
height: 40px;
background: #dbe2ef;
border: 1px solid #797979;
border-radius: 4px;"


>
    发布公告
  </el-button>
  <el-dialog v-model="dialogFormVisible" title="发布公告" width="500">
    <el-form :model="form">
    <el-form-item label="发布类型" :label-width="formLabelWidth">
        <el-select v-model="form.type" placeholder="请选择">
          <el-option label="通知" value="shanghai" />
          <el-option label="作业" value="beijing" />
        </el-select>
      </el-form-item>

      <el-form-item label="发布内容" :label-width="formLabelWidth">
        <el-input v-model="form.name" autocomplete="off" />
        <Card :namesArray="namesArray" />
      </el-form-item>
      
    </el-form>
    <template #footer>
      <div class="dialog-footer">
        <el-button @click="dialogFormVisible = false">关闭</el-button>
        <el-button type="primary" @click="addNameToArray">
          发布
        </el-button>
      </div>
    </template>
  </el-dialog>
    </div>
</template>

<script setup lang="ts">
import { reactive, ref } from 'vue'
import Card from '@/pages/yingyongguanli/inform/card/index.vue'

const dialogFormVisible = ref(false)
const formLabelWidth = '140px'

const form = reactive({
  name: '',
  region: '',
  date1: '',
  date2: '',
  delivery: false,
  type: [],
  resource: '',
  desc: '',
})

const namesArray = ref<string[]>([]);
function addNameToArray() {
  if (form.name.trim() !== '') {
    namesArray.value.push(form.name);
    form.name = ''; // 清空输入框
  }
}

// const gridData = [
//   {
//     date: '2016-05-02',
//     name: 'John Smith',
//     address: 'No.1518,  Jinshajiang Road, Putuo District',
//   },
//   {
//     date: '2016-05-04',
//     name: 'John Smith',
//     address: 'No.1518,  Jinshajiang Road, Putuo District',
//   },
//   {
//     date: '2016-05-01',
//     name: 'John Smith',
//     address: 'No.1518,  Jinshajiang Road, Putuo District',
//   },
//   {
//     date: '2016-05-03',
//     name: 'John Smith',
//     address: 'No.1518,  Jinshajiang Road, Putuo District',
//   },
// ]
</script>

<style scoped>

</style>