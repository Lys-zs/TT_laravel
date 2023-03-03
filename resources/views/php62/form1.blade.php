<form method="post" action="">
	<!-- phai co ham sau thi laravel moi bat duoc du lieu sau khi an nut submit -->
	@csrf
	<fieldset style="width:300px; margin:20px auto;">
		<legend>Form</legend>
		<input type="text" name="txt" required> 
		<input type="submit" value="submit">
	</fieldset>
	<h1>Lấy dữ liệu từ file web.php truyền ra: {{ isset($txt) ? $txt : "" }}</h1>
	<h1>Lấy dữ liệu trực tiếp từ file view này: {{ Request::get("txt") }}</h1>
</form>