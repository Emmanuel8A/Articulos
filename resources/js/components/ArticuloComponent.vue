<template>
    <div>
        <!-- Inicio modal -->
        <!-- Button to Open the Modal -->
        <button @click="
        modificar = false;
        arbirModal();" type="button" class="btn btn-primary my-4">
            Nuevo artículo
        </button>

        <!-- The Modal -->
        <div class="modal" :class="{ mostrar: modal }">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">{{ tituloModal }}</h4>
                        <button @click="cerrarModal()" type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                    </div>

                    <!-- Modal body -->
                    <!-- Formulario crear/editar -->
                    <!-- input nombre del articulo -->
                    <div class="modal-body">
                        <div class="my-4">
                            <label for="nombre">Nombre del artículo:</label>
                            <input type="text" v-model="articulo.nombre" class="form-control" id="nombre"
                                   placeholder="Nombre del artículo" />
                            <!-- Mensaje de validacion -->

                            <span class="text-danger" v-if="errores.nombre">{{ errores.nombre[0] }}</span>
                        </div>

                        <!-- Input descripcion del articulo -->
                        <div class="my-4">
                            <label for="descripcion">Descripción del artículo:</label>
                            <input type="text" v-model="articulo.descripcion" class="form-control" id="descripcion"
                                   placeholder="Descripción del artículo" />
                            <!-- Mensaje de validacion -->
                            <span class="text-danger" v-if="errores.descripcion">{{ errores.descripcion[0] }}</span>

                        </div>

                        <!-- input stock del articulo -->
                        <div class="my-4">
                            <label for="nombre">Stock del artículo:</label>
                            <input type="number" v-model="articulo.stock" class="form-control" id="nombre"
                                   placeholder="Stock del artículo" />
                            <!-- Mensaje de validacion -->
                            <span class="text-danger" v-if="errores.stock">{{ errores.stock[0] }}</span>

                        </div>
                    </div>
                    <!-- fin formulario -->

                    <!-- Modal footer -->
                    <!-- Botones guardar/editar -->
                    <div class="modal-footer">
                        <button @click="cerrarModal()" type="button" class="btn btn-secondary" data-dismiss="modal">
                            Cancelar
                        </button>
                        <button type="button" @click="guardar()" class="btn btn-success" data-dismiss="modal">
                            Guardar
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- fin modal -->
        <table class="table table-striped">
            <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Descripción</th>
                <th scope="col">Stock</th>
                <th scope="col" colspan="2" class="text-center">Acciones</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="art in articulos.data" :key="art.id">
                <th scope="row">{{ art.id }}</th>
                <td>{{ art.nombre }}</td>
                <td>{{ art.descripcion }}</td>
                <td>{{ art.stock }}</td>
                <td>
                    <button @click="
                modificar = true;
                arbirModal(art);
              " class="btn btn-warning">
                        Editar
                    </button>
                </td>
                <td>
                    <button class="btn btn-danger" @click="eliminar(art.id)">
                        Eliminar
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- Paginacion -->
        <div class="row">
            <!-- Mostrar texto total de articulos -->
            <div class="col-4 md-4 text-right text-primary">
                {{ articulos.from }} - {{ articulos.to }} /total: {{ articulos.total }}
            </div>
            <div class="col-2 md-2">
                <select class="custom-select custom-select-sm text-center" v-model="pagination.per_page"
                        @change="listar();">
                    <option value="3">3</option>
                    <option value="5">5</option>
                    <option value="8">8</option>
                </select>
            </div>
            <div class="col-6 md-6">
                <ul class="pagination">
                    <li class="page-item" :class="{disabled:pagination.page==1}"><a class="page-link"
                                                                                    @click="pagination.page=1; listar();">&laquo;</a></li>
                    <li class="page-item" :class="{disabled:pagination.page==1}"><a class="page-link"
                                                                                    @click="pagination.page--; listar();">&lt;</a> </li>
                    <li class="page-item" v-for="n in paginas" ::key="n" :class="{active:pagination.page==n}"><a
                        class="page-link" @click="pagination.page=n; listar();">{{ n }}</a></li>
                    <li class="page-item" :class="{disabled:pagination.page==articulos.last_page}"><a class="page-link"
                                                                                                      @click="pagination.page++; listar();">&gt;</a></li>
                    <li class="page-item" :class="{disabled:pagination.page==articulos.last_page}"><a class="page-link"
                                                                                                      @click="pagination.page=articulos.last_page; listar();">&raquo;</a></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        // guardar todos los articulos
        return {
            articulo: {
                nombre: "",
                descripcion: "",
                stock: 0,
            },
            id: 0,
            modificar: true,
            modal: 0,
            articulos: [],
            tituloModal: "", //tiulo del modal
            errores: {},
            pagination: {
                page: 1,
                per_page: 5,
            },
            paginas: [],
        };
    },

    methods: {
        //   Listar articulos
        async listar() {
            const res = await axios.get("/articulos", { params: this.pagination });
            this.articulos = res.data;
            this.listarpaginas();
        },
        // listar paginas
        listarpaginas() {
            const n = 2;
            let arrayN = [];
            let ini = this.pagination.page - n;
            if (ini < 1) {
                ini = 1;
            }

            let fin = this.articulos.last_page + n;
            if (fin > this.articulos.last_page) {
                fin = this.articulos.last_page;
            }

            for (let i = ini; i <= fin; i++) {
                arrayN.push(i);
            }

            this.paginas = arrayN;
        },
        // Eliminar articulo
        async eliminar(id) {
            const res = await axios.delete("/articulos/" + id);
            this.listar();
        },
        // Guardar articulo
        async guardar(id) {
            try {
                if (this.modificar) {
                    const res = await axios.put("/articulos/" + this.id, this.articulo);
                } else {
                    const res = await axios.post("/articulos", this.articulo);
                }
                this.cerrarModal();
                this.listar();
            } catch (error) {
                if (error.response.data) {
                    this.errores = error.response.data.errors;
                }
            }
        },
        // mostrar modal
        arbirModal(data = {}) {
            this.modal = 1;
            if (this.modificar) {
                this.id = data.id;
                this.tituloModal = "Modificar artículo";
                this.articulo.nombre = data.nombre;
                this.articulo.descripcion = data.descripcion;
                this.articulo.stock = data.stock;
            } else {
                this.id = 0;
                this.tituloModal = "Crear artículo";
                this.articulo.nombre = "";
                this.articulo.descripcion = "";
                this.articulo.stock = "";
            }
        },
        // cerrar modal
        cerrarModal() {
            this.modal = 0;
            this.errores = {};
        },
    },

    created() {
        this.listar();
    },
};
</script>
<style>
.mostrar {
    display: list-item;
    opacity: 100%;
    background: rgba(42, 40, 95, 0.719);
}
</style>
