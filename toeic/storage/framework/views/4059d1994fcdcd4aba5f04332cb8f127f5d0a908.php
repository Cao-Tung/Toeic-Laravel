        <link rel="stylesheet" type="text/css" href="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/css/bootstrap.css">
        <script src="/library/jquery-3.2.1.min.js"></script>  
        <script src="/library/bootstrap-3.3.5/bootstrap-3.3.5/dist/js/bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="/library/summernote-0.8.3-dist/dist/summernote.css">
        <script src="/library/summernote-0.8.3-dist/dist/summernote.js"></script>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">Create Category</div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" method="POST" action="<?php echo e(url('update_category/'.$category->id)); ?>">
                                <?php echo e(csrf_field()); ?>


                                <div class="form-group">
                                    <label for="name" class="col-md-4 control-label">Name</label>
                                    <div class="col-md-6">
                                        <textarea class="input-block-level summernote" id="name" name="name"><?php echo e($category->name); ?></textarea>
                                        <script>
                                        $('#name').summernote();
                                        </script>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-4">
                                        <button type="submit" class="btn btn-primary">
                                            Register
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

