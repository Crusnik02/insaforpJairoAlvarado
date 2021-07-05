<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('evento',App\Http\Controllers\InsEventoController::class)->only(['index','store','show','update','destroy','cargarCatlogos']);
Route::resource('horario',App\Http\Controllers\InsHorarioController::class)->only(['index','store','show','update','destroy']);
Route::resource('facilitador',App\Http\Controllers\CatFacilitadorController::class)->only(['index','store','show','update','destroy']);
Route::resource('modalidad',App\Http\Controllers\CatModalidadController::class)->only(['index','store','show','update','destroy']);
Route::resource('municipio',App\Http\Controllers\CatMunicipioController::class)->only(['index','store','show','update','destroy']);
Route::resource('programa',App\Http\Controllers\CatProgramaController::class)->only(['index','store','show','update','destroy']);
Route::resource('tipoCosto',App\Http\Controllers\CatTipoCostoController::class)->only(['index','store','show','update','destroy']);
