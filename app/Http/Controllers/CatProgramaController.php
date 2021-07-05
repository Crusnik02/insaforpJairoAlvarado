<?php

namespace App\Http\Controllers;

use App\Models\catPrograma;
use Illuminate\Http\Request;

class CatProgramaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $programa = catPrograma::all(['id','nombre','estado']);
        return response()->json($programa);        
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
     * @param  \App\Models\catPrograma  $catPrograma
     * @return \Illuminate\Http\Response
     */
    public function show(catPrograma $catPrograma)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catPrograma  $catPrograma
     * @return \Illuminate\Http\Response
     */
    public function edit(catPrograma $catPrograma)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catPrograma  $catPrograma
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catPrograma $catPrograma)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catPrograma  $catPrograma
     * @return \Illuminate\Http\Response
     */
    public function destroy(catPrograma $catPrograma)
    {
        //
    }
}
