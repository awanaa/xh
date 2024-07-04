<template>
    <div class="login">
    <div class="left">     
    <div class="container" >
        <h1>欢迎来到学生端登录</h1>
        <div class="aact">
            <span id="zhanhao" class="act">账号密码登录</span>
        <span  id="shouji" >手机号码登录</span>
        </div>
      
            <div id="zhanhaodenglu"  style="display: block;">

        <div class="options">
            <button class="option">学生端</button>
            <button class="option">教师端</button>
            <button class="option">管理员端</button>
        </div>
        <form action="#">
            <div class="input-group">
                <div class="avatars"><img src="@/assets/icon-user.png" alt="User Avatar" class="avatar"></div>
                <input type="text" id="username" placeholder="账号" class="input-field" data-v-302e3882 autocomplete="username" v-model="username">
                <p>{{ username }}</p>
            </div>
            <div class="input-group">
                <div class="avatars"> <img src="@/assets/密码.png" alt="Lock Icon" class="avatar"></div>
                <input type="password" id="password" placeholder="密码" class="input-field" autocomplete="current-password" v-model="password">
                
            </div>
            <div>
                <div style="display: flex; align-items: center;">
  <input type="text" id="code" placeholder="输入验证码" style="padding:15px 10px; margin-right:20px;" v-model="code">
  <img :src="'data:image/png;base64,' + imgCodeObj.img" alt="验证码" @click="getCode" style="margin-right:10px;">
</div>
<!-- <button @click.prevent="getCode" style="margin-top: 20px;">刷新验证码</button> -->
  </div>
            <div class="remember-forgot">
                <label><input type="checkbox"> 我已阅读<a href="#">《隐私政策》</a>和<a href="#">《使用协议》</a></label>
                
               
            </div>
            <button type="submit" class="btn">登录</button> 
            <a href="#" class="mima-forgot">*忘记密码？</a>
        </form>

             
        <div class="jiawo-da">
         <div class="jiawo">
            <img src="@/assets/微信图片_20240602154951.jpg">
         </div>
         <p>
            扫一扫关注我们
         </p>
         <p>   
        <i><svg t="1717314925264" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4411" width="20" height="20"><path d="M80.896 290.816q-11.264-8.192-13.824-12.8t-2.56-13.824l0-18.432q0-23.552 12.8-38.4t42.496-14.848l785.408 1.024q31.744 0 44.032 13.312t12.288 36.864l0 20.48q0 9.216-2.048 12.288t-14.336 14.336l-389.12 224.256q-9.216 5.12-23.552 11.776t-19.456 6.656q-11.264 0-41.984-19.456l-16.384-10.24q-17.408-9.216-45.056-24.576t-62.464-35.328-71.68-41.472q-86.016-49.152-194.56-111.616zM923.648 368.64q17.408-11.264 27.648-9.216t10.24 16.384l0 357.376q0 34.816-7.68 54.784t-21.504 30.208-32.256 12.8-39.936 2.56l-684.032 0q-34.816 0-56.32-9.216t-33.792-23.552-17.408-33.28-5.12-38.4l0-344.064q0-19.456 9.728-24.576t24.064 5.12q6.144 4.096 31.232 19.968t54.272 33.792 53.76 33.28 29.696 18.432q12.288 8.192 11.776 16.896t-5.632 17.92q-4.096 7.168-11.776 23.552t-16.384 33.792-16.384 33.28-11.776 23.04-2.56 12.288 5.12 7.68 9.216 1.536 10.752-7.168q3.072-3.072 14.848-16.896t26.112-29.696 27.136-30.208 16.896-18.432q5.12-5.12 15.36-11.264t19.456 0q6.144 3.072 20.48 12.288t30.72 19.456l32.768 22.528q16.384 10.24 28.672 17.408 12.288 8.192 25.088 10.24t24.064 0.512 20.992-4.608 14.848-6.144 21.504-12.8 35.328-21.504 35.84-22.016 23.04-14.336q10.24-6.144 18.432-4.096t16.384 10.24q3.072 3.072 14.848 16.896t25.6 30.72 25.6 32.256 16.896 21.504 11.264 6.656 10.752-3.072 6.144-9.728-2.56-13.312q-2.048-3.072-8.192-18.432l-13.312-32.768q-7.168-18.432-14.336-35.328t-11.264-24.064q-8.192-16.384-8.704-24.576t10.752-15.36q2.048-1.024 23.04-14.848t47.104-30.208 50.176-31.744 33.28-20.48z" p-id="4412"></path></svg></i>
        gaojiao@cnki.net
        </p>
       </div>
          </div>


    </div>
