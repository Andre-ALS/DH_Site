<template>
  <div class="wrapper">
    <side-bar>
      <template slot="links">
        <sidebar-link v-for="page in pages" :key="page.to" :to="page.to" :name="page.pageName" :icon="page.icon"/>
      </template>
      <mobile-menu>
        <drop-down class="nav-item"
                   title="Configurações"
                   title-classes="nav-link"
                   icon="ti-settings">
          <a class="dropdown-item">Sair</a>
        </drop-down>
        <li class="divider"></li>
      </mobile-menu>
    </side-bar>
    <div class="main-panel">
      <top-navbar :pageName="'teste'"></top-navbar>
      <dashboard-content @click.native="toggleSidebar">
      </dashboard-content>
      <content-footer></content-footer>
    </div>
  </div>
</template>
<style lang="scss">
</style>
<script>
import TopNavbar from "./TopNavbar.vue";
import ContentFooter from "./ContentFooter.vue";
import DashboardContent from "./Content.vue";
import MobileMenu from "./MobileMenu";
export default {
  components: {
    TopNavbar,
    ContentFooter,
    DashboardContent,
    MobileMenu
  },
  data() {
    return {
      pages: [
        {
          to: '/dashboard',
          pageName: 'Discussões!',
          icon: 'ti-blackboard'
        },
        {
          to: '/stats',
          pageName: 'Meus Dados',
          icon: 'ti-user'
        },
        {
          to: '/my-posts',
          pageName: 'Minhas Colaborações',
          icon: 'ti-thought'
        }
      ]
    };
  },
  methods: {
    toggleSidebar() {
      if (this.$sidebar.showSidebar) {
        this.$sidebar.displaySidebar(false);
      }
    }
  }
};
</script>
