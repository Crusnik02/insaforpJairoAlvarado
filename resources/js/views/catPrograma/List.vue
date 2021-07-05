<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"programaCreate"}' class="btn btn-primary">Crear</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Programas registrados</h4>
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
                            <tbody v-if="programa.length > 0">
                                <tr v-for="(pro,key) in programa" :key="key">
                                    <td>{{ pro.id }}</td>
                                    <td>{{ pro.nombre }}</td>
                                    <td>{{ pro.estado == 1 ? 'ACTIVO' : 'INACTIVO' }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"programaEdit",params:{id:pro.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deletePrograma(pro.id)" class="btn btn-danger">Delete</button>
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
    name:"programa",
    data(){
        return {
            programa:[]
        }
    },
    mounted(){
        this.getProgramas()
    },
    methods:{
        async getProgramas(){
            await this.axios.get('/api/programa').then(response=>{
                this.programa = response.data
            }).catch(error=>{
                console.log(error)
                this.programa = []
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