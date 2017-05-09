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
          <a class="btn btn-primary" href="<?php echo e(URL::to('create_post/'.$id)); ?>">Create New</a>
          <a class="btn btn-primary" href="<?php echo e(URL::to('manage_web_post/'.$id)); ?>">Web</a>
          <a class="btn btn-primary" href="<?php echo e(URL::to('manage_course_post/'.$id)); ?>">Course</a>
          <?php
          foreach ($posts as $post) : ?>
          <div class="form-group">
            <label for="name" class="col-md-2 control-label">Name</label>
            <div class="col-md-6">
              <a href="<?php echo e(URL::to('post_detail/'.$post->id)); ?>"><?php echo html_entity_decode($post->title); ?></a>
            </div>
            <a class="col-md-1 btn btn-primary" href="<?php echo e(URL::to('edit_post/'.$post->id)); ?>">Update</a>
            <a class="col-md-1 btn btn-primary"href="<?php echo e(URL::to('delete_post/'.$post->id)); ?>">Delete</a>
          </div>
          <?php endforeach
          ?>
        </div>
      </div>
    </div>
  </div>
</div>

