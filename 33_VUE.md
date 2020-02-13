# Vue
- `app/javascript/packs/hello_vue.js`
```
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
```
- `app/views/layouts/application.html.erb`
```
<%= javascript_pack_tag 'hello_vue', 'data-turbolinks-track': 'reload' %>
<%= stylesheet_pack_tag 'hello_vue', 'data-turbolinks-track': 'reload' %>
```
- `app/javascript/app.vue`
```
<template>
  <h1>{{ message }}</h1>
</template>

<script>
export default {
  data: function() {
    return {
      message: "I love Rails!"
    };
  }
};
</script>

<style scoped>
</style>

```
- `app/views/pages/index.html.erb`
```
<hello-rails></hello-rails>
```