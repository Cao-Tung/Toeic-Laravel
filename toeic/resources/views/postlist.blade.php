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
          <div>Quản lý các chủ đề</div>
          <div>
            Danh sách các bài viết,tìm kiếm,với admin có thể thêm,sửa xóa
          </div>
          <?php
          foreach ($posts as $post) : ?>
          <div class="form-group">
            <label for="name" class="col-md-2 control-label">Name</label>
            <div class="col-md-6">
              <a href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
            </div>
            <a class="col-md-1 btn btn-primary" href="{{ URL::to('edit_post/'.$post->id) }}">Update</a>
            <a class="col-md-1 btn btn-primary"href="{{ URL::to('delete_post/'.$post->id) }}">Delete</a>
          </div>
          <?php endforeach
          ?>
        </div>
      </div>
    </div>
    <div class="four wide column">
      <div class="row well ui raised segment ">
        <div class="five wide column">
          <div class="ui-items">
            <div class=" list-group-item  active"><h5 class="font-weight-bold text-center">Web</h5></div>
            <?php
            foreach ($webs as $web) : ?>
            <a href="#" class="list-group-item">
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
          </div>

          <!-- Edit Course -->
          <div class="ui-items ui raised segment ">
            <div class=" list-group-item  active"><h5 class="font-weight-bold text-center">Course</h5></div>
            <?php
            foreach ($courses as $course) : ?>
            <a href="#" class="list-group-item">
              <div class="ui items">
                <div class="item">
                  <div class="ui top aligned">
                    <i class="tags red icon"></i>
                  </div>
                  <div class="content">
                    <div class="description">
                      <p>{!!html_entity_decode($course->title)!!}</p>
                    </div>
                  </div>
                </div>
              </div>
            </a>
            <?php endforeach
            ?>
          </div>
        </div>
      </div>
    </div>

