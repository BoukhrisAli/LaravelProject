<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\ScategorieController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\AuthController; 



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

Route::middleware('api')->group(function () {
    Route::resource('scategories', ScategorieController::class);        
});

Route::get('/scat/{idcat}', [ScategorieController::class,'showSCategorieByCAT']);

Route::middleware('api')->group(function () {
    Route::resource('clients', ClientController::class);
});
Route::middleware('api')->group(function () {
    Route::resource('categories', CategorieController::class);
});
Route::middleware('api')->group(function () {
    Route::resource('articles', ArticleController::class);
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([
 'middleware' => 'api',
 'prefix' => 'auth'
], function ($router) {
 Route::post('/login', [AuthController::class, 'login']);
 Route::post('/register', [AuthController::class, 'register']);
 Route::post('/logout', [AuthController::class, 'logout']);
 Route::post('/refresh', [AuthController::class, 'refresh']);
 Route::get('/user-profile', [AuthController::class, 'userProfile']);
}); 

