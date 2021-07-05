<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"tipoCostoCreate"}' class="btn btn-primary">Crear</router-link>
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
                            <tbody v-if="tipoCosto.length > 0">
                                <tr v-for="(tipo,key) in tipoCosto" :key="key">
                                    <td>{{ tipo.id }}</td>
                                    <td>{{ tipo.nombre }}</td>
                                    <td>{{ tipo.estado == 1 ? 'ACTIVO' : 'INACTIVO' }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"tipoCostoEdit",params:{id:tipo.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteTipoCosto(tipo.id)" class="btn btn-danger">Delete</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="47" align="center">Sin tipos de costo registrados.</td>
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
    name:"tipoCosto",
    data(){
        return {
            tipoCosto:[]
        }
    },
    mounted(){
        this.getTipoCosto()
    },
    methods:{
        async getTipoCosto(){
            await this.axios.get('/api/tipoCosto').then(response=>{
                this.tipoCosto = response.data
            }).catch(error=>{
                console.log(error)
                this.tipoCosto = []
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