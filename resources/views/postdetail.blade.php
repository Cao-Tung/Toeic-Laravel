@extends('layouts.app')

@section('content')
<!-- content -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">
            <div class="blog-post">
                <div class="panel">
                    <div>
                        <img src="{{ $post->avatar }}" class="img-full">
                    </div>
                    <div class="wrapper-lg">
                        <h2 class="m-t-none"><a
                            href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                        </h2>
                        <div>
                            {!!html_entity_decode($post->content)!!}
                        </div>
                        <div class="line line-lg b-b b-light"></div>
                        <div class="text-muted">
                            <i class="fa fa-user text-muted"></i> by <a href class="m-r-sm">Admin</a>
                            <i class="fa fa-clock-o text-muted"></i> {{ $post->updated_at }}
                            <a href class="m-l-sm"><i class="fa fa-comment-o text-muted"></i> 2 comments</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <h5 class="font-bold">Recent Posts</h5>
            <div>
                @foreach ($posts as $item)
                <div>
                    <a class="pull-left thumb thumb-wrapper m-r">
                        <img src="{{ $item->avatar }}">
                    </a>
                    <div class="clear">
                        <a href="{{ URL::to('post_detail/'.$item->id) }}"
                           class="font-semibold text-ellipsis">{!!html_entity_decode($item->title)!!}</a>
                           <div class="text-xs block m-t-xs"><a href>English</a> {{ $item->updated_at }}</div>
                       </div>
                   </div>
                   <div class="line"></div>
                   @endforeach
               </div>
           </div>
           <div class="col-sm-3">
            <h5 class="font-bold">Files</h5>
            @if (Auth::check())
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#fileModal">
                Add new File
            </button>
            @endif
            <div class="modal fade" id="fileModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">UploadFile</h4>
                                    </div>
                                    <form action="{{ url('uploadfile/'.$post->id) }}" method="POST"
                                          enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="name" class="col-md-2 control-label">Title</label>
                                            <div class="col-md-6">
                                                <input id="name" type="text" class="form-control" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="file" name="file"/>
                                            <button class="btn btn-primary" type="submit">Upload</button>
                                        </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
            <div>
                @foreach ($files as $file)
                <div class="form-group">
                    <a class="clear" href="{{ $file->url }}">{{ $file->name }}</a>
                    @if (Auth::check())
                    <button type="button" class="ui primary button" data-toggle="modal" data-target="#updateFileModal">Update</button>
                    <a class="ui primary button" href="{{ URL::to('delete_file/'.$file->id) }}">Delete</a>
                    @endif
                </div>
                <!-- Modal File-->
                <div class="modal fade" id="updateFileModal" role="dialog">
                    <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Update File</h4>
                      </div>
                      <form action="{{ url('updatefile/'.$file->id) }}" method="POST" enctype="multipart/form-data">
                          {{ csrf_field() }}
                          <div class="form-group">
                            <label for="name" class="col-md-2 control-label">Name</label>
                            <div class="col-md-6">
                              <input id="name" type="text" class="form-control" name="name">
                          </div>
                          <div class="form-group">
                              <button class="btn btn-primary" type="submit">Update</button>
                          </div>
                      </div>
                  </form>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
              </div>
          </div>
      </div>
      @endforeach
  </div>
</div>
</div>
</div>

@endsection
