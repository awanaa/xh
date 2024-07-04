<template>
  <div>
    <el-button plain @click="dialogFormVisible = true">
      Open a Form nested Dialog
    </el-button>
    <el-dialog v-model="dialogFormVisible" title="调查问卷" width="500" class="custom-dialog">
      <el-form :model="form">
        <transition name="fade">
          <div v-if="currentQuestionIndex < questions.length">
            <h1>{{ questions[currentQuestionIndex].text }}</h1>
            <el-radio-group v-model="answers[currentQuestionIndex]" class="ml-4">
              <el-radio
                v-for="(option, index) in questions[currentQuestionIndex].options"
                :key="index"
                :label="index"
                size="large"
              >
                {{ option }}
              </el-radio>
            </el-radio-group>
          </div>
        </transition>
      </el-form>

      <template #footer>
        <div class="dialog-footer">
          <el-button @click="dialogFormVisible = false">关闭</el-button>
          <el-button type="primary" @click="nextQuestion" v-if="currentQuestionIndex < questions.length - 1">
            下一题
          </el-button>
          <el-button type="primary" @click="submit" v-else>
            完成
          </el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive } from 'vue';

const dialogFormVisible = ref(false);
const currentQuestionIndex = ref(0);
const answers = ref([]);

const questions = ref([
  {
    text: '1. 当我学习新事物时，我更倾向于：',
    options: [
      'A. 通过阅读和听课来理解信息。',
      'B. 通过看图表、图像或演示来理解信息。',
      'C. 通过动手操作或实践来理解信息。',
      'D. 通过讨论和与他人合作来理解信息。'
    ]
  },
  {
    text: '2. 我在学习时最喜欢的方式是：',
    options: [
      ' A. 阅读教科书或文章。',
      'B. 观看教学视频或演示。',
      'C. 参与实验或实践活动。',
      '  D. 加入学习小组或与他人讨论。'
    ]
  },
  {
    text: '3. 当我遇到难题时，我通常：',
    options: [
      
      'C. 向他人寻求帮助或进行讨论。',
       
      '     D. 尝试自己动手解决问题。',
      'B. 观看相关的教学视频或图解。',
     
'A. 查找相关资料或阅读更多内容。'
      
    ]
  },
  {
    text: '4. 我在学习新技能时，通常：',
    options: [
      '  A. 阅读操作指南或教程。',
      '   B. 观看操作演示视频。',
      '   C. 直接尝试并从错误中学习。',
      ' D. 与他人一起学习和练习。'
    ]
  },
  {
    text: '5. 我在学习时最喜欢的环境是：',
    options: [
      '     A. 安静的图书馆或学习室。',
      '     B. 有视觉刺激的环境，如贴满图表的墙。',
      '   C. 实验室或工作坊，可以动手操作。',
      ' D. 咖啡馆或公共场所，可以与他人交流。'
    ]
  },
  
  // ...其他问题
]);

const form = reactive({
  name: '',
  region: '',
  date1: '',
  date2: '',
  delivery: false,
  type: [],
  resource: '',
  desc: '',
});

function nextQuestion() {
  currentQuestionIndex.value++;
}

function submit() {
  // 处理提交逻辑
  console.log(answers.value);
  dialogFormVisible.value = false;
  currentQuestionIndex.value = 0; // 重置问题索引
}

</script>

<style scoped lang="scss">
.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active in <2.1.8 */ {
  opacity: 0;
}
.custom-dialog .el-dialog {
  height: 300px; /* 设置固定高度 */
  overflow: auto; /* 如果内容超出高度，则显示滚动条 */
}
</style>