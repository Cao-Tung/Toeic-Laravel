<link rel="stylesheet" type="text/css" href="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/css/bootstrap.css">
<script src="/library/jquery-3.2.1.min.js"></script>  
<script src="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="/library/summernote-0.8.3-dist/dist/summernote.css">
<script src="/library/summernote-0.8.3-dist/dist/summernote.js"></script>
<link rel="stylesheet" type="text/css" href="/library/Semantic-UI-CSS-master/semantic.css">
<script src="/library/Semantic-UI-CSS-master/semantic.js"></script>
<div class="container">
  <div class="ui grid">
    <div class="twelve wide column">
      <div class="panel panel-default">
        <div class="panel-body form-horizontal">
          <div>Quản lý Web</div>
          <!-- Web -->

          <!-- Trigger the modal with a button -->
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#webModal">Add new Web</button>
          
          <div class="row well ui raised segment ">
            <div class="five wide column">
              <div class="ui-items">
                <div class=" list-group-item  active"><h5 class="font-weight-bold text-center">Web</h5></div>
                <?php
                foreach ($webs as $web) : ?>
                <a href="#" class="list-group-item" data-toggle="modal" data-target="#webModal{{$web->id}}">
                  <div class="ui items">
                    <div class="item">
                      <div class="ui top aligned">
                        <i class="tags red icon"></i>
                      </div>
                      <div class="content">
                        <div class="description">
                          <p>{!!html_entity_decode($web->name)!!}</p>
                          <p><small class="text-muted">View</small></p>
                          <small class="text-muted">date</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
                <?php endforeach
                ?>
                @foreach ($webs as $web)    
                <div class="modal fade" id="webModal{{$web->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">Hello</h4>
                      </div>
                      <div class="modal-body">
                        <form action="{{ url('update_web/'.$web->id) }}" method="POST" enctype="multipart/form-data">
                          {{ csrf_field() }}
                          <div class="form-group">
                            <label for="name" class="control-label">Name</label>
                            <div class="">
                              <input id="name" type="text" class="form-control" name="name" value="{{$web->name}}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="content" class="control-label">Content</label>
                            <div class="">
                              <input id="content" type="text" class="form-control" name="content" value="{{$web->content}}">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="url" class=" control-label">Url</label>
                            <div class="">
                              <input id="url" type="text" class="form-control" name="url" value="{{$web->url}}">
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                            <a class="btn btn-primary"href="{{ URL::to('delete_web/'.$web->id) }}">Delete</a>
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

          <div class="modal fade" id="webModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">New Web</h4>
                </div>
                <form action="{{ url('newweb/'.$id) }}" method="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="form-group">
                    <label for="name" class="col-md-4 control-label">Name</label>
                    <div class="col-md-6">
                      <input id="name" type="text" class="form-control" name="name">
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
