<template>
    <div class="container">
        <XhTop></XhTop>
        <!-- 展示路由组件 -->
        <div class="content">
            <!-- 展示路由组件区域 -->
            <router-view></router-view>
            <div class="shang">
                <div class="shang-left">
                    <div class="dian"></div>
                    <span>请假管理</span>
                </div>
                
            </div>
            <div class="xia">
                <div class="xia-top">
                    
                    <div class="top-left">
                        <div class="pailie">
                           <Pailie></Pailie>
                        </div>
                        <div class="pailie">
                            <Classpailie/>
                        </div>
                        <div class="pailie">
                            <Kaoqinpailie/>
                        </div>
                  </div>   
                  
                            <div class="top-right">
                <Search/>

                    </div>
                
                
            </div>
 
          
                <div class="xia-content">
                    <Biaodan></Biaodan>
                </div>

         </div>  
        </div>
        <div class="bottom">
    <XhButtom></XhButtom>
  </div>
    </div>
    
</template>

<script setup lang="ts">
import XhTop from '@/components/xh_top/index.vue'
import Search from '@/pages/yingyongguanli/leave/search/index.vue'
import Pailie from '@/pages/yingyongguanli/leave/pailie/index.vue'
import Classpailie from '@/pages/yingyongguanli/leave/classpailie/index.vue'
import Biaodan from '@/pages/yingyongguanli/leave/biaodan/index.vue'
import Kaoqinpailie from '@/pages/yingyongguanli/leave/kaoqinpailie/index.vue'


</script>

<style scoped lang="scss">
.container {
    display: flex;
    flex-direction: column;
    align-items: center;

    .content {
        margin-top: 80px;
        width: 1532px;
        min-height: 700px;
        /* background: red; */
    }
}
.shang{
    display: flex;
    justify-content:space-between;
    margin-top: 63px;
    .shang-left{
        display: flex;
        .dian{
            width: 12px;
height: 35px;
opacity: 0.61;
background: #3b46e1;
border: 1px solid #797979;
border-radius: 5px;
        }
        span{
            // width: 56px;
height: 20px;
font-size: 14px;
font-family: Microsoft YaHei, Microsoft YaHei-Normal;
font-weight: normal;
text-align: LEFT;
color: #333333;
margin-top: 10px;
margin-left: 10px;
        }
    }
}
.xia{
    width: 1532px;
height: 761px;
opacity: 1;


margin-top: 26px;
.xia-top{
    width: 1532px;
height: 91px;

display: flex;
justify-content: space-between;
.top-left{
    // margin-left: 29px;
    display: flex;
    justify-content: space-between;
    margin-top: 34px;
   .pailie{
        margin-right: 60px;
       
    }
}
.top-right{
    display: flex;
   margin-top: 34px;
    
span{
    margin-right:11px ;
}
}
}
}
</style>