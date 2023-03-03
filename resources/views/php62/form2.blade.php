<?php 
	$so1 = Request::get("so1") != "" ? Request::get("so1") : 0;
	$so2 = Request::get("so2") != "" ? Request::get("so2") : 0;
	$tong = $so1 + $so2;
 ?>
<form method="post" action="">
	<!-- phai co ham sau thi laravel moi bat duoc du lieu sau khi an nut submit -->
	@csrf
	<fieldset style="width:300px; margin:auto;">
		<legend>Cộng 2 số</legend>
		<table cellpadding="5">
			<tr>
				<td>Số 1</td>
				<td><input type="number" name="so1"></td>
			</tr>
			<tr>
				<td>Số 2</td>
				<td><input type="number" name="so2"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Cộng 2 số"></td>
			</tr>
		</table>
		<h1>{{ "$so1 + $so2 = $tong" }}</h1>
	</fieldset>
</form>