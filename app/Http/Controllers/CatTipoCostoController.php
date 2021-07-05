<?php

namespace App\Http\Controllers;

use App\Models\catTipoCosto;
use Illuminate\Http\Request;

class CatTipoCostoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tipoCosto = catTipoCosto::all(['id','nombre','estado']);
        return response()->json($tipoCosto);        
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
     * @param  \App\Models\catTipoCosto  $catTipoCosto
     * @return \Illuminate\Http\Response
     */
    public function show(catTipoCosto $catTipoCosto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\catTipoCosto  $catTipoCosto
     * @return \Illuminate\Http\Response
     */
    public function edit(catTipoCosto $catTipoCosto)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\catTipoCosto  $catTipoCosto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, catTipoCosto $catTipoCosto)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\catTipoCosto  $catTipoCosto
     * @return \Illuminate\Http\Response
     */
    public function destroy(catTipoCosto $catTipoCosto)
    {
        //
    }
}
