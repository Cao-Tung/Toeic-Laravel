<!DOCTYPE html>
<html lang="<?php echo e(config('app.locale')); ?>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="./library/bootstrap-3.3.5/bootstrap-3.3.5/dist/css/bootstrap.css">
    <script src="./library/jquery-3.2.1.min.js"></script>  
    <script src="./library/bootstrap-3.3.5/bootstrap-3.3.5/dist/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="./library/summernote-0.8.3-dist/dist/summernote.css">
    <script src="./library/summernote-0.8.3-dist/dist/summernote.js"></script>
    
    <!-- Styles -->
    <style>
    html, body {
        background-color: #fff;
        color: #636b6f;
        font-family: 'Raleway', sans-serif;
        font-weight: 100;
        height: 100vh;
        margin: 0;
    }

    .full-height {
        height: 100vh;
    }

    .flex-center {
        align-items: center;
        display: flex;
        justify-content: center;
    }

    .position-ref {
        position: relative;
    }

    .top-right {
        position: absolute;
        right: 10px;
        top: 18px;
    }

    .content {
        text-align: center;
    }

    .title {
        font-size: 84px;
    }

    .links > a {
        color: #636b6f;
        padding: 0 25px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: .1rem;
        text-decoration: none;
        text-transform: uppercase;
    }

    .m-b-md {
        margin-bottom: 30px;
    }
    </style>
</head>
<body>
    <div class="flex-center position-ref full-height">
        <?php if(Route::has('login')): ?>
        <div class="top-right links">
            <?php if(Auth::check()): ?>
            <a href="<?php echo e(url('/home')); ?>">Home</a>
            <?php else: ?>
            <a href="<?php echo e(url('/login')); ?>">Login</a>
            <a href="<?php echo e(url('/register')); ?>">Register</a>
            <?php endif; ?>
        </div>
        <?php endif; ?>

        <div class="content">
            <div class="title m-b-md">
                Laravel
            </div>
            
           <form action="<?php echo e(url('upload')); ?>" method="POST" enctype="multipart/form-data">
                <?php echo e(csrf_field()); ?>

                <input type="file" name="file" />
                <input type="submit">
            </form>
                <div class="links">
                    <a href="https://laravel.com/docs">Documentation</a>
                    <a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a>
                </div>
            </div>
        </div>
    </body>
    </html>
