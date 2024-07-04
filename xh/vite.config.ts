import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

import path from 'path'
export default defineConfig({
  plugins: [vue()],
  //src文件夹配置别名
    resolve: {
        alias: {
        '@': path.resolve(__dirname, 'src'),
        },
    },
})
