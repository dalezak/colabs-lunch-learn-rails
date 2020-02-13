import Vue from 'vue/dist/vue.esm';
import App from '../app.vue';

Vue.component('hello-rails', App);

document.addEventListener('turbolinks:load', () => {
  const element = document.getElementById('app');
  if (element != null) {
    const app = new Vue({}).$mount(element);
    console.log("Loaded Vue", app);
  }
});