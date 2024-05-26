<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Post extends Model
{
    protected $guarded = [];
     
    //create relationship each post has user
    public function user(){
        return $this->belongsTo(User::class); // App/User
    }

    //public function setPostImageAttribute($value){
      //  $this->attributes['post_image'] =  asset($value);
    // }

      public function getPostImageAttribute($value){
         if (strpos($value, 'https://') !== false || strpos($value, 'http://') !== false) {
              return $value;
         }
          return asset('images/' . $value);
      }

      //public function getPostImageAttribute($value){
         //return asset($value);
      //}
}
