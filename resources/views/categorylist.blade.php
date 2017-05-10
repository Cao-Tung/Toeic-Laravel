@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Quản lý các chủ đề</h1>
        <hr>
        <a class="btn btn-primary" href="{{ URL::to('create_category') }}">Create New</a>
        <hr>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Danh sách các bài viết,tìm kiếm,với admin có thể thêm,sửa xóa</div>

                    <table class="table table-striped m-b-none">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($categories as $category)
                            <tr>
                                <td>{!!html_entity_decode($category->name)!!}</td>
                                <td>
                                    <a class="btn btn-default" href="{{ URL::to('edit_category/'.$category->id) }}">Update</a>
                                    <a class="btn btn-danger" href="{{ URL::to('delete_category/'.$category->id) }}">Delete</a>
                                    @if (Auth::check())
                                    <a class="btn btn-success" href="{{ URL::to('adminpost/'.$category->id) }}">Posts</a>
                                    @else
                                    <a class="btn btn-success" href="{{ URL::to('post/'.$category->id) }}">Posts</a>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
