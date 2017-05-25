<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
@extends('layouts.app')

@section('content')

<!-- content -->
<div class="container">
    <div class="row">
        <div class="col-sm-9">
            <div class="blog-post">
<div class="fb-like" data-href="https://www.facebook.com/Du-L%E1%BB%8Bch-Xanh-176457449523977/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
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
            <h3 class="font-bold widget-title">Categories</h3>
            @if (Auth::check())
            <a class="btn btn-success" href="{{ URL::to('category') }}">Manage</a>
            @endif
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
            <!-- <div class="tags m-b-lg l-h-2x">
                <a href class="label bg-primary">Home</a> <a href class="label bg-primary">Toeic</a>
                <a href class="label bg-primary">Laravel</a> <a href class="label bg-primary">Toeic 450+</a> <a
                href class="label bg-primary">Toeic 600+</a>
            </div> -->
        </div>
        <div class="col-sm-3 panel">
            <h5 class="font-bold">Recent Posts</h5>
            <div>
                @foreach ($postsnew as $postnew)
                <div>
                    <a class="pull-left thumb thumb-wrapper m-r">
                        <img src="{{ $postnew->avatar }}">
                    </a>
                    <div class="clear">
                        <a href="{{ URL::to('post_detail/'.$postnew->id) }}"
                           class="font-semibold text-ellipsis">{!!html_entity_decode($postnew->title)!!}</a>
                           <div class="text-xs block m-t-xs"><a href>English</a> {{ $postnew->updated_at }}</div>
                       </div>
                   </div>
                   <div class="line"></div>
                   @endforeach
               </div>
           </div>
       </div>
       <div class="fb-comments" data-href="http://localhost:8080/#/toeic/detail/{{$postnew->id}}" data-numposts="5"></div>
   </div>

   <!-- /content -->


   @endsection
