@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="ui grid">
            <div class="twelve wide column">
                <div class="panel panel-default">
                    <div class="panel-body form-horizontal">
                        <h1>Quản lý các chủ đề</h1>
                        <hr>
                        <a class="btn btn-default" href="{{ URL::to('create_post/'.$id) }}">Create New</a>
                        <a class="btn btn-danger" href="{{ URL::to('manage_web_post/'.$id) }}">Web</a>
                        <a class="btn btn-success" href="{{ URL::to('manage_course_post/'.$id) }}">Course</a>
                        <hr>
                        <div class="panel panel-default">
                            <table class="table table-striped m-b-none">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach ($posts as $post)
                                    <tr>
                                        <div class="form-group">
                                            <td>
                                                <a href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                                            </td>

                                            <td>
                                                <a class="btn btn-info"
                                                   href="{{ URL::to('edit_post/'.$post->id) }}">Update</a>
                                                <a class="btn btn-danger"
                                                   href="{{ URL::to('delete_post/'.$post->id) }}">Delete</a>
                                            </td>
                                        </div>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
