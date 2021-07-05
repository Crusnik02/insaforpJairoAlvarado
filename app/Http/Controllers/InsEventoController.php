<?php

namespace App\Http\Controllers;

use App\Models\InsEvento;
use App\Models\CatDepartamento;
use Illuminate\Http\Request;

class InsEventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $eventos = InsEvento::all(['id','nombre','descripcion','fecha_inicio','fecha_fin','ubicacion']);
        return response()->json($eventos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $evento = InsEvento::create($request->post());
        $departamentos = CatDepartamento::all(['id','nombre']);
        return response()->json([
                'message'=>'Evento registrado adecuadamante',
                'departamentos' => $departamentos,
                'evento'=> $evento
        ]);
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\InsEvento  $insEvento
     * @return \Illuminate\Http\Response
     */
    public function show(InsEvento $insEvento)
    {
        //
        return response()->json($insEvento);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\InsEvento  $insEvento
     * @return \Illuminate\Http\Response
     */
    public function edit(InsEvento $insEvento)
    {
        //
        $insEvento->fill($request->post()->save());
        return response()->json([
            'message'=>'Evento actualizado adecuadamente',
            'evento'=>$insEvento
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\InsEvento  $insEvento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, InsEvento $insEvento)
    {
        // solo se actualizara estado
        $insEvento->fill($request->post()->save());
        return response()->json([
            'message'=>'Evento finalizado adecuadamente',
            'evento'=>$insEvento
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\InsEvento  $insEvento
     * @return \Illuminate\Http\Response
     */
    public function destroy(InsEvento $insEvento)
    {
        //
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function cargarCatalogos() {
        $departamentos = CatDepartamento::all(['id','nombre']);
        return response()->json([
                'departamentos' => $departamentos,
        ]);

    }
}
