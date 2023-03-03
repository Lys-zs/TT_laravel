<div class="widget">
    <div class="marked-title">
        <h3>Danh mục tin tức</h3>
    </div>
    <ul class="tags">
        <?php
            //co the su dung full cau lenh sql trong laravel
            $categories = DB::select("select * from categories order by id desc");
        ?>
        @foreach($categories as $rows)
        <li><a class="photo" href="{{ url('news/category/'.$rows->id) }}">{{ $rows->name}}</a></li>
        @endforeach
    </ul>
    <div class="clear"></div>
</div>