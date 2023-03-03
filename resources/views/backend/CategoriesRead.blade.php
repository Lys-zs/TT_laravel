<!-- load file Layout.blade.php vao day -->
@extends("backend.Layout")
<!-- do du lieu ben duoi vao tag yield("do-du-lieu-vao-layout") trong file Layout.blade.php -->
@section("do-du-lieu-vao-layout")
<div class="col-md-6 col-xs-offset-3">
	<div style="margin-bottom:5px;"><a class="btn btn-primary" href="{{ url('admin/categories/create') }}">Add Category</a></div>
	<div class="panel panel-primary">
		<div class="panel-heading">Category news</div>
		<div class="panel-body">
			<table class="table table-bordered table-hover">
				<tr>
					<th>Tên danh mục</th>
					<th style="width:100px;">Quản lý</th>
				</tr>
				@foreach($data as $rows)
				<tr>
					<td>{{ $rows->name }}</td>
					<td style="text-align:center">
						<a href="{{ url('admin/categories/update/'.$rows->id) }}">Edit</a>&nbsp;|&nbsp;
						<a href="{{ url('admin/categories/delete/'.$rows->id) }}" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
				@endforeach
			</table>
			<style type="text/css">
				.pagination{padding: 0px; margin: 0px;}
			</style>
			{{ $data->render() }}
		</div>
	</div>
</div>
@endsection