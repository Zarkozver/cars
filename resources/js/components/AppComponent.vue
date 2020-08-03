<template>
  <div class="container">
    <div class="card-columns">
      <div class="card" @click="goCar(car.id)" v-for="car in data" :key="car.id">
        <div class="card-body">
          <h5 class="card-title">{{car.name}}</h5>
          <h6 class="card-subtitle mb-2 text-muted">{{car.year}}</h6>
          <p class="card-text">{{car.price}} dollars</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      data: ""
    };
  },
  methods: {
    goCar(id) {
      this.$router.go("car");
    }
  },
  mounted() {
    axios.post("/all/cars").then(response => {
      this.data = response.data;
      console.log(this.data);
    });
  }
};
</script>
