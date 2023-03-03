<!-- load file Layout.blade.php vao day -->
@extends("backend.Layout")
@section("do-du-lieu-vao-layout")
<div class="col-md-8 col-xs-offset-2">
	<div style="margin-bottom:5px;">
		<a href="{{ url('admin/users/create') }}" class="btn btn-primary">Add user</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">List User</div>
		<div class="panel-body">
			<table class="table table-bordered table-hover">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th style="width:100px;"></th>
				</tr>
				@foreach($data as $rows)
				<tr>
					<td>{{ $rows->name }}</td>
					<td>{{ $rows->email }}</td>
					<td style="text-align:center;">
						<a href="{{ url('admin/users/update/'.$rows->id) }}">Edit</a>&nbsp;
						<a href="{{ url('admin/users/delete/'.$rows->id) }}" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
				@endforeach
			</table>
			<style type="text/css">
				.pagination{padding:0px; margin:0px;}
			</style>
			<!-- laravel ho tro ham phan trang nhu sau -->
			{{ $data->render() }}
		</div>
	</div>
</div>
@endsection