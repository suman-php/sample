<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserHobbiesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// UserHobbiesController routes

// Webpages
Route::get('/', [UserHobbiesController::class, 'index']);

// DataTables related route
Route::get('users', [UserHobbiesController::class, 'getUsers'])->name('get.users');

// CRUD operations
Route::prefix('user')->group(function () {
    // Create new user
    Route::post('/add', [UserHobbiesController::class, 'store']);

    // Update user
    Route::get('/edit-form/{id}', [UserHobbiesController::class, 'getEditForm']);
    Route::post('/update/{id}', [UserHobbiesController::class, 'update']);

    // Delete user
    Route::delete('/delete/{id}', [UserHobbiesController::class, 'destroy']);
});





