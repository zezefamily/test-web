<template>
  <div class="container">
    <div class="title">ChatGPT聊天机器人</div>
    <div class="bubble-container">
      <div v-for="(item, index) in items" :key="index" :class="{'bubble': true, 'bubble-right': index % 2 === 0, 'bubble-left': index % 2 !== 0}">
        <div class="bubble-content">{{ item }}</div>
      </div>
    </div>
    
    <div class="bottom-div">
      <el-input class="inputfield"  v-model="newItem" placeholder="请输入内容" @keyup.enter="addItem" clearable></el-input>
      <el-button type="primary" @click="addItem">提交</el-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [],
      newItem: '',
      inputValue: ''
    }
  },
  methods: {
    addItem() {
      if (this.newItem) {
        this.items.push(this.newItem)
        this.newItem = ''
      }
    },
    handleClick() {
      // 处理提交按钮点击事件
    }
  }
}
</script>

<style>
.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
}

.title {
  font-size: 24px;
  text-align: center;
}

.bubble-container {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin-top: 20px;
  min-height:300px;
}

.bubble {
  display: inline-block;
  max-width: 80%;
  margin-bottom: 10px;
  padding: 10px;
  border-radius: 20px;
  font-size: 16px;
  line-height: 1.5;
  color: #fff;
}

.bubble-right {
  align-self: flex-end;
  background-color: #1890ff;
}

.bubble-left {
  align-self: flex-start;
  background-color: #00bcd4;
}

.bubble-content {
  word-wrap: break-word;
}

.input-container {
  display: flex;
  margin-top: 20px;
}

.input-container input {
  flex: 1;
  height: 40px;
  padding: 0 10px;
  font-size: 16px;
  border: 1px solid #d9d9d9;
  border-radius: 4px;
}

.input-container button {
  height: 40px;
  margin-left: 10px;
  padding: 0 20px;
  font-size: 16px;
  background-color: #1890ff;
  border: none;
  border-radius: 4px;
  color: #fff;
  cursor: pointer;
}

.input-container button:hover {
  background-color: #40a9ff;
}


.bottom-div {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #fff;
  box-shadow: 0px -1px 5px rgba(0, 0, 0, 0.2);
}
.inputfield {
  padding: 0 15px;
  margin-right: 20px;
}
</style>
