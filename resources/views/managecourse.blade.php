@extends('layouts.app')

@section('content')
<div class="container">
  <div class="ui grid">
    <div class="twelve wide column">
      <div class="panel panel-default">
        <div class="panel-body form-horizontal">
          <div>Quản lý Course</div>
          <!-- Course -->

          <!-- Trigger the modal with a button -->
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#courseModal">Add new Course</button>
          
          <div>
            Danh sách các course,tìm kiếm,với admin có thể thêm,sửa xóa
          </div>
          <?php
          foreach ($courses as $course) : ?>
          <div class="form-group">
            <label for="name" class="col-md-2 control-label">Title</label>
            <div class="col-md-6">
              <a href="{{$course->url}}">{!!html_entity_decode($course->title)!!}</a>
            </div>
            <a class="col-md-1 btn btn-primary" data-toggle="modal" data-target="#courseModal{{$course->id}}"">Manage</a>
          </div>
          <?php endforeach
          ?>


          <div>
            <div class="five wide column">
              <div class="ui-items">
                @foreach ($courses as $course)    
                <div class="modal fade" id="courseModal{{$course->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Hello</h4>
                      </div>
                      <div class="modal-body">
                        <form action="{{ url('update_course/'.$course->id) }}" method="POST" enctype="multipart/form-data">
                          {{ csrf_field() }}
                          <div class="form-group">
                            <label for="title" class="control-label">Name</label>
                            <div class="">
                              <input id="title" type="text" class="form-control" name="title" value="{{$course->title}}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="content" class="control-label">Content</label>
                            <div class="">
                              <input id="content" type="text" class="form-control" name="content" value="{{$course->content}}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="source" class="control-label">Source</label>
                            <div class="">
                              <input id="source" type="text" class="form-control" name="source" value="{{$course->source}}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="url" class=" control-label">Url</label>
                            <div class="">
                              <input id="url" type="text" class="form-control" name="url" value="{{$course->url}}">
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                            <a class="btn btn-primary" href="{{ URL::to('delete_course/'.$course->id) }}">Delete</a>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach  
              </div>
            </div>
          </div>

          <div class="modal fade" id="courseModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">New Course</h4>
                </div>
                <form action="{{ url('newcourse/'.$id) }}" method="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="form-group">
                    <label for="title" class="col-md-4 control-label">Title</label>
                    <div class="col-md-6">
                      <input id="title" type="text" class="form-control" name="title">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="content" class="col-md-4 control-label">Content</label>
                    <div class="col-md-6">
                      <input id="content" type="text" class="form-control" name="content">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="url" class="col-md-4 control-label">Url</label>
                    <div class="col-md-6">
                      <input id="url" type="text" class="form-control" name="url">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="source" class="col-md-4 control-label">Source</label>
                    <div class="col-md-6">
                      <input id="source" type="text" class="form-control" name="source">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                      <button type="submit" class="btn btn-primary">
                        Create
                      </button>
                    </div>
                  </div>
                </form>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
