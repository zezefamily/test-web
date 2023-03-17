<template>
  <div class="hello">
    <!-- <div>
      屏幕宽度：{{ screenWidth }}px
      <br>
      屏幕高度：{{ screenHeight }}px
    </div> -->
    <h>今天跟剑锋一起撸串</h>
    <div class="h5View" ref="rootView">
      <div class="Item" ref="testView1"></div>
      <div class="Item1" ref="testView2"></div>
    </div>
  </div>
</template>

<script>
import { stringify } from 'qs';

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data(){
    return {
      screenWidth: 0,
      screenHeight: 0
    }
  },
  created(){

  },
  mounted(){
    this.screenWidth = window.innerWidth;
    this.screenHeight = window.innerHeight;
    this.loadHitView(this.$refs.testView1,"testView1")
    this.loadHitView(this.$refs.testView2,"testView2")
  },
  methods: {
    loadHitView(el,key){
      const elRootRect = el.getBoundingClientRect();
      console.log("elRootRect:"+ elRootRect.x,elRootRect.y,elRootRect.width,elRootRect.height)
      if (window.webkit && window.webkit.messageHandlers){
        //归一化
        const postData = {
          name: key,
          x: elRootRect.x/this.screenWidth,
          y: elRootRect.y/this.screenHeight,
          width: elRootRect.width/this.screenWidth,
          height: elRootRect.height/this.screenHeight
        }
        console.log("data:"+stringify(postData));
        window.webkit.messageHandlers.TestHitView.postMessage(postData);
      }
    }
  },
}
</script>

<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.h5View {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.Item{
  width: 200px;
  height: 100px;
  margin-top: 10px;
  background: #42b9838a;
}
.Item1{
  width: 200px;
  height: 150px;
  margin-top: 10px;
  margin-left: 40px;
  background: #b9a342f6;
}

</style>
