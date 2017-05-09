@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="ui grid">
            <div>
                <div class="panel panel-default">
                    <div>
                        <?php
                        foreach ($files as $file) : ?>
                        <div class="form-group">
                            <p>Danh sach cac file</p>
                            <a href="{{ $file->url }}">{{ $file->name }}</a>
                            @if (Auth::check())
                            <button type="button" class="col-md-1 btn btn-primary" data-toggle="modal"
                                    data-target="#updateFileModal">Update
                            </button>
                            <a class="col-md-1 btn btn-primary"
                               href="{{ URL::to('delete_file/'.$file->id) }}">Delete</a>

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
                                    <form action="{{ url('updatefile/'.$file->id) }}" method="POST"
                                          enctype="multipart/form-data">
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
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach
                    ?>

                    <!-- File -->

                        <!-- Trigger the modal with a button -->
                        @if (Auth::check())
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#fileModal">
                            Add new File
                        </button>
                        @endif

                        <!-- Modal File-->
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
                    </div>

                    <div class="panel">
                        <div class="panel-heading">Post {{$post->title}}</div>
                    </div>
                    <div class="panel-body">
                        <div>
                            Danh sách các bài viết trong cung chu de
                        </div>
                        <?php
                        foreach ($posts as $post_semilar) : ?>
                        <div class="form-group">
                            <label for="name" class="col-md-2 control-label">Name</label>
                            <div class="col-md-6">
                                <a href="{{ URL::to('post_detail/'.$post_semilar->id) }}">{!!html_entity_decode($post_semilar->title)!!}</a>
                            </div>
                        </div>
                        <?php endforeach
                        ?>
                    </div>
                        <div>{!!html_entity_decode($post->content)!!}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
