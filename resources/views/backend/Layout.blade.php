<!DOCTYPE html>
<html>
<head>
	<title>Admin page</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="{{ asset('backend/css/bootstrap.min.css') }}">
  <!-- load ckeditor -->
  <!-- ham asset('duong dan file') -> se tao duong dan tuyet doi cho file -->
  <script type="text/javascript" src="{{ asset('backend/ckeditor/ckeditor.js') }}"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="{{ url('admin/categories') }}">Danh mục tin tức</a></li>
            <li class="active"><a href="{{ url('admin/news') }}">Tin tức</a></li>
            <li class="active"><a href="{{ url('admin/users') }}">Quản lý user</a></li>
            <li class="active"><a href="{{ url('logout') }}">Đăng xuất</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

   <div class="container" style="margin-top:70px;">
   	@yield("do-du-lieu-vao-layout")
   </div>

</body>
</html>