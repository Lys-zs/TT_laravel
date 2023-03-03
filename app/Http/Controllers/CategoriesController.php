<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//trong controller muon su dung doi tuong nao thi phai khai bao doi tuong do o day
use View;//hien thi View
use DB;//doi tuong thao tac csdl

//su dung Eloquent de truy van csdl -> su dung model thay cho DB nhu o UsersController
//muon su dung model Categories thi phai khai bao o day -> su dung Eloquent
use App\Models\Categories;

class CategoriesController extends Controller
{
    //url: public/admin/categories
    public function read(){
        $data = Categories::orderBy("id","desc")->paginate(4);
        return View::make("backend.CategoriesRead",["data"=>$data]);
        //co the su dung: return view("backend.CategoriesRead",["data"=>$data]);
    }
    //update GET
    public function update($id){
        $record = Categories::where("id","=",$id)->first();
        return view("backend.CategoriesCreateUpdate",["record"=>$record]);
    }
    //update - POST
    public function updatePost($id){
        $name = request("name");
        //update name
        Categories::where("id","=",$id)->update(["name"=>$name]);
        //di chuyen den mot url khac
        return redirect(url('admin/categories'));
    }
    //create GET
    public function create(){
        return view("backend.CategoriesCreateUpdate");
    }
    //create - POST
    public function createPost(){
        $name = request("name");
        //update name
        Categories::insert(["name"=>$name]);
        //di chuyen den mot url khac
        return redirect(url('admin/categories'));
    }
    //delete
    public function delete($id){
        //lay mot ban ghi
        Categories::where("id","=",$id)->delete();
        //di chuyen den mo url khac
        return redirect(url("admin/categories"));
    }
}
