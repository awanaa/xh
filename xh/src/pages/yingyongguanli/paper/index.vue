<template>
    <div class="container">
        <XhTop></XhTop>
        <!-- 展示路由组件 -->
        <div class="content">
            <!-- 展示路由组件区域 -->
            <router-view></router-view>

            <div class="shang">
                <div class="shang-left">
                    <div class="kemu">
                    <h3>科目:</h3>
                    <ul>
                        <li>语文</li>
                        <li>数学</li>
                        <li>英语</li>
                        <li>物理</li>
                        <li>化学</li>
                        <li>生物</li>
                        <li>政治</li>
                        <li>历史</li>
                        <li>地理</li>

                    </ul>
                   </div>
                   <div class="year">
                    <h3>年级:</h3>
                    <ul>
                        <li>2020</li>
                        <li>2021</li>
                        <li>2022</li>
                        <li>2023</li>
                        <li>2024</li>
                       

                    </ul>
                     </div> 
                   <div class="type">
                    <h3>类型:</h3>
                    <ul>
                        <li>知识点测试</li>
                        <li>周测</li>
                        <li>月考</li>
                        <li>专项</li>
                        <li>高考真题</li>
                       

                    </ul>
                  
              



                   </div>
                </div>
                <div class="shang-right">

                <button>ai帮你出题</button>
                <button>导入试卷</button>
                <button>保存试卷</button>
                </div>

            </div>

           
                <div class="xia">
                    <div class="xia-left">
      <ul class="left-text">
        <li v-for="(question, index) in questions" :key="index">
          <div class="text">
            <div class="dai">
                <input v-if="question.editing" type="text" v-model="question.newContent" style="width: 500px;">
                <div class="daime" v-else v-html="question.content"></div>
            <ul style="display: flex;">
              <li v-for="(option, optionIndex) in question.options" :key="optionIndex">
                <span v-if="!question.editing">{{ option }}</span>
                <input v-else type="text" v-model="question.newOptions[optionIndex]" style="width: 150px;">
              </li>
            </ul>
            </div>
            <button @click="toggleEdit(index)">{{ question.editing ? '保存' : '修改' }}</button>
          </div>
        </li>
      </ul>
      </div>

                    <div class="xia-right">
                    <h2>一,单选题</h2>
                   <ul>
                    <li> <button >1</button></li>
                    <li> <button >2</button></li>
                    <li> <button >3</button></li>
                    <li> <button >4</button></li>
                    <li> <button >5</button></li>
                    <li> <button >6</button></li>
                   </ul>
                    </div>
                </div>
                
            </div>
<div class="bottom">
    <XhButtom></XhButtom>
  </div>
        </div>
        
  
   
</template>

<script setup lang="ts">
import { ref } from 'vue';

interface Question {
  content: string;
  options: string[];
  newContent: string;
  newOptions: string[];
  editing: boolean;
}

const questions = ref<Question[]>([
  {
    content: '1.设函数&nbsp;𝑓(𝑥)=ln𝑥f(x)=lnx，则&nbsp;𝑓′(𝑥)f′(x)&nbsp;在&nbsp;𝑥=𝑒x=e&nbsp;处的值是多少？',
    options: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    newContent: '',
    newOptions: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    editing: false
  },
  {
    content: '1.设函数&nbsp;𝑓(𝑥)=ln𝑥f(x)=lnx，则&nbsp;𝑓′(𝑥)f′(x)&nbsp;在&nbsp;𝑥=𝑒x=e&nbsp;处的值是多少？',
    options: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    newContent: '',
    newOptions: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    editing: false
  },
  {
    content: '1.设函数&nbsp;𝑓(𝑥)=ln𝑥f(x)=lnx，则&nbsp;𝑓′(𝑥)f′(x)&nbsp;在&nbsp;𝑥=𝑒x=e&nbsp;处的值是多少？',
    options: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    newContent: '',
    newOptions: ['A. 00', 'B. 11', 'C. 1𝑒e1', 'D. 𝑒e'],
    editing: false
  },
]);

function toggleEdit(index: number) {
  questions.value[index].editing = !questions.value[index].editing;
  if (!questions.value[index].editing) {
    // 保存新题目和选项
    questions.value[index].content = questions.value[index].newContent;
    questions.value[index].options = questions.value[index].newOptions;
  }
}

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
    margin-top: 60px;
    width: 1443px;
height: 234px;
border: 1px solid #797979;
display: flex;
justify-content: space-between;
.shang-left{
    
    margin-top: 39px;
    .kemu{
        display: flex;
 h3{
      margin-left: 36px;
    }
    ul{
        display: flex;
        margin-left: 10px;
        li{
            width: 70px;
            opacity: 0.5;
font-size: 14px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: LEFT;
color: #333333;
    }
    }
    
}
.year{
    display: flex;
    margin-top: 20px;
 h3{
      margin-left: 36px;
    }
    ul{
        display: flex;
        margin-left: 10px;
        li{
            width: 70px;
            opacity: 0.5;
font-size: 14px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: LEFT;
color: #333333;
    }
    }
    
}


.type{
    display: flex;
    margin-top: 20px;
 h3{
      margin-left: 36px;
    }
    ul{
        display: flex;
        margin-left: 10px;
        li{
            width: 70px;
            opacity: 0.5;
font-size: 14px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: LEFT;
color: #333333;
    }
    }
}
}
.shang-right{
    margin-right: 62px;
    button{
        
        height: 40px;
        background: #add6e4;
        border: 1px solid #797979;
        border-radius: 4px;
        font-size: 16px;
        line-height: 40px; 
        margin-top: 173px;
        margin-right: 31px;

    }
}
}
.xia{
    display: flex;
   justify-content: space-between;
    margin-top: 80px;
    .xia-left{
        width: 1023px;
min-height: 634px;
border: 1px solid #797979;
    }
    .xia-left{
        .left-text{
           
            li{
                margin-top: 61px;
                .text{
                 display: flex;
                  justify-content: space-between;
                  button{
                   
                    width: 70px;
height: 30px;
border: 1px solid #797979;
border-radius: 4px;
margin-right: 30px;
                  }
                    ul{
                        margin-left: 20px;
                        li{
                            margin-top: 31px;
                            margin-left: 50px;
                        }
                    }
                }
            }
        }
        
    }
    .xia-right{
        width: 341px;
height: 634px;
border: 1px solid #797979;
h2{
    margin-top: 37px;
    margin-left: 25px;
    margin-bottom: 16px;
}
ul{
    display: flex;
    li{
       margin-left: 19px;
    }
}
    }
}
.daime{
    margin-left: 25px;
}
</style>