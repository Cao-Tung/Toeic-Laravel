@extends('layouts.app')

@section('content')
    @if (Auth::check())

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
                                        <td>
                                            <a href="{{ URL::to('adminpost/'.$category->id) }}">{!!html_entity_decode($category->name)!!}</a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @else
        <!-- content -->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="blog-post">
                        @foreach ($posts as $post)
                            <div class="panel">
                                <div>
                                    <img src="{{ $post->avatar }}" class="img-full">
                                </div>
                                <div class="wrapper-lg">
                                    <h2 class="m-t-none"><a href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                                    </h2>
                                    <div>
                                        {!!html_entity_decode($post->description)!!}
                                    </div>
                                    <div class="line line-lg b-b b-light"></div>
                                    <div class="text-muted">
                                        <i class="fa fa-user text-muted"></i> by <a href class="m-r-sm">Admin</a>
                                        <i class="fa fa-clock-o text-muted"></i> {{ $post->updated_at }}
                                        <a href class="m-l-sm"><i class="fa fa-comment-o text-muted"></i> 2 comments</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
                <div class="col-sm-3">
                    <h5 class="font-bold">Categories</h5>
                    <ul class="list-group">
                        @foreach ($categories as $category)
                            <li class="list-group-item">
                                <a href="{{ URL::to('post/'.$category->id) }}">
                                    <span class="badge pull-right">15</span>
                                    {!!html_entity_decode($category->name)!!}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                    <div class="tags m-b-lg l-h-2x">
                        <a href class="label bg-primary">Bootstrap</a> <a href class="label bg-primary">Application</a>
                        <a href class="label bg-primary">Apple</a> <a href class="label bg-primary">Less</a> <a
                                href class="label bg-primary">Theme</a> <a href class="label bg-primary">Wordpress</a>
                    </div>
                    <h5 class="font-bold">Recent Posts</h5>
                    <div>
                        @foreach ($posts as $post)
                            <div>
                                <a class="pull-left thumb thumb-wrapper m-r">
                                    <img src="{{ $post->avatar }}">
                                </a>
                                <div class="clear">
                                    <a href="{{ URL::to('post_detail/'.$post->id) }}"
                                       class="font-semibold text-ellipsis">{!!html_entity_decode($post->title)!!}</a>
                                    <div class="text-xs block m-t-xs"><a href>English</a> {{ $post->updated_at }}</div>
                                </div>
                            </div>
                            <div class="line"></div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>

        <!-- /content -->
    @endif

@endsection
