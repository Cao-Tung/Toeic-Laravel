<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{


    public function file()
    {
        return $this->hasMany('App\File');
    }
}
