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
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="modalidad.length > 0">
                                <tr v-for="(mod,key) in modalidad" :key="key">
                                    <td>{{ mod.id }}</td>
                                    <td>{{ mod.nombre }}</td>
                                    <td>{{ mod.estado == 1 ? 'ACTIVO' : 'INACTIVO' }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"modaliadaEdit",params:{id:mod.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteModalidad(mod.id)" class="btn btn-danger">Delete</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="47" align="center">Sin modalidades registrados.</td>
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
    name:"modalidad",
    data(){
        return {
            modalidad:[]
        }
    },
    mounted(){
        this.getModalidad()
    },
    methods:{
        async getModalidad(){
            await this.axios.get('/api/modalidad').then(response=>{
                this.modalidad = response.data
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