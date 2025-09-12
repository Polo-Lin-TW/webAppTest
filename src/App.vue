<template>
  <div class="container">
    <h1 class="hero-title">Vue 3 範例網頁</h1>
    <p class="hero-subtitle">使用 Vue 3 + Vite + Nginx + Docker 建構的現代化網頁應用程式</p>
    
    <div class="counter-section">
      <h3>互動計數器</h3>
      <div class="counter">{{ count }}</div>
      <button class="btn" @click="increment">增加 (+)</button>
      <button class="btn btn-secondary" @click="decrement">減少 (-)</button>
      <button class="btn btn-secondary" @click="reset">重置</button>
    </div>

    <div class="features">
      <FeatureCard 
        icon="⚡"
        title="Vue 3 Composition API"
        description="使用最新的 Vue 3 Composition API 進行狀態管理和邏輯組織"
      />
      <FeatureCard 
        icon="🚀"
        title="Vite 建構工具"
        description="超快的開發服務器和優化的生產構建"
      />
      <FeatureCard 
        icon="🐳"
        title="Docker 容器化"
        description="使用 Multi-stage Docker 構建進行高效部署"
      />
      <FeatureCard 
        icon="🔧"
        title="Nginx 反向代理"
        description="使用 Nginx 作為反向代理服務器處理靜態資源"
      />
    </div>

    <div style="margin-top: 3rem;">
      <p><strong>當前時間:</strong> {{ currentTime }}</p>
      <p><strong>頁面載入時間:</strong> {{ loadTime }}</p>
    </div>
  </div>
</template>

<script>
import { ref, onMounted } from 'vue'
import FeatureCard from './components/FeatureCard.vue'

export default {
  name: 'App',
  components: {
    FeatureCard
  },
  setup() {
    const count = ref(0)
    const currentTime = ref('')
    const loadTime = ref('')

    const increment = () => {
      count.value++
    }

    const decrement = () => {
      count.value--
    }

    const reset = () => {
      count.value = 0
    }

    const updateTime = () => {
      currentTime.value = new Date().toLocaleString('zh-TW')
    }

    onMounted(() => {
      loadTime.value = new Date().toLocaleString('zh-TW')
      updateTime()
      // 每秒更新時間
      setInterval(updateTime, 1000)
    })

    return {
      count,
      currentTime,
      loadTime,
      increment,
      decrement,
      reset
    }
  }
}
</script>