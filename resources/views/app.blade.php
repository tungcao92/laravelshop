<html xmlns:fb='http://ogp.me/ns/fb#'>
	<head>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width" />
		<meta http-equiv="content-type" content="text/html" charset="utf-8" />
		<base href="http://denledphilips.net/" />
		<title>@yield('title')</title>
		<meta name="description" content="Bóng đèn led chiếu sáng Philips. Megaline phân phối bóng led philips có tuổi thọ cao, bóng đèn tiết kiệm điện. Đèn led hà nội mang lại ánh sáng cho gia đình" />
		<meta property="og:locale" content="vi_VN" />
		<meta property="og:type" content="website" />

		<meta property="og:title" content="Bóng đèn led chiếu sáng Philips tiết kiệm điện - LED Hà Nội" />
		<meta property="og:description" content="Bóng đèn led chiếu sáng Philips. Megaline phân phối bóng led philips có tuổi thọ cao, bóng đèn tiết kiệm điện. Đèn led hà nội mang lại ánh sáng cho gia đình" />

		<meta property="og:image" content="http://denledphilips.net/upload/den-led-philips-banner2.png" />
		<meta name="DC.title" content="Cong ty den led chieu sang Megaline" />
		<meta name="geo.region" content="VN-HN" />
		<meta name="geo.placename" content="Thanh Xuan" />
		<meta name="geo.position" content="20.992183;105.840221" />
		<meta name="ICBM" content="20.992183, 105.840221" />
		<meta name="author" content="Sonnguyen90" />
		<meta name="copyright" content="denledchieusang" />
		<meta name="google-site-verification" content="e3KGz4w0rbcn4QVd8yfMNUjI25dOjEhp_x2rb5CSV9A" />
		<meta name="robots" content="index,follow" />
		<meta http-equiv="content-language" content="vi" />
		<meta name="keywords" content="đèn led, bóng đèn led, đèn led chiếu sáng, đèn led siêu sáng, mua đèn led, đại lí đèn led" />

		<link href="{{ URL::asset('css/style.css') }} " type="text/css" rel="stylesheet" />
		<link href="{{ URL::asset('css/owl.carousel.css') }}" type="text/css" rel="stylesheet" />
		<link href="{{ URL::asset('css/skin.css') }}" rel="stylesheet" type="text/css" />
		<link href="{{ URL::asset('css/bootstrap.css') }}" type="text/css" rel="stylesheet" />
		<link href="{{ URL::asset('css/default.css') }}" type="text/css" rel="stylesheet" />
		<link href="{{ URL::asset('css/font-awesome.css') }} " type="text/css" rel="stylesheet" />
		<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
		<script type="text/javascript" src="{{ URL::asset('js/jquery-1.7.1.min.js') }}"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				//var $a=$(this).(".sanpham_giamgia");                    
				$(".sanpham_item").hover(function () {
					$(this).css('border', '3px solid #f3753f');
					//$(".sanpham_giamgia").css('display','block');     
				}, function () {
					$(this).css('border', '2px solid #e6e6e6');
					//$(".sanpham_giamgia").css('display','none'); 
				});
			});
		</script>
		<script type="text/javascript" src="{{ URL::asset('js/owl.carousel.js') }}"></script>
		<script>
			jQuery(document).ready(function ($) {
				var owl = jQuery('.owl-carousel'); // save reference to variable
				owl.owlCarousel({
					items: 1,
					nav: true,
					loop: true,
					autoplay: true,
					autoplayTimeout: 3000,
					autoplayHoverPause: true
				});
			});
		</script>
		<script type="text/javascript" language="javascript" src="{{ URL::asset('js/jquery.carouFredSel-6.2.1-packed.js') }}"></script>
		<script type="text/javascript" language="javascript">
			$(function () {
				$('#foo2').carouFredSel({
					//items   : 1,
					auto: true,
					responsive: true,
					//prev: '#prev2',
					//next: '#next2',
					pagination: "#pager2",
					mousewheel: true,
					//direction           : "up",//ch?y lên
					swipe: {
						onMouse: true,
						onTouch: true
					}
				});

			});
		</script>
		<script type="text/javascript" src="{{ URL::asset('js/jquery.jcarousel.min.js') }}"></script>
		<script type="text/javascript">
			jQuery(document).ready(function () {
				jQuery('.first-and-second-carousel').jcarousel({
					auto: 0,
					scroll: 1,
					animation: 'slow',
					wrap: 'circular',
					animation: 1000,
				});
			});
		</script>
		<script type="text/javascript" src="{{ URL::asset('js/jquery.rating.js') }}"></script>
		<link href="{{ URL::asset('css/jquery.rating.css') }}" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="{{ URL::asset('js/bootstrap.js') }}"></script>
    <div id="fb-root"></div>
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
	
	<?php echo View::make('partials.top');?>
	<?php echo View::make('partials.menu');?>
	<div id="wrapper" class="container">
		<?php echo View::make('partials.slide',['listCate' => $listCate]);?>
		<div id="content_main">
			@yield('content')
			<?php echo View::make('partials.right');?>
		</div>
		<div class="clear"></div>
	</div>
	<?php echo View::make('partials.footer');?>	
</body>
</html>