<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HelloController extends Controller
{
    //tao mot action (phuong thuc) trong controller <=> tao mot ham trong class nay
    public function index(){
        echo "<h1>Hàm index trong Controller có tên: HelloController</h1>";
    }
    //truyen bien tu url vao ham trong class
    public function truyenbien($bien1,$bien2){
        echo "<h1>$bien1 $bien2</h1>";
    }
}
