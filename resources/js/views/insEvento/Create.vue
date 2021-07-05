<template>
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h4>Crear evento</h4>
        </div>
        <div class="card-body">
          <form @submit.prevent="create">
            <div class="row">
              <div class="col-12 mb-2">
                <div class="form-group">
                  <label>Nombre</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="evento.nombre"
                  />
                </div>
              </div>
              <div class="col-12 mb-2">
                <div class="form-group">
                  <label>Descripcion</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="evento.descripcion"
                  />
                </div>
              </div>
              <div class="col-12 mb-2">
                <label class="col-sm-6">Inicio/Fin</label>
                <div class="form-group col-sm-3">
                  <input
                    type="date"
                    class="form-control"
                    v-model="evento.fechaInicio"
                  />
                </div>
                <div class="form-group col-sm-3">
                  <input
                    type="date"
                    class="form-control"
                    v-model="evento.fechaFin"
                  />
                </div>
              </div>
              <div class="col-12 mb-2">
                <div class="form-group">
                  <label>Ubicaci&oacute;n</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="evento.ubicacion"
                  />
                </div>
              </div>
              <div class="col-12 mb-2">
                <div class="form-group">
                  <label>Departamento</label>

                  <select
                    v-model="selectedCity"
                    name="city"
                    id="city"
                    class="form-control"
                    tabindex="12"
                  >
                    <option v-for="item in departamentos" :value="item.id">
                      {{ item.nombre }}
                    </option>
                  </select>
                </div>
              </div>

              <div class="col-12">
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "create-evento",
  name: "departamentos",
  data() {
    return {
      evento: {
        nombre: "",
        descripcion: "",
        fechaInicio: "",
        fechaFin: "",
        ubicacion: "",
        horasCurso: "",
        costo: "",
        participante: "",
        cantidaEvaluaciones: "",
        contrato: "",
        numeroOrdenCompra: "",
        compraBolsa: "",
        item: "",
      },
    };
  },
  catalogos() {
    return {
      departamentos: {
        departamentos: [],
      },
    };
  },
  mounted() {
    this.getCatalogos();
  },
  methods: {
    async create() {
      await this.axios
        .post("/api/evento/cargarCatalogo", this.evento)
        .then((response) => {
          this.$router.push({ name: "eventoList" });
        })
        .catch((error) => {
          console.log(error);
        });
    },
    async getCatalogos() {
      await this.axios
        .get("/api/evento/")
        .then((response) => {
          console.log(response.data);
          this.departamentos = response.data;
        })
        .catch((error) => {
          console.log(error);
          this.categories = [];
        });
    },
  },
};
</script>