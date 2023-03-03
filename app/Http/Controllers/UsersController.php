<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//trong controller muon su dung doi tuong nao thi phai khai bao doi tuong do o day
use View;//hien thi view
//doi tuong thao tac csdl -> su dung QueryBuilder
use DB;
//doi tuong ma hoa password
use Hash;

class UsersController extends Controller
{
    //url: public/admin/users
    public function read(){
        /*
            truy van du lieu
            DB::table("users") <=> tac dong vao bang users
            orderBy("id","desc") <=> order by id idesc
            paginate(4) <=> phan 4 ban ghi tren mot trang
        */
        $data = DB::table("users")->orderBy("id","desc")->paginate(4);
        return View::make("backend.UsersRead",["data"=>$data]);
    }
    //update - GET
    public function update($id){
        //first() <=> lay mot ban ghi
        //lay mot ban ghi
        $record = DB::table("users")->where("id","=",$id)->first();
        return View::make("backend.UsersCreateUpdate",["record"=>$record]);
    }
    //update - POST
    public function updatePost($id){
        $name = request("name"); //<=> Request::get("name");
        $password = request("password"); //<=> Request::get("password");
        //update name
        DB::table("users")->where("id","=",$id)->update(["name"=>$name]);
        //neu password khong rong thi update password
        if($password != ""){
            //ma hoa password
            $password = Hash::make($password);
            DB::table("users")->where("id","=",$id)->update(["password"=>$password]);
        }
        //di chuyen den mot url khac
        return redirect(url("admin/users"));
    }
    //create - GET
    public function create(){
        //first() <=> lay mot ban ghi
        return View::make("backend.UsersCreateUpdate");
    }
    //create - POST
    public function createPost(){
        $name = request("name"); //<=> Request::get("name");
        $email = request("email"); //<=> Request::get("email");
        $password = request("password"); //<=> Request::get("password");
        //ma hoa password
        $password = Hash::make($password);
        //kiem tr xem email da ton tai chua, neu chua ton tai thi moi cho insert
        $countEmail = DB::table("users")->where("email","=",$email)->Count();
        if($countEmail == 0){
            //insert ban ghi
            DB::table("users")->insert(["name"=>$name,"email"=>$email,"password"=>$password]);        
            //di chuyen den mot url khac
            return redirect(url("admin/users"));
        }else{
            //di chuyen den mot url khac
            return redirect(url("admin/users?notify=emailExists"));
        }
    }
    //delete
    public function delete($id){
        //lay mot ban ghi
        DB::table("users")->where("id","=",$id)->delete();
        //di chuyen den mo url khac
        return redirect(url("admin/users"));
    }
}
