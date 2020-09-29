<?php

use Illuminate\Http\Request;

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


Route::post('/register','Api\Authcontroler@register');
Route::post('/login','Api\Authcontroler@login');
Route::post('/logout', 'Api\Authcontroler@logout')->middleware('auth:api');
Route::middleware(['auth:api'])->group(function () {

    Route::get('/films', 'Api\MovieController@showAll');
    Route::get('/film/{id}', 'Api\MovieController@showOne');
    Route::post('/film', 'Api\MovieController@create');
    Route::put('/film/{id}', 'Api\MovieController@update');
    Route::delete('/film/{id}', 'Api\MovieController@delete');
});