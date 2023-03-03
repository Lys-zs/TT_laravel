<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

//trong Model, Controller muon su dung doi tuong nao thi phai khai bao doi tuong do
//su dung doi tuong DB de thao tac csdl
use DB;
//doi tuong de lay theo kieu $_GET, $_POST, $_FILES
use Request;

class News extends Model
{
    use HasFactory;
    //lay cac ban ghi co phan trang
    public function modelRead(){
        $data = DB::table("news")->orderBy("id","desc")->paginate(4);
        return $data;
    }
    //lay mot ban ghi
    public function modelGetRecord($id){
        $record = DB::table("news")->where("id","=",$id)->first();
        return $record;
    }
    //update
    public function modelUpdate($id){
        $name = request("name"); //<=> Request::get("name");
        $category_id = request("category_id");
        $description = request("description");
        $content = request("content");
        $hot = request("hot") != "" ? 1 : 0;
        //update ban ghi
        DB::table("news")->where("id","=",$id)->update(["name"=>$name,"category_id"=>$category_id,"description"=>$description,"content"=>$content,"hot"=>$hot]);
        //neu co anh thi update anh
        if(Request::hasFile("photo")){
            //---
            //lay anh cu de xoa
            //->select("photo") lay cot photo
            $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
            if(isset($oldPhoto->photo) && file_exists("upload/news/".$oldPhoto->photo))
                unlink("upload/news/".$oldPhoto->photo);
            //---
            //Request::file("photo")->getClientOriginalName() lay ten file
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("photo")->move("upload/news",$photo);
            //update ban ghi
            DB::table("news")->where("id","=",$id)->update(["photo"=>$photo]);
        }
    }
    //create
    public function modelCreate(){
        $name = request("name"); //<=> Request::get("name");
        $category_id = request("category_id");
        $description = request("description");
        $content = request("content");
        $hot = request("hot") != "" ? 1 : 0;
        $photo = "";
        //neu co anh thi update anh
        if(Request::hasFile("photo")){
            //Request::file("photo")->getClientOriginalName() lay ten file
            $photo = time()."_".Request::file("photo")->getClientOriginalName();
            //thuc hien upload anh
            Request::file("photo")->move("upload/news",$photo);
        }
        //update ban ghi
        DB::table("news")->insert(["name"=>$name,"category_id"=>$category_id,"description"=>$description,"content"=>$content,"hot"=>$hot,"photo"=>$photo]);        
    }
    //delete
    public function modelDelete($id){
        //---
        //lay anh cu de xoa
        //->select("photo") lay cot photo
        $oldPhoto = DB::table("news")->where("id","=",$id)->select("photo")->first();
        if(isset($oldPhoto->photo) && file_exists("upload/news/".$oldPhoto->photo))
            unlink("upload/news/".$oldPhoto->photo);
        //---
        DB::table("news")->where("id","=",$id)->delete();
    }
}
