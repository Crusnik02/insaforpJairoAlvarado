const Welcome = () => import('./views/Welcome.vue' /* webpackChunkName: "resource/js/components/welcome" */)
const eventoList = () => import('./views/insEvento/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const eventoCreate = () => import('./views/insEvento/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const eventoEdit = () => import('./views/insEvento/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
const facilitadorList = () => import('./views/catFacilitador/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const facilitadorCreate = () => import('./views/catFacilitador/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const facilitadorEdit = () => import('./views/catFacilitador/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
const modalidadList = () => import('./views/catModalidad/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const modalidadCreate = () => import('./views/catModalidad/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const modalidadEdit = () => import('./views/catModalidad/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
const programaList = () => import('./views/catPrograma/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const programaCreate = () => import('./views/catPrograma/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const programaEdit = () => import('./views/catPrograma/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
const tipoCostoList = () => import('./views/catTipoCosto/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const tipoCostoCreate = () => import('./views/catTipoCosto/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const tipoCostoEdit = () => import('./views/catTipoCosto/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)

export const routes = [
    {
        name: 'home',
        path: '/',
        component: Welcome
    },
    {
        name: 'eventoList',
        path: '/insEvento',
        component: eventoList
    },
    {
        name: 'eventoEdit',
        path: '/insEvento/:id/edit',
        component: eventoEdit
    },
    {
        name: 'eventoCreate',
        path: '/insEvento/create',
        component: eventoCreate
    },
    {
        name: 'facilitadorList',
        path: '/catFacilitador',
        component: facilitadorList
    },
    {
        name: 'facilitadorEdit',
        path: '/catFacilitador/:id/edit',
        component: facilitadorEdit
    },
    {
        name: 'facilitadorCreate',
        path: '/catFacilitador/create',
        component: facilitadorCreate
    },
    {
        name: 'modalidadList',
        path: '/catModalidad',
        component: modalidadList
    },
    {
        name: 'modalidadEdit',
        path: '/catModalidad/:id/edit',
        component: modalidadEdit
    },
    {
        name: 'catModalidadCreate',
        path: '/catModalidad/create',
        component: modalidadCreate
    },
    {
        name: 'programaList',
        path: '/catPrograma',
        component: programaList
    },
    {
        name: 'programaEdit',
        path: '/catPrograma/:id/edit',
        component: facilitadorEdit
    },
    {
        name: 'programaCreate',
        path: '/catPrograma/create',
        component: programaCreate
    },
    {
        name: 'tipoCostoList',
        path: '/catTipoCosto',
        component: tipoCostoList
    },
    {
        name: 'tipoCostoEdit',
        path: '/catTipoCosto/:id/edit',
        component: tipoCostoEdit
    },
    {
        name: 'tipoCostoCreate',
        path: '/catTipoCosto/create',
        component: tipoCostoCreate
    }
]