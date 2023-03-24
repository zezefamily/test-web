<template>
    <div class="root">
        <div class="">
            <el-carousel :interval="3000" height="500px">
                <el-carousel-item v-for="(item, index) in items" :key=index>
                    <img :src="item.image" alt="">
                    <h3>{{ item.title }}</h3>
                    <p>{{ item.description }}</p>
                </el-carousel-item>
            </el-carousel>
        </div>
        <div class="custom-grid">
            <div class="item item-test">
                1
            </div>
            <grid-view class="item"></grid-view>
            <div class="item item-test">
                2
            </div>
            <text-image class="item"></text-image>
            <text-image class="item" :isReverse="true"></text-image>
        </div>
    </div>
</template>

<script>
import GridView from '../paageComs/GridView.vue'
import TextImage from '../paageComs/TextImgView.vue'
export default {
    name:"page0",
    components: {
        GridView,
        TextImage
    },
    data(){
        return {
            name:"page0",
            src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
            items: [
                {
                title: 'Item 1',
                description: 'Description for item 1',
                image: 'https://via.placeholder.com/1200x500?text=Item+1'
                },
                {
                title: 'Item 2',
                description: 'Description for item 2',
                image: 'https://via.placeholder.com/1200x500?text=Item+2'
                },
                {
                title: 'Item 3',
                description: 'Description for item 3',
                image: 'https://via.placeholder.com/1200x500?text=Item+3'
                }
            ]
        }
    }
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

.custom-grid {
    margin-top: 20px;
    /* min-height: 800px; */
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    /* align-items: flex-start; */
}

.item {
    margin: 0 60px;   
}
.item .item-test{
    height: 30px;
    background-color: #909399;
}

</style>