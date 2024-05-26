<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Post;

class PostController extends Controller
{

    public function index(){
        //$posts = Post::all();  //we don't want all the data for all users , we need only data for the one who logged in'
        
         
        $posts = auth()->user()->posts()->paginate(5);//authorized user could change
       // dd($posts);
        return view('admin.posts.index',['posts' => $posts]);
    }

    public function show(Post $post){
        
        return view('blog-post',['post'=>$post]);
    }

    public function create(){
        $this->authorize('create',Post::class);
        return view('admin.posts.create');
    }

    public function store()
    {
        $this->authorize('create',Post::class);
 
        $inputs = request()->validate([
            'title' => 'required|min:8|max:255',
            'post_image' => 'file',
            'body' => 'required'
        ]);
 
        if (request()->hasFile('post_image')) {
 
            //$inputs['post_image'] = request()->file('post_image')->store('images');
            $inputs['post_image'] = time() . '.' . request()->post_image->extension();
            request()->post_image->move(public_path('images'), $inputs['post_image']);
        }
 
        auth()->user()->posts()->create($inputs);
        //return back();
 
        session()->flash('post-create-message', 'Post was created.');
        return redirect()->route('post.index');
    }

    public function destroy(Post $post , Request $request){

        $this->authorize('delete',$post);

        $post->delete();
        //session()->flash('Post was deleted'); 
        $request->session()->flash('message','Post was deleted'); //or use this with the parameter: Request $request

        return back();//redirect you to the same page
    }

    public function edit(Post $post){
        $this->authorize('view',$post);
        return view('admin.posts.edit' , ['post' => $post] );
    }

    public function update(Post $post){
          //validation:
          $inputs = request()->validate([
              'title'=>'required|min:8|max:255',
              'post_image'=>'file',
              'body'=>'required'
          ]);

         //if(request('post_image')){
            //$inputs['post_image'] = request('post_image')->store('images');
            //$post->post_image = $inputs['post_image'];
          //}

          if (request('post_image')) {
              $inputs['post_image'] = time().'.'.request()->post_image->extension();
              request()->post_image->move(public_path('images'), $inputs['post_image']);
              $post->post_image     = $inputs['post_image'];
          }
         
        $post->title = $inputs['title'];//save change in title
        $post->body = $inputs['body'];//save change in body

        $this->authorize('update',$post);//if the user is authorized update
        $post->save(); //save but keep the original Auther in db dont change to that one who logged in
        //auth()->user()->posts()->save($post);//allow for the authorized user to save the changes above
        session()->flash('post-update-message','Post was updated');//give message after updating
        return redirect()->route('post.index'); //redirect to the dashboard

    }
}
