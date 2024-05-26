<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //DB:table('users')->insert([
        //for small application
        //])
        // $this->call(UserSeeder::class);
        factory('App\User',100)->create()->each(function($user){
            $user->posts()->save(factory('App\Post')->make());//this will relate each user with his own post
        });
    }
}
