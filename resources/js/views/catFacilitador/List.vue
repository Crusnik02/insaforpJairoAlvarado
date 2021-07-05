<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"facilitadorCreate"}' class="btn btn-primary">Crear</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Facilitadores registrados</h4>
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
                            <tbody v-if="facilitador.length > 0">
                                <tr v-for="(facilitador,key) in facilitador" :key="key">
                                    <td>{{ facilitador.id }}</td>
                                    <td>{{ facilitador.nombre }}</td>
                                    <td>{{ facilitador.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"facilitadorEdit",params:{id:facilitador.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deletefacilitador(facilitador.id)" class="btn btn-danger">Delete</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="47" align="center">Sin Facilitadores registrados.</td>
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
    name:"facilitador",
    data(){
        return {
            facilitador:[]
        }
    },
    mounted(){
        this.getfacilitador()
    },
    methods:{
        async getfacilitador(){
            await this.axios.get('/api/facilitador').then(response=>{
                this.facilitador = response.data
            }).catch(error=>{
                console.log(error)
                this.facilitador = []
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