@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Home</div>

                <div class="panel-body">
                    Trang chu
                    <p>Danh sach tat cac bai post</p>
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
                                <td>
                                    <a href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                                    </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <br>
                    <p>Danh sach cac chu de</p>
                    <table class="table table-striped m-b-none">
                        <thead>
                        <tr>
                            <th>Name</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($categories as $category)
                            <tr>
                                @if (Auth::check())
                                <td>
                                    <a href="{{ URL::to('adminpost/'.$category->id) }}">{!!html_entity_decode($category->name)!!}</a>
                                </td>
                                @else
                                <td>
                                    <a href="{{ URL::to('post/'.$category->id) }}">{!!html_entity_decode($category->name)!!}</a>
                                </td>
                                @endif
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
