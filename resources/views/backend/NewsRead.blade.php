<!-- load file Layout.blade.php vao day -->
@extends("backend.Layout")
<!-- do du lieu ben duoi vao tag yield("do-du-lieu-vao-layout") trong file Layout.blade.php -->
@section("do-du-lieu-vao-layout")
<div class="col-md-10 col-xs-offset-1">
	<div style="margin-bottom:5px;">
		<a href="{{ url('admin/news/create') }}" class="btn btn-primary">Add</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">News</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th style="width:50px;">STT</th>
					<th style="width:100px;">Ảnh</th>
					<th>Tiêu đề</th>
					<th style="width:200px;">Thuộc danh mục</th>
					<th style="width:100px; text-align: center;">Hot news</th>
					<th style="width:100px;"></th>
				</tr>
				<?php 					
					//dinh nghia so ban ghi tren mot trang
					$record_per_page = 4;
					$page = Request::get("page") != "" && is_numeric(Request::get("page")) ? Request::get("page") - 1 : 0;
					$stt = $page * $record_per_page;
				 ?>
				@foreach($data as $rows)
				<?php 
					$stt++;
				 ?>
				<tr>
					<td style="text-align:center;">{{ $stt }}</td>
					<td style="text-align:center;">
						@if(file_exists('upload/news/'.$rows->photo))
						<img style="width:100px;" src="{{ asset('upload/news/'.$rows->photo) }}">
						@endif
					</td>
					<td>{{ $rows->name }}</td>
					<td style="text-align:center;">
						<?php 
							//co the truy can truc tiep tai view
							$category = DB::table("categories")->where("id","=",$rows->category_id)->first();
							echo isset($category->name) ? $category->name : "";
						 ?>
					</td>
					<td style="text-align: center;">
						@if($rows->hot == 1)
							Hot
						@endif
					</td>
					<td style="text-align:center;">
						<a href="{{ url('admin/news/update/'.$rows->id) }}">Edit</a>&nbsp;
						<a href="{{ url('admin/news/delete/'.$rows->id) }}" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
				@endforeach
			</table>
			<style type="text/css">
				.pagination{padding:0px; margin:0px;}			
			</style>
			{{ $data->render() }}
		</div>
	</div>
</div>
@endsection