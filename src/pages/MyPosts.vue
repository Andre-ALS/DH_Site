<template>
  <div>
    <div class="row" v-for="post in posts" :key="post.id">
      <div class="col-12 post">
        <card>
          <h4 class="title-post">{{ post.title }}</h4>
          <p class="card-text posted-at">Postado em {{ $moment(post.dtCreated).format('DD/MM/YY') }}</p>
          <div class="row">
            <img :src="post.imgSrc" class="post-img-size"/>
          </div>
          <div class="row messages-option">
            <button class="messages-option">
              <i class="ti-comments"></i> Mensagens
            </button>
          </div>
        </card>
      </div>
    </div>
  </div>
</template>
<style lang="scss">
  @import "./_Dashboard.scss";
</style>
<script>
import { StatsCard, ChartCard } from "@/components/index";
import Chartist from 'chartist';
export default {
  components: {
    StatsCard,
    ChartCard
  },
  /**
   * Chart data used to render stats, charts. Should be replaced with server data
   */
  data() {
    return {
      statsCards: [
        // {
        //   type: "warning",
        //   icon: "ti-server",
        //   title: "Capacity",
        //   value: "105GB",
        //   footerText: "Updated now",
        //   footerIcon: "ti-reload"
        // },
      ],
      posts: [
        {
          title: 'Teste Post',
          imgSrc: 'https://vidanimal.com.br/wp-content/uploads/raca-cachorro-latido-forte.jpg',
          dtCreated: '2019-06-18 23:59:00'
        },
        {
          title: 'Teste Post',
          imgSrc: 'https://vidanimal.com.br/wp-content/uploads/raca-cachorro-latido-forte.jpg',
          dtCreated: '2019-06-18 23:59:00'
        },
        {
          title: 'Teste Post',
          imgSrc: 'https://vidanimal.com.br/wp-content/uploads/raca-cachorro-latido-forte.jpg',
          dtCreated: '2019-06-18 23:59:00'
        },
        {
          title: 'Teste Post',
          imgSrc: 'https://vidanimal.com.br/wp-content/uploads/raca-cachorro-latido-forte.jpg',
          dtCreated: '2019-06-18 23:59:00'
        },
        {
          title: 'Teste Post',
          imgSrc: 'https://vidanimal.com.br/wp-content/uploads/raca-cachorro-latido-forte.jpg',
          dtCreated: '2019-06-18 23:59:00'
        }
      ]
    };
  }
};
</script>
<style>
</style>
