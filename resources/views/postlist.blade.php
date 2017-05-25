@extends('layouts.app')

@section('content')
    <!-- content -->
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="blog-post">
                    @foreach ($posts as $post)
                        <div class="panel">

                    <div class="wrapper-lg">
                        <h2 class="m-t-none"><a href="{{ URL::to('post_detail/'.$post->id) }}">{!!html_entity_decode($post->title)!!}</a>
                        </h2>
                        <div class="line line-lg b-b b-light"></div>
                        <a href="{{ URL::to('post_detail/'.$post->id) }}" class="post-link">
                            <div>
                                <img src="{{ $post->avatar }}" class="img-full">
                            </div>
                        </a>
                        <div class="line line-lg b-b b-light"></div>
                        <div>
                            {!!html_entity_decode($post->description)!!}
                        </div>
                        <div class="line"></div>
                        <div class="">
                            <a class="negative ui button" href="{{ URL::to('post_detail/'.$post->id) }}">Read more</a>
                        </div>
                        <div class="line line-lg b-b b-light"></div>
                        <div class="text-muted">
                            <i class="fa fa-user text-muted"></i> by <a href class="m-r-sm">Admin</a>
                            <i class="fa fa-clock-o text-muted"></i> {{ $post->updated_at }}
                            
                        </div>
                    </div>
                </div>
                    @endforeach
                <div style="margin : auto; width : 30%;">{{ $posts->links() }}</div>
                </div>
            </div>
            <div class="col-sm-3 panel">
                <h5 class="font-bold">Courses</h5>
                <ul class="list-group">
                    @foreach ($courses as $item)
                        <li class="list-group-item">
                            <a href>
                                <font color="red">{!!html_entity_decode($item->title)!!}</font>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="col-sm-3 panel">
                <h5 class="font-bold">Webs</h5>
                <div>
                    @foreach ($webs as $item)
                        <div>
                            <a class="pull-left thumb thumb-wrapper m-r" >
                                <img src="{{ $post->avatar }}">
                            </a>
                            <div class="clear">
                                <a href="{{$item->url}}"
                                   class="font-semibold text-ellipsis"><font color="red">{!!html_entity_decode($item->name)!!}</font></a>
                            </div>
                        </div>
                        <div class="line"></div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- /content -->
@endsection

