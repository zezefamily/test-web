<template>
    <div class="grid-view">
        <!-- <div v-for="index in 6" :key="index"> {{index}}</div> -->
        <div class="grid-container">
            <div class="grid-item item1">1</div>
            <div class="grid-item item2">2</div>
            <div class="grid-item item3">3</div>  
            <div class="grid-item item4">4</div>
            <div class="grid-item item5">5</div>
        </div>
    </div>
</template>

<script>
    export default {
        name:"GridView",
        data() {
            return {
                
            }
        },
        created() {
            
        },
        mounted() {
            
        },
        methods: {
            
        }
    }
</script>

<style lang="css" scoped>
.grid-view {
    display: grid;
    /* grid-template-columns: auto auto auto; */
    /* grid-template-rows: 100px 100px 100px; */
    grid-gap: 10px;
    /* background-color: #2196F3; */
    padding: 10px;
}

.grid-view > div {
  /* background-color: rgba(255, 255, 255, 0.8); */
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
}

.grid-container {
  display: grid;
  grid-gap: 10px;
  /* background-color: #2196F3; */
  padding: 10px;
}

.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  text-align: center;
  padding: 20px;
  font-size: 30px;
}

.item1 {
  grid-column: 1 / span 2;
  grid-row: 1;
}

.item2 {
  grid-column: 3;
  grid-row: 1 / span 2;
}

.item5 {
  grid-column: 1 / span 3;
  grid-row: 3;
}

</style>