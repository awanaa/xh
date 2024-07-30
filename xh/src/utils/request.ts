/*
 * @Author: caiyf
 * @Date: 2024-07-04 13:58:36
 * @LastEditors: Do not edit
 * @LastEditTime: 2024-07-05 10:45:46
 * @Description:
 * @FilePath: \xh\src\utils\request.ts
 */
import axios from 'axios'
import { ElMessage, ElMessageBox } from 'element-plus'
// import { useRouter } from 'vue-router'
import router from '../router/index'; 
// const router = useRouter()

const request = axios.create({
  baseURL: 'http://47.122.17.88:8080/api/v1',
  timeout: 5000, //请求超时时间
})
//请求拦截器
request.interceptors.request.use((config) => {
  const token = localStorage.getItem('token')
  // 这里不加多一个config.url != '/captchaImage'报没权限，后端要把限制去掉，该部分判断可以去掉（不合理）
  if (token && config.url != '/captchaImage') {
    config.headers.Authorization = `Bearer ${token}`

  }
  //请求前做的事情
  return config
})
request.interceptors.response.use(
  (response) => {
    const data = response.data
    if (data.code == 401) {
      ElMessageBox.confirm(
        '登录已失效，可以取消继续留在该页面，或者重新登录', 
        '登录失效',
        {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          center: true
        }
      ).then(() => {
        router.push({
          path: '/login'
        })
       console.log('111111')
    
      }).catch(() => {})
      console.log('333333')
  
      return Promise.reject('error')
    }
    if (data.code >= 500) {
      console.log('22222')
      
      ElMessage({
        message: data.msg,
        type: 'error'
      })
      return Promise.reject('error')
    }
    //请求后做的事情
    return response.data
  },
  (error) => {
    //请求失败
    return Promise.reject(new Error(error.message))
  }
)

export const postByUrl = (data: any) => {
  return request({
    method: 'post',
    ...data,
  })
}

export const getByUrl = (data: any) => {
  return request({
    method: 'get',
    ...data,
  })
}

export const putByUrl = (data: any) => {
  return request({
    method:'get',
    ...data,
  })

}
export default request
