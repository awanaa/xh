<template>
    <div class="container">
        <XhTop></XhTop>
        <!-- 展示路由组件 -->
        <div class="content">
            <!-- 展示路由组件区域 -->
            <router-view></router-view>
            <div class="shang">
                <div class="dian"></div>
                <span class="diantop">第五天</span>
            </div>
            <div class="xian"></div>

            <div class="zhong">
                <div class="left">
                    <div class="top">
                        <h2>今日份学习计划 <svg t="1717943527286" class="icon" viewBox="0 0 1024 1024" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" p-id="4432" width="20" height="20">
                                <path
                                    d="M901.3 550.9c0-177.1-119-326.9-281.3-373.7v-58c0-31-25.1-56.1-56.1-56.1H460.6c-31 0-56.1 25.1-56.1 56.1v58C242.3 224 123.3 373.8 123.3 550.9c0 144.2 78.9 270.2 195.7 337.4l-19.9 28.6c-8.8 12.7-5.7 30.2 7 39 4.9 3.4 10.5 5 16 5 8.9 0 17.6-4.2 23.1-12l25-36c44.1 17.3 91.9 27 142.1 27s98-9.6 142.1-27l25 36c5.5 7.8 14.2 12 23.1 12 5.5 0 11.1-1.6 16-5 12.7-8.8 15.9-26.3 7-39l-19.9-28.6C822.4 821.1 901.3 695 901.3 550.9zM460.6 119.2h103.3v46.2c-16.9-2.3-34.1-3.5-51.6-3.5s-34.7 1.3-51.6 3.5v-46.2z m51.7 764.6c-183.9 0-332.9-149.1-332.9-332.9 0-183.9 149-332.9 332.9-332.9s332.9 149 332.9 332.9c0 183.8-149.1 332.9-332.9 332.9z"
                                    fill="#4F4F4F" p-id="4433"></path>
                                <path
                                    d="M783 446.4c-3.7-9.6-14.6-14.4-24.2-10.7-9.6 3.7-14.4 14.5-10.7 24.2 11.2 29 16.9 59.6 16.9 91 0 139.4-113.4 252.8-252.8 252.8S259.4 690.3 259.4 550.9s113.4-252.8 252.8-252.8c10.3 0 18.7-8.4 18.7-18.7 0-10.3-8.4-18.7-18.7-18.7-160 0-290.2 130.2-290.2 290.2s130.2 290.2 290.2 290.2 290.2-130.2 290.2-290.2c0-36-6.5-71.2-19.4-104.5z"
                                    fill="#4F4F4F" p-id="4434"></path>
                                <path
                                    d="M584.7 308.6C634.5 323.5 678 353 710.5 394c3.7 4.7 9.1 7.1 14.7 7.1 4.1 0 8.2-1.3 11.6-4.1 8.1-6.4 9.4-18.2 3-26.3-37.3-47-87.2-80.9-144.4-98-9.9-3-20.3 2.7-23.3 12.6-2.9 10 2.7 20.4 12.6 23.3zM479.7 550.9c0 17.9 14.5 32.5 32.5 32.5s32.5-14.6 32.5-32.5c0-18-14.5-32.5-32.5-32.5-17.9 0-32.5 14.5-32.5 32.5zM531 470.2V357.1c0-10.3-8.4-18.7-18.7-18.7-10.3 0-18.7 8.4-18.7 18.7v113.1c0 10.3 8.4 18.7 18.7 18.7 10.3 0 18.7-8.4 18.7-18.7zM708 532.2H594.9c-10.3 0-18.7 8.4-18.7 18.7 0 10.3 8.4 18.7 18.7 18.7H708c10.3 0 18.7-8.4 18.7-18.7 0-10.4-8.4-18.7-18.7-18.7z"
                                    fill="#4F4F4F" p-id="4435"></path>
                            </svg></h2>
                        <span>2024-05-18</span>
                    </div>
                    <div class="plan-content">
                        <p class="plan-top">今日学习计划内容如下 <svg t="1717982443264" class="icon" viewBox="0 0 1024 1024"
                                version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4416" width="24" height="24">
                                <path
                                    d="M885.84 919.75H134.43c-40.52 0-73.49-32.97-73.49-73.49V273.39c0-40.52 32.97-73.49 73.49-73.49h751.41c40.52 0 73.49 32.97 73.49 73.49v572.88c0 40.51-32.96 73.48-73.49 73.48zM134.43 248.89c-13.51 0-24.5 10.99-24.5 24.5v572.88c0 13.51 10.99 24.5 24.5 24.5h751.41c13.51 0 24.5-10.99 24.5-24.5V273.39c0-13.51-10.99-24.5-24.5-24.5H134.43z"
                                    p-id="4417"></path>
                                <path d="M303.05 102.69h48.99v238.05h-48.99zM668.24 102.69h48.99v238.05h-48.99z"
                                    p-id="4418"></path>
                                <path
                                    d="M441.9 726.29L273.15 578.24l32.31-36.83L445.1 663.92l273.66-194.37 28.37 39.94z"
                                    p-id="4419"></path>
                            </svg>
                            <span> 4</span>
                        </p>
                        <div class="plan-xian"></div>
                        <ul class="plan-list">
                            <li>复习昨日知识点.分别进程控制块,PCB设计等</li>
                            <li>复习昨日知识点.分别进程控制块,PCB设计等</li>
                            <li>复习昨日知识点.分别进程控制块,PCB设计等</li>
                            <li>复习昨日知识点.分别进程控制块,PCB设计等</li>
                        </ul>

                    </div>

                    <div class="plan-content">
                        <p class="plan-top">复习昨日知识点.分别进程控制块,PCB设计等
                            <svg t="1717982881289" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5659" width="24" height="24"><path d="M896 256v469.333333H170.666667V256h725.333333zM213.333333 298.666667v384h640V298.666667H213.333333z m725.333334 469.333333v42.666667H128v-42.666667h810.666667z" fill="#444444" p-id="5660"></path></svg>
                            <span> 4</span>
                        </p>
                        <div class="plan-xian"></div>
                        <ul class="plan-list">
                            <li>进程控制块</li>
                            <ul>
                                <li>进程控制块概述</li>
                                <li>进程控制块设计</li>

                            </ul>
                            <li>PCB设计</li>
                            <ul>
                                <li>PCB设计概述</li>
                                <li>PCB设计流程</li>
                                <li>PCB设计工具</li>
                            </ul>

                        </ul>

                    </div>
                    <div class="plan-content">
                        <p class="plan-top">复习昨日知识点.分别进程控制块,PCB设计等
                            <svg t="1717982881289" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5659" width="24" height="24"><path d="M896 256v469.333333H170.666667V256h725.333333zM213.333333 298.666667v384h640V298.666667H213.333333z m725.333334 469.333333v42.666667H128v-42.666667h810.666667z" fill="#444444" p-id="5660"></path></svg>
                            <span> 4</span>
                        </p>
                        <div class="plan-xian"></div>
                        <ul class="plan-list">
                            <li>进程控制块</li>
                            <ul>
                                <li>进程控制块概述</li>
                                <li>进程控制块设计</li>

                            </ul>
                        </ul>

                    </div>
                </div>
                <div class="middle">
                    <h2>学习计划</h2>
                    <!-- <div class="middle-xian"></div> -->
                     <div class="middle-xian"></div>
                    <div class="xuexi1">
                        <span>0.1计算机系统概述</span>
                        <span>0.2计算机硬件组成</span>
                    </div>
                    <div class="xuexi2">
                        <span>1.1总线概述</span>
                        <span>1.2总线类型与结构</span>
                        <span>1.3总线通信协议</span>
                        <span>1.4总线仲裁</span>
                    </div>
                    <div class="xuexi3">
                        
                        <span>1.4总线仲裁</span>
                    </div>
                </div>
                <div class="right" style="margin-top: 55px;">
                    <el-timeline style="max-width: 600px">
    <el-timeline-item
      v-for="(activity, index) in activities"
      :key="index"
      :timestamp="activity.timestamp"
    >
      {{ activity.content }}
    </el-timeline-item>
  </el-timeline>
  </div>
                </div>
            </div>
            <div class="bottom">
    <XhButtom></XhButtom>
  </div>
        </div>
