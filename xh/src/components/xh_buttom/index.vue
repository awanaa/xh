<template>
 <footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>公司</h4>
                <ul>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">我们的服务</a></li>
                    <li><a href="#">隐私政策</a></li>
                    <li><a href="#">联系我们</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>获取帮助</h4>
                <ul>
                    <li><a href="#">常见问题</a></li>
                    <li><a href="#">付款选项</a></li>
                    <li><a href="#">订单追踪</a></li>
                    <li><a href="#">回报政策</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>联系我们</h4>
                <ul>
                    <li><a href="#">电话: +1234567890</a></li>
                    <li><a href="#">邮箱: info@example.com</a></li>
                    <li><a href="#">地址: 中国某地</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>关注我们</h4>
                <div class="social-links">
                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg></a>
                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg></a>
                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.5" y2="6.5"></line></svg></a>
                      <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-linkedin"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path><rect x="2" y="9" width="4" height="12"></rect><circle cx="4" cy="4" r="2"></circle></svg></a>
                </div>
            </div>
            <div class="footer-col"></div>
            <div class="footer-col"></div>
        </div>
        <button @click="topFunction" id="backToTop" title="返回顶部">^</button>
    </div>
</footer>
                    </template>

<script setup lang="ts">
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    const backToTopElement = document.getElementById("backToTop");
    if (backToTopElement) {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            backToTopElement.style.display = "block";
        } else {
            backToTopElement.style.display = "none";
        }
    }
}

// 点击按钮，返回顶部
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>

<style scoped lang="scss">
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.footer {
    background-color: #fff;
    padding: 40px 0;
    color: #333;
    width: 1200px;
}

.container {
    width: 100%;
       margin: auto;
}

.row {
    display: flex;
    flex-wrap: wrap;
}

.footer-col {
    width: 25%;
    padding: 0 15px;
}

.footer-col h4 {
    font-size: 18px;
    padding-bottom: 25px;
}

.footer-col ul {
    list-style: none;
}

.footer-col ul li {
    padding: 8px 0;
}

.footer-col ul li a {
    color: #333;
    text-decoration: none;
}

.social-links {
    display: flex;
}

.social-links a {
    color: #333;
    padding: 5px;
    margin-right: 5px;
    font-size: 24px;
}

#backToTop {
    position: fixed;
    bottom: 20px;
    right: 30px;
    z-index: 99;
    border: none;
    outline: none;
    background-color: #333;
    color: white;
    cursor: pointer;
    padding: 15px;
    border-radius: 10px;
    font-size: 18px;
}

#backToTop:hover {
    background-color: #555;
}
</style>