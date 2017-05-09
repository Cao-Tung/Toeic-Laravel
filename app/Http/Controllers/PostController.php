<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\File;
use App\Web;
use App\Course;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $posts = Post::where('category_id', $id)->get();
        $webs = Web::where('category_id', $id)->get();
        $courses = Course::where('category_id', $id)->get();
        return view('adminpostlist', ['posts' => $posts, 'webs' => $webs, 'courses' => $courses], ['id' => $id]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function user($id)
    {
        $posts = Post::where('category_id', $id)->get();
        $webs = Web::where('category_id', $id)->get();
        $courses = Course::where('category_id', $id)->get();
        return view('postlist', ['posts' => $posts, 'webs' => $webs, 'courses' => $courses], ['id' => $id]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
        return view('postnew', ['id' => $id]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        $post = new Post;
        $post->title = $request->input('title');
        $post->content = $request->input('content');
        $post->description = $request->input('description');
        $post->view = '0';
        $post->category_id = $id;
        $file = new File;
        $file->post_id = '-1';
        $path = $request->file('file')->store('files');
        $file->name = $request->input('title');
        $file->url = '/'.$path;
        $post->avatar = $file->url;
        $file->save();
        $post->save();
        return redirect('post/'.$id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        $posts = Post::where('category_id', $post->category_id)->get();
        $files = File::where('post_id', $id)->get();
        return view('postdetail', ['post' => $post, 'posts' => $posts], ['files' => $files]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        return view('postupdate')->with(['post' => $post]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::find($id);
        $post->title = $request->input('title');
        $post->content = $request->input('content');
        $post->description = $request->input('description');
        $post->save();
        return redirect('post/'.$post->category_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $avatar = $post->avatar;
        $file = File::where('url', $avatar)->first();
        $name = $file->url;
        $file->delete();
        Storage::delete($name);
        $post->delete();
        return redirect('post/'.$post->category_id);
    }
}
