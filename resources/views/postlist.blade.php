@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="ui grid">
            <div class="twelve wide column">
                <div class="panel panel-default">
                    <div class="panel-body form-horizontal">
                        <div>Quản lý các bài viết</div>
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
                            
                        </div>
                        <?php endforeach
                        ?>
                    </div>
                </div>
            </div>
            <div class="four wide column">
                <div class="">
                    <div>
                        <div class="ui-items">
                            <div class=" list-group-item  active"><h5 class="font-weight-bold text-center">Web</h5>
                            </div>
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
                            <div class=" list-group-item  active"><h5 class="font-weight-bold text-center">Course</h5>
                            </div>
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
@endsection

