<?php

use Illuminate\Support\Facades\Route;

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    Route::crud('inventment', 'InventmentCrudController');
    Route::crud('category', 'CategoryCrudController');
    Route::crud('expense', 'ExpenseCrudController');
    Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@dashboard']);

    Route::crud('profit', 'ProfitCrudController');
    Route::crud('salary', 'SalaryCrudController');
    Route::get('monthlyChart', ['as' => 'monthlyChart', 'uses' => 'DashboardController@monthlyChart']);

    Route::get('index', ['as' => 'audit.log.index', 'uses' => 'ActivityController@index']);
    Route::get('search', ['as' => 'audit.log.search', 'uses' => 'ActivityController@search']);
    Route::get('user-name', ['as' => 'audit.log.user.name', 'uses' => 'ActivityController@getUserName']);



}); // this should be the absolute last line of this file
