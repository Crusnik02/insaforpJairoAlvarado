<?php

namespace App\Http\Controllers;

use App\Models\catFacilitador;
use Illuminate\Http\Request;

class CatFacilitadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $facilitador = catFacilitador::all(['id','nombre','estado']);
        return response()->json($facilitador);        
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
     * @param  \App\Models\catFacilitador  $catFacilitador
     * @return \Illuminate\Http\Response
     */
    public function show(catFacilitador $catFacilitador)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catFacilitador  $catFacilitador
     * @return \Illuminate\Http\Response
     */
    public function edit(catFacilitador $catFacilitador)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catFacilitador  $catFacilitador
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catFacilitador $catFacilitador)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catFacilitador  $catFacilitador
     * @return \Illuminate\Http\Response
     */
    public function destroy(catFacilitador $catFacilitador)
    {
        //
    }
}
