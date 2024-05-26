<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function index(){
        $users = User::all();
        return view('admin.users.index', ['users'=>$users]);
    }
    public function show(User $user){
        return view('admin.users.profile',['user'=>$user]);
    }

    public function update(User $user)
    {
 
//        $inputs = request()->validate([
//            'username' => ['required', 'string', 'max:255'],
//            'name' => ['required', 'string', 'max:255'],
//            'email' => ['required', 'email', 'max:255'],
//            //'password'    => ['min:6', 'max:255' , 'confirmed'],
//
//        ]);
 
 
        if (request('avatar')) {
 
            $inputs['avatar'] = time() . '.' . request()->avatar->extension();
            request()->avatar->move(public_path('images'), $inputs['avatar']);
        }
 
        $user->update($inputs);
        return back();
    }

    public function destroy(User $user){
        $user->delete();
        session()->flash('user-deleted','User has been deleted');
        return back();

    }
}

