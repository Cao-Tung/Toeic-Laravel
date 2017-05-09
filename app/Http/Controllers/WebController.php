<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Web;
use App\Post;
class WebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $webs = Web::where('category_id', $id)->get();
        return view('adminweblist', ['webs' => $webs], ['id' => $id]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        $web = new Web;
        $web->name = $request->name;
        $web->content = $request->content;
        $web->url = $request->url;
        $web->category_id = $id;
        $web->save();
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
        $posts = Post::where('category_id', $id)->get();
        $webs = Web::where('category_id', $id)->get();
        return view('manageweb', ['posts' => $posts, 'webs' => $webs], ['id' => $id]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $web = Web::find($id);
        $web->name = $request->name;
        $web->content = $request->content;
        $web->url = $request->url;
        $web->save();
        return redirect('post/'.$web->category_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $web = Web::find($id);
        $category_id = $web->category_id;
        $web->delete();
        return redirect('post/'.$category_id);
    }
}
