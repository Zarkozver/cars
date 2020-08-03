<template>
  <div class="container">
    <h1>{{this.data.name}}</h1>
    <button class="btn btn-primary" @click="nesto">Alooe</button>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      data: ""
    };
  },
  props: ["id"],
  methods: {
    nesto() {
      axios.get("/check").then(response => {});
    }
  },
  mounted() {
    axios.post(`/car/find/${this.id}`).then(response => {
      this.data = response.data;
      console.log(this.data);
    });
  }
};
</script>
