<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"eventoCreate"}' class="btn btn-primary">Crear</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Eventos registrados</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>nombre</th>
                                    <th>descripcion</th>
                                    <th>Fecha de inicio</th>
                                    <th>Fecha de fin</th>
                                    <th>Ubicaci&oacute;n</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="eventos.length > 0">
                                <tr v-for="(evento,key) in eventos" :key="key">
                                    <td>{{ evento.id }}</td>
                                    <td>{{ evento.nombre }}</td>
                                    <td>{{ evento.descripcion }}</td>
                                    <td>{{ evento.fecha_inicio }}</td>
                                    <td>{{ evento.fecha_fin }}</td>
                                    <td>{{ evento.ubicacion }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"eventoEdit",params:{id:evento.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteEvento(evento.id)" class="btn btn-danger">Delete</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="47" align="center">Sin eventos registrados.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name:"eventos",
    data(){
        return {
            eventos:[]
        }
    },
    mounted(){
        this.getEventos()
    },
    methods:{
        async getEventos(){
            await this.axios.get('/api/evento').then(response=>{
                this.eventos = response.data
            }).catch(error=>{
                console.log(error)
                this.categories = []
            })
        },
        deleteCategory(id){
            if(confirm("Are you sure to delete this category ?")){
                this.axios.delete(`/api/category/${id}`).then(response=>{
                    this.getCategories()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>