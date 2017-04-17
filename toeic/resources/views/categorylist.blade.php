@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-body form-horizontal">
                <div>Quản lý các chủ đề</div>
                <div>
                    Danh sách các bài viết,tìm kiếm,với admin có thể thêm,sửa xóa
                </div>
                <a class="btn btn-primary" href="{{ URL::to('create_category') }}">Create New</a>
                <?php
                   foreach ($categories as $category) : ?>
                    <div class="form-group">
                    <label for="name" class="col-md-2 control-label">Name</label>
                    <div class="col-md-6">
                        <div>{!!html_entity_decode($category->name)!!}</div>
                        
                    </div>
                    <a class="col-md-1 btn btn-primary" href="{{ URL::to('edit_category/'.$category->id) }}">Update</a>
                    <a class="col-md-1 btn btn-primary"href="{{ URL::to('delete_category/'.$category->id) }}">Delete</a>
                </div>
                <?php endforeach
                ?>
                
            </div>
            </div>
        </div>
    </div>
</div>
@endsection
