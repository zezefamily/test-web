<template>
    <div class="base">
        <el-container>
            <el-header>
                <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
                    <el-menu-item index="home">Home</el-menu-item>
                    <el-menu-item index="chatGpt">ChatGPT</el-menu-item>
                    <el-menu-item index="news">News</el-menu-item>
                    <el-menu-item index="more">More</el-menu-item>
                </el-menu>
            </el-header>
            <el-main class="test">
                <router-view></router-view>
            </el-main>
            <el-footer v-show="isShow">Footer</el-footer>
        </el-container>
    </div>
</template>


<script>

export default {
    data(){
        return {
            activeIndex: "home",
            isShow: true
        }
    },
    created(){

    },
    mounted() {
        console.log("发起请求")
        // this.axios.post("/v1/chat/completions",{
        //         model: "gpt-3.5-turbo",
        //         messages: [{"role": "user", "content": "说：爱我"}],
        //         temperature: 0.7,
        //         stream: false
        //     }).then((resp) => {
        //         console.log("===> resp",resp)
        //     }).catch((error) => {
        //         console.log("error ==>",error)
        //     })
    },
    beforeDestroy(){

    },
    methods:{
        handleSelect(key, keyPath) {
            console.log("=====>"+key,keyPath);
            // this.router.push({name: key})
            console.log("+++++"+this.$router.push({name: key}))
            console.log("-----"+this.$router.name)
            if (key === "chatGpt") {
                this.isShow = false
            } else {
                this.isShow = true
            }
        }
    }
}
</script>

<style scope>
  .el-header, .el-footer {
    background-color: #ffffff;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  
  .el-aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }
  
  .base .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
    padding: 0px;
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
</style>