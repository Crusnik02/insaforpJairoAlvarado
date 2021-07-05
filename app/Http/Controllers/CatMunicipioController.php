<?php

namespace App\Http\Controllers;

use App\Models\catMunicipio;
use Illuminate\Http\Request;

class CatMunicipioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $municipio = catMunicipio::all(['id','cat_municipio_id','nombre','descripcion','estado']);
        return response()->json($municipio);        
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
     * @param  \App\Models\catMunicipio  $catMunicipio
     * @return \Illuminate\Http\Response
     */
    public function show(catMunicipio $catMunicipio)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catMunicipio  $catMunicipio
     * @return \Illuminate\Http\Response
     */
    public function edit(catMunicipio $catMunicipio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catMunicipio  $catMunicipio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catMunicipio $catMunicipio)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catMunicipio  $catMunicipio
     * @return \Illuminate\Http\Response
     */
    public function destroy(catMunicipio $catMunicipio)
    {
        //
    }
}
