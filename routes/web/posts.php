<?php

use Illuminate\Support\Facades\Route;

    Route::get('/post/{post}', 'PostController@show')->name('post');
    Route::get('/posts','PostController@index')->name('post.index');
    Route::get('/posts/create', 'PostController@create')->name('post.create');
    Route::post('/posts','PostController@store')->name('post.store');

    
    Route::delete('/posts/{post}/destroy','PostController@destroy')->name('post.destroy');
    Route::patch('/posts/{post}/update','PostController@update')->name('post.update');//This means that only specific fields of the resource are modified, leaving the rest unchanged only update part from 
    Route::get('/posts/{post}/edit','PostController@edit')->name('post.edit');
