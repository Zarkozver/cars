<template>
  <div>
    <button class="btn btn-primary" @click="message" v-if="data">Add to cart</button>
    <button
      v-else
      class="btn btn-primary"
      data-toggle="modal"
      data-target="#exampleModal"
    >Add to cart</button>
    <!-- Modal -->
    <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">You have to be logged in!</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form action="/login" method="POST">
            <div class="modal-body">
              <label for="email">Email</label>
              <input type="text" class="form-control" />
              <label for="password">Password</label>
              <input type="password" class="form-control" />
            </div>
            <div class="modal-footer">
              <button type="reset" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Login</button>
            </div>
          </form>
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
    message() {
      alert("SUCCESS");
    }
  },
  mounted() {
    axios.post("/check").then(response => {
      this.data = response.data;
    });
  }
};
</script>
