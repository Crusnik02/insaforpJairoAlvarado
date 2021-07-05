<template>
  <main>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <router-link to="/" class="navbar-brand" href="#"
          >Control de eventos de centro formativo xyz</router-link
        >
        <div class="collapse navbar-collapse">
          <div class="navbar-nav">
            <router-link
              exact-active-class="active"
              to="/"
              class="nav-item nav-link"
              >Home</router-link
            >
            <router-link
              exact-active-class="active"
              to="/InsEvento"
              class="nav-item nav-link"
              >Eventos</router-link
            >
            <router-link
              exact-active-class="active"
              to="/catFacilitador"
              class="nav-item nav-link"
              >Facilitadores</router-link
            >
            <router-link
              exact-active-class="active"
              to="/catModalidad"
              class="nav-item nav-link"
              >Modalidades</router-link
            >
            <router-link
              exact-active-class="active"
              to="/catPrograma"
              class="nav-item nav-link"
              >Programa</router-link
            >
            <router-link
              exact-active-class="active"
              to="/catTipoCosto"
              class="nav-item nav-link"
              >Tipo de costo</router-link
            >
          </div>
        </div>
      </div>
    </nav>
    <div class="container mt-5">
      <router-view></router-view>
    </div>
  </main>
</template>
 
<script>
export default {};
</script>