</template>

<script setup lang="ts">
const activities = [
  {
    content: '第一天',
    timestamp: '2018-04-15',
  },
  {
    content: '第二天',
    timestamp: '2018-04-13',
  },
  {
    content: '第三天',
    timestamp: '2018-04-11',
  },
  {
    content: '第四天',
    timestamp: '2018-04-11',
  },
  {
    content: '第五天',
    timestamp: '2018-04-11',
  },
  {
    content: '第六天',
    timestamp: '2018-04-11',
  },
]
</script>

<style scoped lang="scss">
::v-deep .el-timeline-item {
  height: 10em; // 设置高度
  line-height: 4em; // 设置行高
  
  
}
::v-deep  .el-timeline-item__content{
    line-height: 4em;
    margin-top: -4em;
}

.date-marker {
  position: absolute;
  left: 100%;
  transform: translateX(0);
  white-space: nowrap;
  font-weight: bold;
}
.container {
    display: flex;
    flex-direction: column;
    align-items: center;

    .content {
        margin-top: 80px;
        // width: 1442px;
        min-height: 700px;
    }
}

.shang {
    display: flex;

    .dian {
        width: 6px;
        height: 20px;
        background: #1047f7;
        margin-right: 15px;
        margin-top: 10px;
    }

    .diantop {
        margin-top: 10px;
    }
}

