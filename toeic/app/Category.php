<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name'
    ];

    public function post()
    {
        return $this->hasMany('App\Post');
    }
    public function web()
    {
        return $this->hasMany('App\Web');
    }
    public function course()
    {
        return $this->hasMany('App\Course');
    }

}
