<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Role;
use App\User;

class Permission extends Model
{
    protected $guarded = [];
    public function roles(){
        return $this->belongsToMany(Role::class);
    }

    public function users(){

        return $this->belongsToMany(User::class);
    }
}
