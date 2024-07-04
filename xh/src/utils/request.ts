import axios from 'axios';

const request = axios.create({
    baseURL:'http://47.122.17.88:8080/api/v1',
    timeout:5000//请求超时时间
});
//请求拦截器
request.interceptors.request.use((config)=>{

        //请求前做的事情
        return config;
    
   
});
request.interceptors.response.use((response)=>{
    //请求后做的事情
    return response.data;
},(error)=>{
    //请求失败
    return Promise.reject(new Error(error.message));
})