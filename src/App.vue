<template>
  <div id="app">
    <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
    <BaseView />
  </div>
</template>

<script>
import BaseView from './components/BaseView.vue'
export default {
  name: 'App',
  components: {
    BaseView
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin: 0px;
}
/* html {
  touch-action: manipulation;
} */
</style>