<div id="shoujihaodenglu" style="display: none;">
    <div class="container" >
        <!-- <h1>欢迎来到学生端登录</h1>
        <div class="aact">
        <span id="zhanhao" >账号密码登录</span>
        <span  id="shouji" class="actt">手机号码登录</span>
        </div> -->
       
        <div class="options top">
            <button class="option">学生端</button>
            <button class="option">教师端</button>
            <button class="option">管理员端</button>
        </div>
        <form action="#">
            <div class="input-group input-group-shouji">
                <div class="avatars"> <select id="countryCode">
    <option value="86">+ 86 </option>
    <option value="1">+1</option> <!-- 例如，美国的区号 -->
    <!-- 其他国家区号选项 -->
  </select></div>
                <input type="text" id="username1 phoneInput" placeholder="手机号" class="input-field">
            </div>
            <div class="input-group">
                <div class="input-group1">
    <!-- <label for="code">验证码:</label> -->
    <input type="text" id="code1" placeholder="输入验证码" >
  </div>
  
            </div>
           
            <div class="remember-forgot">
                <label><input type="checkbox"> 我已阅读<a href="#">《隐私政策》</a>和<a href="#">《使用协议》</a></label>
                
               
            </div>
            <button  class="btn" @click="getToken" >登录</button> 
            <a href="#" class="mima-forgot">*忘记密码？</a>
        </form>

       
        <div class="jiawo-da">
         <div class="jiawo">
            <img src="@/assets/微信图片_20240602154951.jpg">
         </div>
         <p>
            扫一扫关注我们
         </p>
         <p>   
        <i><svg t="1717314925264" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4411" width="20" height="20"><path d="M80.896 290.816q-11.264-8.192-13.824-12.8t-2.56-13.824l0-18.432q0-23.552 12.8-38.4t42.496-14.848l785.408 1.024q31.744 0 44.032 13.312t12.288 36.864l0 20.48q0 9.216-2.048 12.288t-14.336 14.336l-389.12 224.256q-9.216 5.12-23.552 11.776t-19.456 6.656q-11.264 0-41.984-19.456l-16.384-10.24q-17.408-9.216-45.056-24.576t-62.464-35.328-71.68-41.472q-86.016-49.152-194.56-111.616zM923.648 368.64q17.408-11.264 27.648-9.216t10.24 16.384l0 357.376q0 34.816-7.68 54.784t-21.504 30.208-32.256 12.8-39.936 2.56l-684.032 0q-34.816 0-56.32-9.216t-33.792-23.552-17.408-33.28-5.12-38.4l0-344.064q0-19.456 9.728-24.576t24.064 5.12q6.144 4.096 31.232 19.968t54.272 33.792 53.76 33.28 29.696 18.432q12.288 8.192 11.776 16.896t-5.632 17.92q-4.096 7.168-11.776 23.552t-16.384 33.792-16.384 33.28-11.776 23.04-2.56 12.288 5.12 7.68 9.216 1.536 10.752-7.168q3.072-3.072 14.848-16.896t26.112-29.696 27.136-30.208 16.896-18.432q5.12-5.12 15.36-11.264t19.456 0q6.144 3.072 20.48 12.288t30.72 19.456l32.768 22.528q16.384 10.24 28.672 17.408 12.288 8.192 25.088 10.24t24.064 0.512 20.992-4.608 14.848-6.144 21.504-12.8 35.328-21.504 35.84-22.016 23.04-14.336q10.24-6.144 18.432-4.096t16.384 10.24q3.072 3.072 14.848 16.896t25.6 30.72 25.6 32.256 16.896 21.504 11.264 6.656 10.752-3.072 6.144-9.728-2.56-13.312q-2.048-3.072-8.192-18.432l-13.312-32.768q-7.168-18.432-14.336-35.328t-11.264-24.064q-8.192-16.384-8.704-24.576t10.752-15.36q2.048-1.024 23.04-14.848t47.104-30.208 50.176-31.744 33.28-20.48z" p-id="4412"></path></svg></i>
        gaojiao@cnki.net
        </p>
       </div>

        </div>
    </div>
</div> 
    <div class="right">
        <img src="@/assets/微信图片_20231105023313.jpg" alt="">
    </div>
    </div>
</template>


<style scoped lang="scss">

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

.login{
    display: flex;
    justify-content: space-between;
    
}
.input-group-shouji .avatars::after {
    content: url('data:image/svg+xml;utf8,<svg t="1717596282294" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5495" width="16" height="16"><path d="M65.582671 288.791335l446.417329 446.41733 446.417329-446.41733z" p-id="5496"></path></svg>');
    margin-right: 4px;
}

.btnn {
    padding: 10px 20px;
    background-color: blue;
    color: white;
    border: none;
    cursor: pointer;
    margin-left: 50px;
  }
  .btnn:disabled {
    background-color: #ccc;
    cursor: not-allowed;
  }
  .input-group1 label {
    display: block;
    margin-bottom: 5px;
  }
  .input-group1 input {
    width: 300px;
    padding: 15px;
    box-sizing: border-box;
  }
