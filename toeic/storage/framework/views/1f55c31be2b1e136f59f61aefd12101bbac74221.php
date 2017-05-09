<link rel="stylesheet" type="text/css" href="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/css/bootstrap.css">
<script src="/library/jquery-3.2.1.min.js"></script>  
<script src="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="/library/summernote-0.8.3-dist/dist/summernote.css">
<script src="/library/summernote-0.8.3-dist/dist/summernote.js"></script>
<link rel="stylesheet" type="text/css" href="/library/Semantic-UI-CSS-master/semantic.css">
<script src="/library/Semantic-UI-CSS-master/semantic.js"></script>
<div class="container">
  <div class="ui grid">
    <div>
      <div class="panel panel-default">
        <div>

          <?php
          foreach ($files as $file) : ?>
          <div class="form-group">
            <p>Danh sach cac file</p>
            <a href="<?php echo e($file->url); ?>"><?php echo e($file->name); ?></a>
            <button type="button" class="col-md-1 btn btn-primary" data-toggle="modal" data-target="#updateFileModal">Update</button>
            <a class="col-md-1 btn btn-primary" href="<?php echo e(URL::to('delete_file/'.$file->id)); ?>">Delete</a>
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
                <form action="<?php echo e(url('updatefile/'.$file->id)); ?>" method="POST" enctype="multipart/form-data">
                  <?php echo e(csrf_field()); ?>

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
          <?php endforeach
          ?>

          <!-- File -->

          <!-- Trigger the modal with a button -->
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#fileModal">Add new File</button>
          <!-- Modal File-->
          <div class="modal fade" id="fileModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">UploadFile</h4>
                </div>
                <form action="<?php echo e(url('uploadfile/'.$post->id)); ?>" method="POST" enctype="multipart/form-data">
                  <?php echo e(csrf_field()); ?>

                  <div class="form-group">
                    <label for="name" class="col-md-2 control-label">Title</label>
                    <div class="col-md-6">
                      <input id="name" type="text" class="form-control" name="name">
                    </div>
                  </div>
                  <div class="form-group">
                    <input type="file" name="file" />
                    <button class="btn btn-primary" type="submit">Upload</button>
                  </div>
                </form>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="panel">
          <div class="panel-heading">Post <?php echo e($post->title); ?></div>
        </div>
        <div class="panel-body">
          <div><?php echo html_entity_decode($post->content); ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
