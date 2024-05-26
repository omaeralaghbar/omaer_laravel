<x-admin-master>
  @section('content')
    <h1>All posts</h1>
        @if(session('message'))
          <div class="alert alert-danger" role="alert">{{session('message')}}</div>
          @elseif(session('post-created-message'))
          <div class="alert alert-success" role="alert">{{session('post-created-message')}}</div>
          @elseif(session('post-update-message'))
          <div class="alert alert-success" role="alert">{{session('post-update-message')}}</div>


        @endif
          
                <table class="table table-bordered" id="users-table" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Auther</th>
                      <th>Title</th>
                      <th>Image</th>
                      <th>Body</th>
                      <th>Created At</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                      
                    </tr>
                  </thead>
                  <tfoot><!-- footer of the table -->
                    <tr>
                      <th>Id</th>
                      <th>Auther</th>
                      <th>Title</th>
                      <th>Image</th>
                      <th>Body</th>
                      <th>Created At</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  @foreach($posts as $post)
                     <tr>
                        <td>{{$post->id}}</td>
                        <td>{{$post->user->name}}</td>
                        <td><a href="{{route('post.edit' , $post->id)}}">{{$post->title}}</a></td>
                        <td><img height="40px" src="{{asset('images/' . $post->post_image)}}" alt=""></td>
                        <td>{{$post->body}}</td>
                        <td>{{$post->created_at->diffForHumans()}}</td>
                        <td>{{$post->updated_at->diffForHumans()}}</td>
                        <td>
                        
                        <form method="post" action="{{route('post.destroy' , $post->id)}}" enctype="multipart/form-data">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                        
                        </td>
                     </tr>
                  @endforeach
                  </tbody>
                </table>
             

          <div class="d-flex">

             <div class="mx-auto">
              {{ $posts->links() }}
             </div>

         </div>

@endsection

@section('scripts')


     <!-- Page level plugins -->
  <script src="{{asset('vendor/datatables/jquery.dataTables.min.js')}}"></script>
  <script src="{{asset('vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>

  <!-- Page level custom scripts -->
  <!-- <script src="{{asset('js/demo/datatables-demo.js')}}"></script> -->

@endsection
</x-admin-master>
