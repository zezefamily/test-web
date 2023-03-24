<template>
    <div class="text-image" :style=reverse>
        <el-text class="text-container">
            Hello world
        </el-text>
        <el-image class="image" src="https://via.placeholder.com/200x200?text=200x200">Image</el-image>
    </div>
</template>

<script>
    export default {
        props: {
            isReverse: {
                type: Boolean,
                default: false
            }
        },
        data() {
            return {
                reverse: ""
            }
        },
        created() {
            
        },
        mounted() {
            this.reverse = this.isReverse ? "flex-direction: row-reverse;": ""
        },
        methods: {
            
        },
    }
</script>

<style lang="css" scoped>

.text-image {
    display: flex;
    justify-content: space-around;
}
.text-container {
    /* text-align: center; */
    width: 50%;
    align-self: auto;
    background-color: bisque;
}
.image {
    background-color: azure;
    padding: 30px;
    width: 200px;
    height: 200px;
}
</style>