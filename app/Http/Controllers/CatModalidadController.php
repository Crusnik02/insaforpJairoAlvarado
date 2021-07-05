<?php

namespace App\Http\Controllers;

use App\Models\catModalidad;
use Illuminate\Http\Request;

class CatModalidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $modalidad = catModalidad::all(['id','nombre','estado']);
        return response()->json($modalidad);        
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
     * @param  \App\Models\catModalidad  $catModalidad
     * @return \Illuminate\Http\Response
     */
    public function show(catModalidad $catModalidad)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catModalidad  $catModalidad
     * @return \Illuminate\Http\Response
     */
    public function edit(catModalidad $catModalidad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catModalidad  $catModalidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catModalidad $catModalidad)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catModalidad  $catModalidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(catModalidad $catModalidad)
    {
        //
    }
}
