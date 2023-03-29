<template>
  <div class="bubble">
    <div class="bubble-title">来一个接龙</div>
    <div class="bubble-content">
      <div v-for="(item, index) in items" :key="index" class="bubble-item">
        <!-- <div class="bubble-item-title">{{index + 1}}. {{item.name}}</div> -->
        <div class="bubble-item-content">{{getContent(index)}}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [
        { name: '贝贝', content: '这是什么呢' },
        { name: '吴小妹', content: '电脑也可以参与' },
        { name: 'A玉泽A', content: '屁屁很无聊' },
        { name: '吴小妹', content: '我要写这个东西' },
        { name: '吴小妹', content: '只是写个样式而已' },
        { name: 'A玉泽A', content: '那不就是v-for吗' },
      ],
    };
  },
  methods: {
    getContent(index) {
      let content = '';
      for (let i = 0; i <= index; i++) {
        content += `${i + 1}. ${this.items[i].name} ${this.items[i].content}\n`;
      }
      return content;
    },
  },
};
</script>

<style scoped>
.bubble {
  width: 300px;
  border: 1px solid #ddd;
  border-radius: 10px;
  padding: 10px;
}

.bubble-title {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 10px;
}

.bubble-item {
  margin-bottom: 10px;
}

.bubble-item-title {
  font-weight: bold;
}

.bubble-item-content {
  white-space: pre-wrap;
}
</style>
