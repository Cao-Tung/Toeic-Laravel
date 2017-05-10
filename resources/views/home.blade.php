
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

            </div>
        </div>
        <div class="col-sm-3 panel">
            <h3 class="font-bold widget-title">Categories</h3>
            <ul class="list-group">
                @foreach ($categories as $category)
                <li class="list-group-item">
                    <a href="{{ URL::to('post/'.$category->id) }}">
                        <span class="badge pull-right ">view</span>
                        {!!html_entity_decode($category->name)!!}
                    </a>
                </li>
                @endforeach
            </ul>
            <div class="tags m-b-lg l-h-2x">
                <a href class="label bg-primary">Bootstrap</a> <a href class="label bg-primary">Application</a>
                <a href class="label bg-primary">Apple</a> <a href class="label bg-primary">Less</a> <a
                href class="label bg-primary">Theme</a> <a href class="label bg-primary">Laravel</a>
            </div>
        </div>
        <div class="col-sm-3 panel">
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


   @endsection
