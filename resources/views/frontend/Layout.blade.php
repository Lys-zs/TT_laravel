<!DOCTYPE html>
<html>


<!-- Giao dien duoc chia se mien phi tai www.ptheme.net [Free HTML Download]. SKYPE[ptheme.net] - EMAIL[ptheme.net@gmail.com].-->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"  content="initial-scale=1, width=device-width">

<title>Home</title>

<link href="{{ asset('frontend/css/styles.css')}}" rel="stylesheet" type="text/css" />
<link href="{{ asset('frontend/css/bootstrap.css')}}" rel="stylesheet" type="text/css" />

<!--[if  IE]>
<link rel="stylesheet" type="text/css" href="frontend/css/ie.css" />
<![endif]-->

<!--[if lt IE 9]>
<script src="frontend/js/html5shiv.js"></script>
<![endif]-->

</head>

<body class="home">
    
    <!-- start div #wrapper -->
    <div id="wrapper">
        
        <!-- start header -->
        <header>
            <div class="border-left"></div>
            <div class="logo">
                <a href="#"><img src="{{ asset('frontend/img/logo.png')}}" alt=""></a>
                <span class="border-bottom"></span>
            </div>
            <!--
            <div class="search">
                <form action="#" method="post">
                    <input class="field" type="text" name="" value="Search rumors..." onFocus="if (this.value==this.defaultValue) this.value = ''" 
                    onblur="if (this.value=='') this.value = this.defaultValue" >
                    <input class="submit" type="submit" name="" value="" >
                </form>
            </div>
            -->
            <nav class="menu">
                <ul>
                    <li><span class="border-bottom"></span><a href="{{ asset('')}}">Trang chủ</a></li>
                    <li><span class="border-bottom"></span><a href="#">Giới thiệu</a></li>
                    <li><span class="border-bottom"></span><a href="#">Liên hệ</a></li>
                </ul>                                              
            </nav>   
            <select class="mobile-menu" onchange="document.location.href=this.options[this.selectedIndex].value;"> 
                <option value="">Go To...</option> 
                <option value="#">Trang chủ</option>
                <option value="category.html">Giới thiệu</option>
                <option value="#">Liên hệ</option>
            </select>
            <div class="clear"></div>
        </header>
        <!-- end header -->

            <!-- load file HotNews.blade.php vao day -->
            @include("frontend.HotNews")

		<!-- start div #main -->
	    <div id="main">
            <div class="main-content">
                <div class="left-container">
                <!-- ========================================= -->
                    @yield("fill-du-lieu-vao-layout")
                 <!-- ========================================= -->   
                </div>
                <div class="right-container">
                    <div class="sidebar">
                      @include("frontend.Category")
                        <div class="widget">
                            <div class="marked-title">
                                <h3>Kết nối</h3>
                            </div>
                            <ul class="social">
                                <li>
                                    <a href="#">
                                        <span class="icon fb"></span>
                                        25875<br><span>facebook fans</span>   
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon tw"></span>
                                        25875<br><span>twitter fans</span>   
                                    </a>
                                </li>
                                <li class="third">
                                    <a href="#">
                                        <span class="icon rss"></span>
                                        25875<br><span>subscribers</span>   
                                    </a>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                        <div class="widget">
                            <div class="marked-title">
                                <h3>Quảng cáo</h3>
                            </div>
                            <img class="ads" src="img/ads.jpg" alt="">
                            <div class="clear"></div>
                        </div>
                        
                        
                    </div>
                </div>
                <div class="clear"></div>
            </div>	
        </div>
	    <!-- end div #main -->
    
    </div>
	<!-- end div #wrapper -->    
    
    <!-- start footer -->
    <footer>
        
        <div class="footer-bottom">
            <div class="copyright">
                <p>Copyright 2017 @ <span>Laravel</span>. // A mega awesome NEWS MAGAZINE theme.</p>
            </div>
            <div class="clear"></div>
        </div>  
    </footer>
    <!-- end footer -->