.container {
    width: 500px;
    margin-left: 290px;
    // margin: auto;
    // padding: 20px;
  
    
}
.aact{
    position: relative;
    font-size: 23px;
    display: flex;
    justify-content: space-between;
   
   
}
.act::before {
    content: '';
    width: 88px;
    height: 5px;
    border-radius: 2px;
    position: absolute;
    bottom: -15px;
    left: 20px;
    
    background: var(--tableLinkColor, #7288fa); // 提供了默认值
    // bottom: 0;
}
.actt::before {
    content: '';
    width: 88px;
    height: 5px;
    border-radius: 2px;
    position: absolute;
    bottom: -15px;
    right: 20px;
    
    background: var(--tableLinkColor, #7288fa); // 提供了默认值
    // bottom: 0;
}


h1 {
    font-size: 48px;
    color: #333;
   
    margin-top: 97px;
    margin-bottom: 48px;
}

.input-group {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    margin-top: 34px;
    margin-bottom: 26px;
}

.avatar {
    width: 24px;
    height: 24px;
}

.avatars{
    padding: 8px; 
    background: #fff;
    border: 1px solid #ccc;
    height: 72px; 
    width: 72px;
    justify-content: center;
    display: flex;
    align-items: center; 
    box-sizing: border-box; 
}

.input-field {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    height: 72px; 
    box-sizing: border-box; 
}

.btn {
    width: 450px;
    height: 52px;
    background-color: #009DFF;
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px 20px;
    border-radius: 4px;
    
}

.remember-forgot {
    display: flex;
    justify-content: space-between;
    
    align-items: center;
    margin-bottom: 20px;
    font-size: 14px;
}

.options {
    display: flex;
    margin-top: 20px;
   justify-content: space-between;
    button {
        margin-left: -20px;
        margin-top: 28px;
        width: 150px; // 设置button宽度
        height: 62px; // 设置button高度
        background-color: transparent;
        border: 1px solid #ccc; // 添加实线边框
        cursor: pointer;
        padding: 5px 10px;
        border-radius: 4px;
        transition: background-color 0.3s;
        color: #666;
        align-items: center; // 垂直居中
         
    }

  

    button:hover {
        background-color: #eee;
    }
}

.mima-forgot {
    font-size: 14px;
    display: flex; 
    margin-top: 10px;
    text-decoration: none;
    color: #7288fa;
   
}
.mima-forgot:hover {
    text-decoration: underline;
}
.jiawo-da {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    margin-top: 20px;
    p {
        margin-top: 10px;
        font-size: 14px;
    }
    i {
        margin-top: 10px;
    }
}
.jiawo {
    display: flex;
    justify-content: center;
    img{
        width:144px;
        height: 144px;
    }
}

.right {
    width: 842px;
    

    img {
        
        width: 100%;
        height: 1080px;
       
    }
}

</style>
<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axios from 'axios';
import { useRouter } from 'vue-router';

const code = ref('');//储存用户输入
const username = ref('');
const password = ref('');
const router = useRouter();
const imgCodeObj = ref<{ img: string }>({ img: '' });

async function getToken() {
  try {
     console.log(username);
console.log(password);
console.log(code);
    const response = await axios.post<{ token: string }>('http://47.122.17.88:8080/api/v1/user/loginByUsername', {
      username: username.value,
      password: password.value,
      code: code.value,
      uuid: localStorage.getItem("uuid")

    });
getToken();
    const token = response.data.token;
    console.log(token); //打印了，但是控制台没有显示
  
    localStorage.setItem('Authorization', token);

    router.push({ name: 'home' });
  } catch (error) {
    console.error('登录失败:', error);
  }
}

async function getCode() {
  try {
    const response = await fetch('http://47.122.17.88:8080/api/v1/captchaImage');
    const data = await response.json();
    imgCodeObj.value.img = data.img;
    console.log(data.uuid);
    localStorage.setItem('uuid', data.uuid);

  } catch (error) {
    console.error('获取验证码失败:', error);
   
  }
}
  
onMounted(() => {
  const zhanhao = document.getElementById('zhanhao');
  const shouji = document.getElementById('shouji');
  const zhanhaodenglu = document.getElementById('zhanhaodenglu');
  const shoujihaodenglu = document.getElementById('shoujihaodenglu');

  if (zhanhao && shouji && zhanhaodenglu && shoujihaodenglu) {
    shouji.addEventListener('click', () => {
      console.log('切换到手机登录');
      shouji.className = 'actt';
      zhanhao.classList.remove('act');
      zhanhaodenglu.style.display = 'none';
      shoujihaodenglu.style.display = 'block';
    });

    zhanhao.addEventListener('click', () => {
      console.log('切换到账号密码登录');
      zhanhao.className = 'act';
      shouji.classList.remove('actt');
      zhanhaodenglu.style.display = 'block';
      shoujihaodenglu.style.display = 'none';
    });
  }

  // 组件加载时自动获取一次验证码
  getCode();

});


</script>


