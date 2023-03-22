<template>
    <div class="root">
        <div class="">
            <el-carousel height="500px">
                <el-carousel-item v-for="item in 4" :key="item">
                    <el-image :src="src"></el-image>
                </el-carousel-item>
            </el-carousel>
        </div>
        {{ name }}
        
    </div>
</template>

<script>
export default {
    data(){
        return {
            name:"page0",
            src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg'
        }
    },

}
</script>

<style scope="">
.el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

.el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
}
  
.el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
}
</style>