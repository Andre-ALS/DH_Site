import Vue from "vue";
import App from "./App";
import router from "./router/index";

import Moment from 'vue-moment'
import PaperDashboard from "./plugins/paperDashboard";
import "vue-notifyjs/themes/default.css";

Vue.use(Moment);
Vue.use(PaperDashboard);

/* eslint-disable no-new */
new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
