<template>
    <div class="text-image" :style=reverse>
        <el-text class="text">Hello world</el-text>
        <el-image class="image">Image</el-image>
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
.text {
    width: 50%;
}
.image {
    width: 50%;
}
</style>