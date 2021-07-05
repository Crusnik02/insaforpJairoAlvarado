<?php

namespace App\Http\Controllers;

use App\Models\insHorario;
use Illuminate\Http\Request;

class InsHorarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $horario = insHorario::create($request->post());
        return response()->json([
                'message'=>'Horario registrado adecuadamante',
                'evento'=> $horario
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\insHorario  $insHorario
     * @return \Illuminate\Http\Response
     */
    public function show(insHorario $insHorario)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\insHorario  $insHorario
     * @return \Illuminate\Http\Response
     */
    public function edit(insHorario $insHorario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\insHorario  $insHorario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, insHorario $insHorario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\insHorario  $insHorario
     * @return \Illuminate\Http\Response
     */
    public function destroy(insHorario $insHorario)
    {
        //
    }
}
