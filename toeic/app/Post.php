<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    protected $fillable = [
        'category_id'
    ];
    public function file()
    {
        return $this->hasMany('App\File');
    }
}