.xian {
    width: 1443px;
    height: 0px;
    border: 1px solid #797979;
    margin-top: 12px;
    margin-bottom: 42px;
}

.zhong {
    display: flex;
    justify-content: space-between;

    .left {
        width: 65%;
        height: 882px;
        border: 1px solid #797979;
        box-shadow: 0px 3px 6px 0px rgba(0, 0, 0, 0.15);
        overflow: auto;

        .top {
            width: 64%px;
            height: 60px;
            background: #f5f5f5;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;

            h2 {
                font-size: 20px;
                color: #333;
            }

        }
        
        .plan-content {
            .plan-top {

                height: 24px;
                vertical-align: middle;
                font-size: 18px;
                font-family: Microsoft YaHei, Microsoft YaHei-Bold;
                font-weight: bold;
                text-align: LEFT;
                color: #333333;
                line-height: 31px;
                margin-top: 50px;

                span {
                    font-size: 14px;
                    font-family: Microsoft YaHei, Microsoft YaHei-Normal;
                    font-weight: normal;
                    text-align: LEFT;
                    color: rgba(51, 51, 51, 0.79);
                }

            }

            .plan-xian {
                width: 100%;
                height: 0px;
                border: 1px solid #797979;
                margin-top: 5px;
                margin-bottom: 12px;
            }

            ul {
                list-style-type: none;

                li {
                    font-size: 16px;
                    color: #333;
                    margin-top: 10px;
                    margin-left: 20px;
                    width: 806px;
                    height: 50px;
                    line-height: 50px;
                    border-bottom: 1px solid #797979;
                    align-items: center;
                    cursor: pointer;

                }
            }
        }
    }
.middle-xian{
    width: 336px;
height: 0px;
text-align: center;
align-items: center;
margin-top: 10px;
margin-left: 14px;
border: 1px solid #797979;
}
    .middle {
        width: 25%;
        height: 896px;
        border: 1px solid #797979;
       h2{
        text-align: center;
        font-size: 22px;
font-family: PingFang SC, PingFang SC-Bold;
font-weight: normal;

color: #333333;
       }
        .xuexi1{
            width: 356px;
height: 275px;
opacity: 0.34;
background: #8fc164;
border: 1px solid #797979;
display: flex;
  flex-direction: column;
span{
    text-align: center;
   align-items: center;
padding: 40px 50px;
    border: 1px solid #797979;
    margin-bottom: 30px;
    margin-top: 15px;
}
        }
        .xuexi2{
            width: 356px;
height: 423px;
opacity: 0.42;
background: #b7dce9;
border: 1px solid #797979;
display: flex;
  flex-direction: column;
  margin-top: 10px;
span{
    text-align: center;
   align-items: center;
padding: 40px 50px;
    border: 1px solid #797979;
    margin-bottom: 30px;
    margin-top: 15px;
}
        }
        .xuexi3{
            width: 356px;
height: 111px;
opacity: 0.29;
background: #c8acac;
border: 1px solid #797979;
display: flex;
  flex-direction: column;
  margin-top: 10px;
span{
    text-align: center;
   align-items: center;
padding: 40px 50px;
    border: 1px solid #797979;
    margin-bottom: 30px;
    margin-top: 15px;
}
        }
    }
}

ul li::before {
    content: '';
    display: inline-block;
    width: 15px;

    height: 15px;

    border: 1px solid black;

    border-radius: 50%;
    margin-right: 10px;

    vertical-align: middle;

}

ul ul {
    margin-left: 40px;
}
.plan-top .icon {
  display: inline-block; 
  vertical-align: middle; 
}

</style>