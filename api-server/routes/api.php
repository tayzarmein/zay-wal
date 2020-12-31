<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\SupplierController;
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

Route::post('items', [ItemController::class, 'store']);

Route::get('items', [ItemController::class, 'show']);

Route::get('items/{id}', [ItemController::class, 'FindItem']);

Route::post('suppliers', [SupplierController::class, 'CreateSupplier']);

Route::post('categories', [CategoryController::class, 'store']);

Route::get('categories', [CategoryController::class, 'show']);

Route::put('categories/{id}', [CategoryController::class, 'update']);
