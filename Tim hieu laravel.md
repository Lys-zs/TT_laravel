- Laravel framework
	- Trang chu laravel: https://laravel.com
	- Cai dat laravel
		- cai xampp
		- cai composer: download tai dia chi http://getcomposer.org -> cai dat
		- Cai dat laravel
			- Truy cap vao thu muc htdocs
			- Tren thanh dia chi url go: cmd -> cua so cmd xuat hien
				- Trong cmd chay lenh sau: composer create-project laravel/laravel php62_laravel
			- Sau khi cai dat thanh cong, truy cap theo duong dan: http://localhost/php62_laravel/public
- Kien truc laravel
	- app: thu muc app chua tat ca cac file cau hinh laravel, hau het cac class cua he thong laravel trong thu muc nay 
	- app/Http/Controllers: thu muc chua cac file controller
	- app/Http/Middleware: thu muc middleware, chua cac tap tin de loc va ngan chan cac request
	- public: thu muc nay chua file index.php, ben trong folder public chua cac file css, js, images...
	- routes/web.php: file web.php dieu khien cac route cua view
	- resources/views: chua cac file view cua website
- Sau khi cai dat thanh cong, truy cap website theo duong dan sau:
	http://localhost/php62_laravel/public

- Tim hieu file web.php -> dieu phoi url
Route::get('/', function () {
    return view('welcome');
});
/*
    - Khi go mot url, laravel se nhan biet url do thong qua cac cau truc sau
        - Route::get("duongdanao",function(){}); -> GET
        - Route::post("duongdanao",function(){}); -> POST
        - Route::any("duongdanao",function(){}); -> GET,POST
*/
//url: public/hello
Route::get("hello",function(){
    echo "<h1>Hello world</h1>";
});
/*
    Truyen bien len url
    Route::get("duongdanao/{bien1}/{bien2}...",function($bien1,$bien2...){});
        - cac bien tren duong dan ao theo cau truc: {tenbien}
        - cac bien truyen vao se la danh sach cac tham so tuong ung truyen vao function
*/
//url: public/truyenbien/hello/2022
Route::get("truyenbien/{bien1}/{bien2}",function($bien1,$bien2){
    echo "<h1>$bien1 $bien2</h1>";
});
/*
    goi view
    trong function thuc hien dong code sau
    return View::make("tenthumuc.tenview",truyen_bien_ra_view_neu_co); -> ap dung cho cac file view nam trong thu muc views
*/
//url: public/goiview1
Route::get("goiview1",function(){
    //co the su dung ham view thay cho View::make
    return View::make("php62.view1");
});
/*
    truyen bien ra view
    return View::make("tenthumuc.tenview",["bien1"=>giatri1,"bien2"=>giatri2...]);
*/
//url: public/goiview2
Route::get("goiview2",function(){
    //array("tenkey"=>"tenvalue") <=> ["tenkey"=>"tenvalue"]
    //co the su dung ham view thay cho View::make
    return View::make("php62.view2",["hoten"=>"Nguyễn Văn A","email"=>"nva@gmail.com"]);
});
/*
    - Cac cau truc trong view (balde engine)
        - Xuat bien, chuoi <=> echo trong php
            {{ "chuoi" }} <=> <?php echo "chuoi"; ?>
            {{ $bien }} <=> <?php echo $bien; ?>
            {!! "chuoi" !!} <=> <?php echo "chuoi"; ?>
            {!! $bien !!} <=> <?php echo $bien; ?>
        - khoi lenh if
            @if(ket qua so sanh tra ve true)
                html + code
            @else if(ket qua so sanh tra ve true)
                html + code
            @else
                html + code
            @endif
        - Khoi lenh for
            @for(batdau; ketthuc; lamsaodeketthuc)
                html + code
            @endfor
        - Khoi lenh foreach
            @foreach(array as $key=>$value)
                html + code
            @endforeach
*/
//url: public/goiview3
Route::get("goiview3",function(){
    return View::make("php62.view3");
});
/*
    - Form trong laravel
        - Trong the form phai co lenh sau thi moi lay du lieu duoc sau khi submit: @csrf
        - Trang thai ban dau cua trang la GET -> trong file web.php se thuc hien Route::get
        - Sau khi an nut submit thi trang thai trang se la POST -> trong file web.php se thuc hien Route::post
        - Doi tuong Request::get("ten-the=form") se lay du lieu theo kieu POST, GET
*/
//url: public/goiform1
//trang thai ban dau cua trang la GET -> su dung Route::get
Route::get("goiform1",function(){
    return View::make("php62.form1");
});
//khi an nut submit thi trang thai trang se la POST -> su dung Route::post
Route::post("goiform1",function(){
    //lay du lieu
    $txt = Request::get("txt");
    //Request::get("txt") <=> request("txt")
    return View::make("php62.form1",["txt"=>$txt]);
});
//url: public/cong2so -> GET
Route::get("cong2so",function(){
    return View::make("php62.form2");
});
//url: public/cong2so -> khi an nut submit -> POST
Route::post("cong2so",function(){
    return View::make("php62.form2");
});
//url: public/trangchu
Route::get("trangchu",function(){
    return View::make("php62.trangchu");
});
//url: public/gioithieu
Route::get("gioithieu",function(){
    return View::make("php62.gioithieu");
});
//---
//tim hieu middleware
/*
    - Cac file middleware nam tai duong dan: app\Http\Middleware\cac file
    - Tao middleware bang cau lenh: php artisan make:middleware Hello
    - Chu y: cac cau lenh cmd dung de tao controller, view, middleware... thi cmd do phai co duong dan nam trong thu muc php62_laravel
    - Sau khi tao file Hello.php xong thi phai dang ky middleware nay vao he thong thi moi su dung duoc no
*/
Route::get("php62/hello",function(){
    echo "<h1>Triệu gọi middleware Hello có tên là goi_hello</h1>";
})->Middleware("goi_hello");
//tim hieu controller
//tao controller bang lenh cmd sau: php artisan make:controller tenController  -> phai co chu Controller o cuoi ten file
//de su dung controller thi phai khai bao no o day
use App\Http\Controllers\HelloController;
//goi ham index trong class HelloController
Route::get("goicontroller",[HelloController::class,"index"]);
/*
    - Truyen bien tu url vao controller
    VD: public/goicontroller2/Hello/2022 -> goi ham truyenbien, truyen vao 2 tham so la Hello va 2022
*/
Route::get("goicontroller2/{bien1}/{bien2}",[HelloController::class,"truyenbien"]);
//----------------
Mot so lenh trong composer su dung de tao cac doi tuong:
Chu y: phai truy cap vao ben trong folder php62_project sau do moi truy cap cmd
- Tao middleware: php artisan make:middleware ten
- Tao controller: php artisan make:controller TenController
- Tao model: php artisan make:model ten
//----------------
Xay dung project bang laravel
- Tao database co ten php62_laravel
- Mo file .env de thay doi thong tin ket noi (dong 14,15,16)
- Mo cmd, chay lenh composer: php artisan migrate
    -> khi do laravel se tao san mot so table vao trong csdl php62_laravel