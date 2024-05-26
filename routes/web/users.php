<?php

use Illuminate\Support\Facades\Route;




   //route for updating profile route::put used for updating
    Route::put('/users/{user}/update' , 'UserController@update')->name('user.profile.update');//name() is where you wrote the link in html tags <a> or the href
   // Route::get('admin/users','UserController@index')->name('users.index');
    Route::delete('/users/{user}/destroy','UserController@destroy')->name('user.destroy');


   Route::middleware(['role:admin','auth'])->group(function(){
      Route::get('/users','UserController@index')->name('users.index');
    
   });

   Route::middleware(['can:view,user'])->group(function(){
      Route::get('/users/{user}/profile' , 'UserController@show')->name('user.profile.show');
   });