<script type="text/javascript" src="{{ asset('frontend/js/jquery-1.8.3.min.js')}}" ></script>
<script type="text/javascript" src="{{ asset('frontend/js/html5shiv.js')}}" ></script>
<script type="text/javascript" src="{{ asset('frontend/js/bootstrap.min.js')}}" ></script>
<script type="text/javascript" src="{{ asset('frontend/js/fancydropdown.js')}}" ></script>
<script type="text/javascript" src="{{ asset('frontend/js/jquery.easing-1.3.js')}}" ></script>
<script type="text/javascript" src="{{ asset('frontend/js/functions.js')}}" ></script>
<script type="text/javascript">
    /* <![CDATA[ */
    /*global $:false */
    $(function() {
        "use strict";
        //caching
        //next and prev buttons
        var $cn_next = $('#cn_next');
        var $cn_prev    = $('#cn_prev');
        //wrapper of the left items
        var $cn_list    = $('#cn_list');
        var $pages      = $cn_list.find('.cn_page');
        //how many pages
        var cnt_pages   = $pages.length;
        //the default page is the first one
        var page        = 1;
        //list of news (left items)
        var $items      = $cn_list.find('.cn_item');
        //the current item being viewed (right side)
        var $cn_preview = $('#cn_preview');
        //index of the item being viewed. 
        //the default is the first one
        var current     = 1;
        /*
        for each item we store its index relative to all the document.
        we bind a click event that slides up or down the current item
        and slides up or down the clicked one. 
        Moving up or down will depend if the clicked item is after or
        before the current one
        */
        $items.each(function(i){
            var $item = $(this);
            $item.data('idx',i+1);
            
            $item.bind('click',function(){
                var $this       = $(this);
                $cn_list.find('.selected').removeClass('selected');
                $this.addClass('selected');
                var idx         = $(this).data('idx');
                var $current    = $cn_preview.find('.cn_content:nth-child('+current+')');
                var $next       = $cn_preview.find('.cn_content:nth-child('+idx+')');
                
                if(idx > current){
                    $current.stop().animate({'top':'-357px'},600,'easeOutBack',function(){
                        $(this).css({'top':'357px'});
                    });
                    $next.css({'top':'357px'}).stop().animate({'top':'0px'},600,'easeOutBack');
                }
                else if(idx < current){
                    $current.stop().animate({'top':'357px'},600,'easeOutBack',function(){
                        $(this).css({'top':'357px'});
                    });
                    $next.css({'top':'-357px'}).stop().animate({'top':'0px'},600,'easeOutBack');
                }
                current = idx;
            });
        });
        /*
        shows next page if exists:
        the next page fades in
        also checks if the button should get disabled
        */
        $cn_next.bind('click',function(e){
            var $this = $(this);
            $cn_prev.removeClass('disabled');
            ++page;
            if(page === cnt_pages)
                { $this.addClass('disabled'); }
            if(page > cnt_pages){ 
                page = cnt_pages;
                return;
            }   
            $pages.hide();
            $cn_list.find('.cn_page:nth-child('+page+')').fadeIn();
            e.preventDefault();
        });
        /*
        shows previous page if exists:
        the previous page fades in
        also checks if the button should get disabled
        */
        $cn_prev.bind('click',function(e){
            var $this = $(this);
            $cn_next.removeClass('disabled');
            --page;
            if(page === 1)
                { $this.addClass('disabled'); }
            if(page < 1){ 
                page = 1;
                return;
            }
            $pages.hide();
            $cn_list.find('.cn_page:nth-child('+page+')').fadeIn();
            e.preventDefault();
        });
    });
    /* ]]> */
</script> 

</body>


<!-- Giao dien duoc chia se mien phi tai www.ptheme.net [Free HTML Download]. SKYPE[ptheme.net] - EMAIL[ptheme.net@gmail.com].-->
</html>