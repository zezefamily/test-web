<template>
    <div class="root">
       <div class="content">
            <ul class="infinite-list" v-infinite-scroll="load" style="overflow:auto">
                <li v-for="i in count" class="infinite-list-item">{{ i }}</li>
            </ul>
       </div>
       <div class="inputView">
        <el-input class="offset"
          placeholder="请输入内容"
          v-model="input"
          clearable>
        </el-input>
        <el-button plain class="buttonStyle">发送</el-button>
       </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            name:"page1",
            input:"",
            count: 100
        }
    },
    methods: {
      load () {
        // this.count += 2
      }
    }

}
</script>

<style>
.content{
    width: 80%;
    height: 100%;
    margin: 30px auto;
    padding-bottom: 80px;
}
.inputView{
    position: fixed;
    width: 100%;
    height: 80px;
    bottom: 0px;
    background-color: #999;
    display: flex;
    flex-direction: row;
}
.offset{
  width: 80%;
  bottom:50px;
  padding-left: 20px;
  padding-right: 20px;
}
.buttonStyle{
    height: 40px;
}
</style>