<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Add Category</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="evento.nombre">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Descripcion</label>
                                    <input type="text" class="form-control" v-model="evento.descripcion">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Inicio/Fin</label>
                                    <input type="date" class="form-control" v-model="evento.fechaInicio">
                                    <input type="date" class="form-control" v-model="evento.fechaFin">
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
    name:"create-evento",
    data(){
        return {
            evento:{
                nombre:"",
                descripcion:"",
                fechaInicio: "",
                fechaFin: "",
                ubicacion: "",
                horasCurso:"",
                costo:"",
                participante:"",
                cantidaEvaluaciones:"",
                contrato:"",
                numeroOrdenCompra:"",
                compraBolsa:"",
                item:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/evento',this.evento).then(response=>{
                this.$router.push({name:"eventoList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>