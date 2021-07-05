<?php

namespace App\Http\Controllers;

use App\Models\catDepartamento;
use Illuminate\Http\Request;

class CatDepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $departamento = catDepartamento::all(['id','nombre','descripcion','estado']);
        return response()->json($departamento);        
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\catDepartamento  $catDepartamento
     * @return \Illuminate\Http\Response
     */
    public function show(catDepartamento $catDepartamento)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catDepartamento  $catDepartamento
     * @return \Illuminate\Http\Response
     */
    public function edit(catDepartamento $catDepartamento)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catDepartamento  $catDepartamento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catDepartamento $catDepartamento)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catDepartamento  $catDepartamento
     * @return \Illuminate\Http\Response
     */
    public function destroy(catDepartamento $catDepartamento)
    {
        //
    }
}
