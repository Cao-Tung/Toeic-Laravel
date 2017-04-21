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
                            <form class="form-horizontal" role="form" method="POST" action="{{ url('update_post/'.$post->id) }}">
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <label for="title" class="col-md-4 control-label">Title</label>

                                    <div class="col-md-6">
                                        <input id="title" type="text" class="form-control" name="title" value="{{ $post->title }}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="description" class="col-md-4 control-label">Description</label>

                                    <div class="col-md-6">
                                        <input id="description" type="text" class="form-control" name="description" value="{{ $post->description }}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="content" class="col-md-4 control-label">Name</label>
                                    <div class="col-md-6">
                                        <textarea class="input-block-level summernote" id="content" name="content">{{ $post->content }}</textarea>
                                        <script>
                                        $('#content').summernote();
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

