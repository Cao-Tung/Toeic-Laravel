<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\File;
use App\Web;
use App\Course;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HomeController extends Controller
{
    

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = DB::table('categories')->get();
        $posts = DB::table('posts')->paginate(5);
        $postsnew = DB::table('posts')->paginate(5);
        return view('home', ['posts' => $posts, 'categories' => $categories, 'postsnew' => $postsnew]);
//         return redirect('/home');
    }
}
