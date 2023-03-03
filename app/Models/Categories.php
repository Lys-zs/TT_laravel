<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Categories extends Model
{
    use HasFactory;
    //khai bao ten table de su dung
    //chu y: laravel quy dinh bat buoc phai dung tu khoa protected, khong duoc dung public hoac private
    protected $table = "categories";
    //neu trong table categories khong co 2 cot create_at va update_at thi phai khai bao dong code ben duoi
    public $timestamps = false;//co nghia la se khong tu dong fill thoi gian vao 2 cot update_at, create_at (co nghia la khong can tao 2 cot nay trong table categories)
}
