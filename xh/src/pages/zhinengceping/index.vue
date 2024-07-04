<template>
    <div class="container">
        <XhTop></XhTop>
        <!-- 展示路由组件 -->
        <div class="content">
            <!-- 展示路由组件区域 -->
            <router-view></router-view>
            <div class="shang">
                <div class="anniu">
                    <button v-for="(button, index) in ['全部', '已完成', '未完成']" :key="index" :class="{ act: index === 0 }"
                        @click="handleButtonClick(index)">
                        {{ button }}
                    </button>
                    <div class="card">
                        <Card />
                    </div>
                </div>
            </div>
            <div class="xia">
                <div class="left">
                    <h2>答题情况</h2>
                    <div class="left-content"></div>
                </div>
                <div class="right">
                    <h2>智能测评结果</h2>
                    <div class="right-content"></div>
                    <button>薄弱知识点组卷</button>
                    <button>薄弱知识点出题</button>
                </div>

            </div>
        </div>
        <div class="bottom">
    <XhButtom></XhButtom>
  </div>
    </div>
</template>
<script setup lang="ts">
// 引入卡片
import Card from './card/index.vue';
import { onMounted, ref } from 'vue';

const buttons = ref<HTMLButtonElement[]>([]);

// 组件挂载后获取所有按钮元素
onMounted(() => {
    buttons.value = Array.from(document.querySelectorAll('.anniu button'));
});

const handleButtonClick = (index: number) => {
    // 清除所有按钮的act类名
    buttons.value.forEach((button) => {
        button.classList.remove('act');
    });

    // 给当前点击的按钮添加act类名
    buttons.value[index].classList.add('act');
};

// 直接返回 handleButtonClick，这样它就可以在模板中使用了
handleButtonClick;
</script>

<style scoped lang="scss">
.container {
    display: flex;
    flex-direction: column;
    align-items: center;

    .content {
        margin-top: 80px;
        width: 1270px;
        min-height: 700px;

        /* background: red; */
        .shang {
            width: 1270px;
            height: 296px;
            border: 1px solid #797979;
            border-radius: 12px;
            margin-top: 40px;

            button {
                border-radius: 25px;
                width: 100px;
                padding: 5px 10px;
                background-color: #fff;


            }
        }
    }
}

.act {
    background-color: #797979 !important;
    color: #fff !important;
}

.xia {
    width: 1276px;
    height: 592px;
    border: 1px solid #797979;
    border-radius: 12px;
    box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
    margin-top: 20px;
    display: flex;
    justify-content: space-between;

    .left {
        h2 {
            text-align: center;
            margin-top: 29px;
            margin-bottom: 5px;
        }

        .left-content {
            width: 508px;
            height: 504px;
            border: 1px solid #797979;
            margin-left: 32px;

        }

    }
}

.right {
    h2 {
        text-align: center;
        margin-top: 29px;
        margin-bottom: 5px;
    }

    .right-content {
        width: 612px;
        height: 388px;
        border: 1px solid #797979;
        margin-right: 60px;

    }
    button {
        width: 287px;
height: 92px;
border: 1px solid #797979;
border-radius: 4px;
font-size: 24px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: CENTER;
color: #333333;
line-height: 20px;
margin-right: 39px;
margin-top: 24px;
    }
    button:hover{
        background-color: #ad2222;
        color: #fff;
    }

}
</style>