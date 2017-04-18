        <link rel="stylesheet" type="text/css" href="./library/bootstrap-3.3.5/bootstrap-3.3.5/dist/css/bootstrap.css">
        <script src="./library/jquery-3.2.1.min.js"></script>  
        <script src="./library/bootstrap-3.3.5/bootstrap-3.3.5/dist/js/bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="./library/summernote-0.8.3-dist/dist/summernote.css">
        <script src="./library/summernote-0.8.3-dist/dist/summernote.js"></script>
        <link rel="stylesheet" type="text/css" href="./library/Semantic-UI-CSS-master/semantic.css">
        <script src="./library/Semantic-UI-CSS-master/semantic.js"></script>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">Create Category</div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" method="POST" action="{{ url('new_category') }}">
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <label for="title" class="col-md-4 control-label">Title</label>

                                    <div class="col-md-6">
                                        <input id="title" type="text" class="form-control" name="title" required autofocus>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="description" class="col-md-4 control-label">Description</label>

                                    <div class="col-md-6">
                                        <input id="description" type="text" class="form-control" name="description" required autofocus>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="name" class="col-md-4 control-label">Content</label>
                                    <div class="col-md-6">
                                        <textarea class="input-block-level summernote" id="name" name="name"></textarea >
                                            <script>
                                            $('#name').summernote();
                                            </script>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="category" class="col-md-4 control-label">Category</label>

                                        <div class="col-md-6">
                                            <div class="ui form">
                                              <div class="grouped fields">
                                                <label>How often do you use checkboxes?</label>
                                                <div class="field">
                                                  <div class="ui radio checkbox">
                                                    <input type="radio" name="example2">
                                                    <label>Once a week</label>
                                                </div>
                                            </div>
                                            <div class="field">
                                              <div class="ui radio checkbox">
                                                <input type="radio" name="example2">
                                                <label>2-3 times a week</label>
                                            </div>
                                        </div>
                                        <div class="field">
                                          <div class="ui radio checkbox">
                                            <input type="radio" name="example2">
                                            <label>Once a day</label>
                                        </div>
                                    </div>
                                    <div class="field">
                                      <div class="ui radio checkbox">
                                        <input type="radio" name="example2">
                                        <label>Twice a day</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <button type="submit" class="btn btn-primary">
                            Register
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>

