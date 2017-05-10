@extends('layouts.app')

@section('content')
    <!-- content -->
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="blog-post">
                    <div class="panel">
                        <div>
                            <img src="{{ $post->avatar }}" class="img-full">
                        </div>
                        <div class="wrapper-lg">
                            <h2 class="m-t-none"><a
                                        href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                            </h2>
                            <div>
                                {!!html_entity_decode($post->content)!!}
                            </div>
                            <div class="line line-lg b-b b-light"></div>
                            <div class="text-muted">
                                <i class="fa fa-user text-muted"></i> by <a href class="m-r-sm">Admin</a>
                                <i class="fa fa-clock-o text-muted"></i> {{ $post->updated_at }}
                                <a href class="m-l-sm"><i class="fa fa-comment-o text-muted"></i> 2 comments</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <h5 class="font-bold">Recent Posts</h5>
                <div>
                    @foreach ($posts as $item)
                        <div>
                            <a class="pull-left thumb thumb-wrapper m-r">
                                <img src="{{ $item->avatar }}">
                            </a>
                            <div class="clear">
                                <a href="{{ URL::to('post_detail/'.$item->id) }}"
                                   class="font-semibold text-ellipsis">{!!html_entity_decode($item->title)!!}</a>
                                <div class="text-xs block m-t-xs"><a href>English</a> {{ $item->updated_at }}</div>
                            </div>
                        </div>
                        <div class="line"></div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

@endsection
