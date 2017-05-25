<!DOCTYPE html>
<html lang="en" class="">
<head>
    <meta charset="utf-8"/>
    <title>Html version | Angulr</title>
    <meta name="description"
          content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="/libs/assets/animate.css/animate.css" type="text/css"/>
    <link rel="stylesheet" href="/libs/assets/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="/libs/assets/simple-line-icons/css/simple-line-icons.css" type="text/css"/>
    <link rel="stylesheet" href="/libs/jquery/bootstrap/dist/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="/library/Semantic-UI-CSS-master/semantic.css">
    
    <link rel="stylesheet" href="/css/font.css" type="text/css"/>
    <link rel="stylesheet" href="/css/app.css" type="text/css"/>
    <!-- Scripts -->
    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>
</head>
<body>

<div id="app">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'TOEIC') }}
                    <img src="/toeicicon.png">
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav">
                    &nbsp;
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <?php $categories = DB::table('categories')->get(); ?>
                            @foreach ($categories as $category)
                                <li>
                                    @if (Auth::check())
                                    <a href="{{ URL::to('adminpost/'.$category->id) }}">
                                        {!!html_entity_decode($category->name)!!}
                                    </a>
                                    @else
                            <a href="{{ URL::to('post/'.$category->id) }}">
                                {!!html_entity_decode($category->name)!!}
                            </a>
                            @endif
                                </li>
                            @endforeach

                        </ul>
                    </li>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                        
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        Logout
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                          style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>
    <br>
    @yield('content')
</div>

<script src="/libs/jquery/jquery/dist/jquery.js"></script>
<script src="/libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<script src="/library/Semantic-UI-CSS-master/semantic.js"></script>
<script src="/js/ui-load.js"></script>
<script src="/js/ui-jp.config.js"></script>
<script src="/js/ui-jp.js"></script>
<script src="/js/ui-nav.js"></script>
<script src="/js/ui-toggle.js"></script>
<script src="/js/ui-client.js"></script>

</body>
</html>