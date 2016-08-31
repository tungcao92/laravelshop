@extends('app')
@section('title')
{{$listProducts->product_name}}
@stop
@section('content')
<div class="col-xs-12 col-sm-12 col-md-9">
                <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.6&appId=1472501296320685";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="row">
    <div class="col-lg-12">
        <div class="box">
        <div class="box_top1">
            <div class="box_top1_l">              
                <p class="cufont_text">Sản phẩm chi tiết</p>
            </div>
            <div class="box_top1_r"></div>  
            <div class="clear"></div>   
        </div>                  
    <div class="box_sanpham_main">    
        <ol class="breadcrumb">
            <li><a rel="nofollow" href="http://denledphilips.net/">Trang chủ</a></li>
            <li class="active">Sản phẩm chi tiết</li>
        </ol>
                <div id="item_sp">
                       
        
            <div id="item_img">
				<link href="{{ URL::asset('css/cloud-zoom.css') }}" type="text/css" rel="stylesheet" />
               <script type="text/javascript" src="{{ URL::asset('js/cloud-zoom.1.0.2.js') }}"></script>
                
            <div class="zoom-section">
                <div class="zoom-small-image">
					<div id="wrap" style="top:0px;z-index:9999;position:relative;">
						<a href="<?php echo URL::to('/').'/uploads/products/'.$listProducts->product_image; ?>" class="cloud-zoom" id="zoom" rel="adjustX:50, adjustY:-4" style="position: relative; display: block;"><img src="<?php echo URL::to('/').'/uploads/products/thumb/'.$listProducts->product_image; ?>" alt="<?php echo $listProducts->product_name;?>" title="<?php echo $listProducts->product_name;?>" style="width: 98%; height: 350px; display: block;"></a>
						<div class="mousetrap" style="background-image:url(&quot;.&quot;);z-index:999;position:absolute;width:399px;height:350px;left:0px;top:0px;">
						</div>
					</div>
				</div>                                                 
            </div>
            <div class="clear"></div>
            <!--Chia Sẻ-->
                  <div id="chiase" style="padding-left:0 !important;">                  	  
                      <div class="addthis_toolbox addthis_default_style " style="padding-top:5px;width:auto;height:auto;clear:both;">                          
                          <!-- AddThis Button BEGIN -->
                          <div class="addthis_toolbox addthis_default_style ">
                              <a class="addthis_button_facebook_like" fb:like:layout="button_count"><div class="fb-like fb_iframe_widget" data-layout="button_count" data-show_faces="false" data-share="false" data-action="like" data-width="90" data-height="25" data-font="arial" data-href="http://denledphilips.net/bong-den-bulb-philips-10w-thuy-tinh-dim.html" data-send="false" style="height: 25px;" fb-xfbml-state="parsed"></div><div class="fb-like fb_iframe_widget" style="height: 25px;" fb-xfbml-state="parsed"></div><div class="fb-like fb_iframe_widget" style="height: 25px;" fb-xfbml-state="parsed"></div></a>
                              <a class="addthis_button_tweet at300b"><div class="tweet_iframe_widget" style="width: 62px; height: 25px;"><span><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" title="Twitter Tweet Button" src="http://platform.twitter.com/widgets/tweet_button.49c786af4341a3b6f7902429d573d1b3.en.html#dnt=false&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Fdenledphilips.net%2Fbong-den-bulb-philips-10w-thuy-tinh-dim.html&amp;size=m&amp;text=B%C3%B3ng%20%C4%91%C3%A8n%20Bulb%20Philips%2010W%20th%E1%BB%A7y%20tinh%20DIM%3A&amp;time=1468120215117&amp;type=share&amp;url=http%3A%2F%2Fdenledphilips.net%2Fbong-den-bulb-philips-10w-thuy-tinh-dim.html%23.V4G8VWFuBzE.twitter" style="position: static; visibility: visible; width: 60px; height: 20px;" data-url="http://denledphilips.net/bong-den-bulb-philips-10w-thuy-tinh-dim.html#.V4G8VWFuBzE.twitter"></iframe></span></div></a>
                          
                          		<a class="addthis_button_google_plusone at300b" g:plusone:size="medium"><div class="google_plusone_iframe_widget" style="width: 90px; height: 25px;"><span><div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 90px; height: 20px; background: transparent;"><iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 90px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1468120150748" name="I0_1468120150748" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=en-US&amp;origin=http%3A%2F%2Fdenledphilips.net&amp;url=http%3A%2F%2Fdenledphilips.net%2Fbong-den-bulb-philips-10w-thuy-tinh-dim.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.5SuyE8wW9hM.O%2Fm%3D__features__%2Fam%3DAQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCNibPR9bfqg_vnBktq8TAvczXprcw#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1468120150748&amp;parent=http%3A%2F%2Fdenledphilips.net&amp;pfname=&amp;rpctoken=33377000" data-gapiattached="true" title="+1"></iframe></div></span></div></a>

                          

                   <div class="atclear"></div></div>
							<script type="text/javascript" src="{{ URL::asset('js/addthis_widget.js') }}"></script>
                         
                          <!-- AddThis Button END -->
                      <div class="atclear"></div></div>					 
                   </div>
                  <!--Chia Sẻ-->      
            </div>
            <div id="item_name">
                <h1><?php echo $listProducts->product_name;  ?></h1>                                
                                    <div id="star">
                                                                                    <p class="star_ac"></p>
                                                                        <p class="star_ac"></p>
                                                                        <p class="star_ac"></p>
                                                                        <p class="star_ac"></p>
                                                                        <p class="star_ac"></p>
                                                            <br clear="all">
                    </div>
                                    <div>                 
                <p><b>Danh mục sản phẩm</b>:&nbsp;
                ĐÈN LED BULB                </p>                                                        
                <p><b>Giá gốc</b>:&nbsp;<span style="font-size:25px;color:#f58a00;font-weight:bold; text-decoration: line-through; ">585.000&nbsp;VNĐ                </span>
                </p>  
                                <p><b>Giá khuyến mại</b>:&nbsp;<span style="color:green;font-weight:bold;font-size:30px;">485.000&nbsp;VNĐ                </span>
                </p>                                 
                 
                                <p><b>Tiết kiệm</b>:&nbsp;<span style="color:red;font-weight:bold;font-size:15px;">
                100.000&nbsp;VNĐ                </span>
                </p> 
                                               
                </div>
                                    <div id="km_mo"><p>-17%</p></div>
                                    <div id="buy_tool">
                    <ul>
                                                <li><a>Tiết kiệm điện năng đến 90% so với các loại đèn thông thường</a></li>
                           
                                                <li><a>Tuổi thọ cao 40.000 giờ, gấp 25 lần đèn sợi đốt</a></li>
                           
                                                <li><a>Nguồn sáng tinh khiết thân thiện với môi trường và người sử dụng</a></li>
                           
                                                <li><a>Thiết kế tinh tế cho màu sắc chân thực</a></li>
                           
                                                <li><a>Ánh sáng có thể điều chỉnh được bởi Dimmer</a></li>
                           
                           
                                               
                    </ul>
                </div>  
                <div class="clear"></div>             
                <div id="buttom_mh">
                    <a href="http://denledphilips.net/sanpham/dathang/322/bong-den-bulb-philips-w-thuy-tinh-dim.html" title="Bóng đèn Bulb Philips 10W thủy tinh DIM">Mua ngay</a>
                </div>                                                                                                 
            </div>               
            <div class="clear"></div>                     
            <div id="tab_new">
                    <script type="text/javascript">
                    $(document).ready(function(){
                        $('.danhmuc_item:first').css('display','block'); 
                        $('.fa_tab').click(function(){
                            var name=$(this).attr('title');                            
                            $('.danhmuc_item').css('display','none');                            
                             $('#'+name).css('display','block');
                             $('.fa_tab').removeClass('active');
                             $(this).addClass('active');    
                        });                             
                    });
                </script>
                    <div id="tab_top">
                        <ul class="ul_tab_news">
                            <li><a class="fa_tab active" title="item_1">Thông tin chi tiết</a></li>
                            <li><a class="fa_tab" title="item_2">Ý kiến khách hàng</a></li>                                                                                    
                        </ul>
                    </div>
                    <div id="tab_main">
                        <div id="item_1" class="danhmuc_item product-detail" style="display: block;">                            
                            <h2 style="text-align: center;">
	<span style="font-family: 'Times New Roman', Times, serif;">BÓNG ĐÈN LED BULB PHILIPS 10W DIM</span></h2>
<p>
	&nbsp;</p>
<h3>
	Giới thiệu bóng đèn bulb DIM</h3>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Là một thương hiệu nổi tiếng về uy tín và chất lượng của các sản phẩm <a href="http://denledphilips.net/den-led-bulb-101.html"><strong>đèn led bulb</strong></a>, Philips đã và đang dần đưa các sản phẩm của mình chiếm lĩnh thị trường chiếu sáng gần như hoàn toàn. Dòng sản phẩm đèn led bulb được thiết kế giống với các bóng sợi đốt hiện tại là một bước tiến đột phá, tuy vẫn mang những nét đặc trưng về hình dáng nhưng được cải tiến hớn về tính năng để đáp ứng nhu cầu của người sử dụng.</span></span></p>
<p>
	&nbsp;</p>
<h3>
	<span style="font-size: 20px;"><span style="font-family: 'Times New Roman', Times, serif;">Cấu tạo và ưu điểm của bóng đèn búp philip DIM</span></span></h3>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Về cơ bản, <a href="http://denledphilips.net/"><strong>bóng đèn led</strong></a>&nbsp;này gồm 3 phần chính:</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">+ Cấu tạo DIM giúp bóng đèn có thể tùy chỉnh độ sáng tùy thích theo dải công suất của đèn vì thế ta cần thêm 1 bộ DIM để sử dụng toàn vẹn giá trị của bóng đèn</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">+ Phần đui đèn: loại đui E27, loại đui dạng xoáy ốc rất thông dụng và dễ kiếm trên thị trường hiện nay. Lợi thế của nos chính là cùng loại đui với các bóng sợi đốt, vì thế có thể trực tiếp thay thế cho các loại bóng cũ kỹ trong gia đình bạn bởi các bóng đèn led thế hệ mới với nhiều ưu điểm vượt trội.</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">+ Phần thân đèn: lớp vỏ bên ngoài làm bằng chất lieu nhựa tản quang, bên trong là bộ phận mạch đèn.</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">+ Phần bóng đèn: vỏ ngoài dạng cầu, làm từ chất liệu mica màu trắng đục, có tác dụng bảo vệ cho bộ phận chip led bên trong, đòng thời tạo góc chiếu lên đến 180 độ giúp ánh sáng phân bố đều khắp không gian chiếu sáng. </span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">+ Chip led của bóng đèn led là loại chip led chất lượng rất tốt, đảm bảo trong điều kiện chiếu sáng dài mà khống hề suy giảm về độ sáng và chất lượng ánh sáng. Gồm 2 màu cơ bản trắng và vàng cho người dùng lựa chọn cho không gian riêng của mình. Ánh sáng từ chip led ổn định, đều màu, thân thiện với con người và không gian.</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đèn sử dụng diện áp thường AC220-240V 50-60Hz, công suất 12W, lượng điện năng tiêu thụ khá khiêm tốn.</span></span></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tuổi thọ của một bóng đèn led bulb 12W là hơn 30.000h, một mức thời gian khá lớn nếu so với vòng đời của một bóng đèn sợi đốt hay compact ở thời điểm hiện tại.</span></span></p>
<p>
	&nbsp;</p>
<h3>
	<span style="font-family: 'Times New Roman', Times, serif;">Sử dụng đèn led bulb Philips ở đâu?&nbsp;</span></h3>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;">Bóng đèn led này thích hợp để thắp sáng cho các không gian trong gia đình (phòng khách, phòng ngủ, nhà ăn, sân, thềm,…), ở văn phòng, nhà hàng, quán ăn nhỏ,…</span></span></p>
                        </div>
                        <div id="item_2" class="danhmuc_item" style="display: none;">
                            <div id="fb">       
                    	       <div id="fb-root"></div>
                    		      <script>(function(d, s, id) {
                    		          var js, fjs = d.getElementsByTagName(s)[0];
                                      if (d.getElementById(id)) return;
                                      js = d.createElement(s); js.id = id;
                                      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                      fjs.parentNode.insertBefore(js, fjs);
                                }(document, 'script', 'facebook-jssdk'));</script>
                                
                                    <fb:comments href="http://denledphilips.net/bong-den-bulb-philips-10w-thuy-tinh-dim.html" width="700" num_posts="10" fb-xfbml-state="rendered" class="fb_iframe_widget"><span style="height: 173px; width: 700px;"><iframe id="f33a12ecc4803f4" name="fa3bf6e78b990c" scrolling="no" title="Facebook Social Plugin" class="fb_ltr" src="https://www.facebook.com/plugins/comments.php?api_key=&amp;channel_url=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D42%23cb%3Df1c6c1f862431a4%26domain%3Ddenledphilips.net%26origin%3Dhttp%253A%252F%252Fdenledphilips.net%252Ff1787bd7692f3e%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fdenledphilips.net%2Fbong-den-bulb-philips-10w-thuy-tinh-dim.html&amp;locale=vi_VN&amp;numposts=10&amp;sdk=joey&amp;version=v2.0&amp;width=700" style="border: none; overflow: hidden; height: 173px; width: 700px;"></iframe></span></fb:comments>
                                
                                <!--fb-->
                            </div> 
                        </div>                                                      
                    </div>  
</div>                                         
        </div>    
<div id="nhanxet">
    <div id="nhanxet_top">
        <p>Nhận xét về sản phẩm</p>
        
    </div>  
    <div id="nhanxet_main">
        <div class="fb-comments fb_iframe_widget fb_iframe_widget_fluid" data-href="http://denledphilips.net/bong-den-bulb-philips-10w-thuy-tinh-dim.html" data-width="100%" data-numposts="5" fb-xfbml-state="rendered"><span style="height: 173px;"><iframe id="f15c6afcc46bea4" name="f1d8d43c1a97cac" scrolling="no" title="Facebook Social Plugin" class="fb_ltr fb_iframe_widget_lift" src="https://www.facebook.com/plugins/comments.php?api_key=&amp;channel_url=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D42%23cb%3Df1c4e2496b4419c%26domain%3Ddenledphilips.net%26origin%3Dhttp%253A%252F%252Fdenledphilips.net%252Ff1787bd7692f3e%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fdenledphilips.net%2Fbong-den-bulb-philips-10w-thuy-tinh-dim.html&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v2.0&amp;width=100%25" style="border: none; overflow: hidden; height: 173px; width: 100%;"></iframe></span></div>
        <div id="danggia_sao">
            <label>Đánh giá:</label>
            <p class="list_shor" id="sao" style="padding-left:0px;background:none">
                                                    <span class="star-rating-control"><div role="text" aria-label="" class="star-rating rater-0 star star-rating-applied star-rating-live star-rating-on"><a title="1">1</a></div><div role="text" aria-label="" class="star-rating rater-0 star star-rating-applied star-rating-live star-rating-on"><a title="2">2</a></div><div role="text" aria-label="" class="star-rating rater-0 star star-rating-applied star-rating-live star-rating-on"><a title="3">3</a></div><div role="text" aria-label="" class="star-rating rater-0 star star-rating-applied star-rating-live star-rating-on"><a title="4">4</a></div><div role="text" aria-label="" class="star-rating rater-0 star star-rating-applied star-rating-live star-rating-on"><a title="5">5</a></div></span><input name="star2" type="radio" value="1" class="star star-rating-applied" style="display: none;">
                                        <input name="star2" type="radio" value="2" class="star star-rating-applied" style="display: none;">
                                        <input name="star2" type="radio" value="3" class="star star-rating-applied" style="display: none;">
                                        <input name="star2" type="radio" value="4" class="star star-rating-applied" style="display: none;">
                                        <input name="star2" type="radio" value="5" class="star star-rating-applied" checked="checked" style="display: none;">
                                    <span id="soluot">(1 bình chọn)</span>
               
                <br clear="all">
                <script type="text/javascript">
				    jQuery(document).ready(function(){
				        jQuery('.star-rating').click(function(){
							 var sao=$(this).children('a').attr('title');
                             jQuery.ajax({
                                cache: false,
                                type:"POST",
								
                                data: { sao: sao},
                                url: "http://denledphilips.net/sanpham/sao/322",
                                success:function(html){
									console.log(html);
								    jQuery("#sao").html(html);
                                }
						      });
		                  });
				});
				</script>
            </p>
        </div>
        <!--<div id="listorder">
        <form name="dathangsp" id="dathangsp" method="post" action="">
            <input type="hidden" name="id" id="id" value="322" />
        <table>
            <tr>
                <td><label>Họ tên&nbsp;<span>(*)</span></label>&nbsp;</td>
            </tr>
            <tr>
                <td><input type="text" name="hoten" id="hoten" value="" /></td>
            </tr>
            <tr>
                <td><label>Email&nbsp;<span>(*)</span></label>&nbsp;</td>        
            </tr>
            <tr>
                <td><input type="text" name="email" id="email" value="" /></td>
            </tr>
            <tr>
                <td><label>Điện thoại&nbsp;<span>(*)</span></label></td>
            </tr>
            <tr>
                <td><input type="text" name="dienthoai" id="dienthoai" value="" /></td>
            </tr>
            <tr>
                <td><label>Tiêu đề&nbsp;<span>(*)</span></label></td>
            </tr>
            <tr>
                <td><input type="text" name="tieude" id="tieude" value="" /></td>
            </tr>
            <tr>
                <td><label>Bình luận&nbsp;<span>(*)</span></label></td>
            </tr>
            <tr>
                <td><textarea cols="50" rows="8" name="binhluan" id="binhluan"></textarea></td>
            </tr>
            <tr>
                <td>
                    <div id="thongtinbatbuoc">
                        * Thông tin bắt buộc
                    </div>
                    <div id="submit_div">
                        <input type="submit" name="submit" value="Gửi bình luận" />
                    </div>
                </td>
            </tr>
        </table>
        </form>
        </div>-->
        <!--<script type="text/javascript">
            jQuery(document).ready(function(){
                function checkMail(mail){
                    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;								
                    if (!filter.test(mail)) return false;								
                        return true;								
                }
                jQuery("#dathangsp").submit(function(){
                    var id=jQuery("#id").val();
                    var hoten=jQuery("#hoten").val();
                    var email=jQuery("#email").val();
                    var dienthoai=jQuery("#dienthoai").val();
                    var tieude=jQuery("#tieude").val();                                                             
                    var binhluan=jQuery("#binhluan").val();
                    if(hoten=='')
                    {
                        alert("Họ tên không để trống");
                        return false;
                    }                                         
                    if(!checkMail(email))
                    {
                        alert("Email không đúng định dạng (xyz@abc.de)");
                        return false;
                    }
                    if(dienthoai=='')
                    {
                        alert("Điện thoại không để trống");
                        return false;
                    }
                    if(tieude=='')
                    {
                        alert("Tiêu đề không để trống");
                        return false;
                    }
                    if(binhluan=='')
                    {
                        alert("Bình luận không để trống");
                        return false;
                    }
                    if(binhluan.length < 15)
                    {
                        alert("Bình luận phải nhiề hơn 15 ký tự");
                        return false;    
                    }
                    else
                    {                        
                        jQuery.ajax({
                            cache:false,
                            type:"POST",
                            data:{id : id,hoten : hoten,email : email,dienthoai : dienthoai,tieude : tieude,binhluan : binhluan},
                            url:"http://denledphilips.net/sanpham/dodathang", 
                            success:function(html){
                                jQuery("#listorder").html(html);                                
                            }                                                          
                        });     
                    }
                    return false;
                });		    
            });            	
        </script>-->                 
    </div>      
</div>  
<!--<div id="binhluan_ct">
    <div id="binhluan_top" style="position:relative;">
        <p>Bình luận về sản phẩm</p>
        <a href="http://denledphilips.net/sanpham/binhluanall/322/bong-den-bulb-philips-w-thuy-tinh-dim.html" style="position:absolute;right:10px;top:7px;">Xem tất cả</a>
    </div>
    <div id="binhluan_main">
                <p style="text-align:center;margin-top:10px;">Hiện chưa có bình luận nào</p>
               
        <div class="clear"></div>
    </div>
</div>-->                                            
        <div id="tags">
            <span><i class="glyphicon glyphicon-tags"></i>&nbsp;&nbsp;Từ khóa</span>
                                            <a href="http://denledphilips.net/tag/getsanphamByTag/57" title=""> </a>, 
                                    </div>                
    </div>
    </div>
    </div>
</div><!--End .danhmucpro-->
    <div class="box">
    <div class="box_top1">  
        <div class="box_top1_l">                    
            <p class="cufont_text">Sản phẩm cùng loại</p>
        </div>
        <div class="box_top1_r"></div>
        <div class="clear"></div>
    </div>            
    <div class="box_main">                                              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-fila-4-3-40w-e27-a60-st64.html" class="sanpham_item_img" title="Bóng đèn FILA 4.3-40W E27 A60/ST64"><img src="upload/bong-den-LED-FILA-4-3-40W-E27-A60-ST64_thumb.jpg" title="Bóng đèn FILA 4.3-40W E27 A60/ST64" alt="Bóng đèn FILA 4.3-40W E27 A60/ST64"></a>
                                <a href="http://denledphilips.net/bong-den-fila-4-3-40w-e27-a60-st64.html" class="sanpham_item_name" title="Bóng đèn FILA 4.3-40W E27 A60/ST64">Bóng đèn FILA 4.3-40W E27 A60/ST64</a>
                
                
                                           		<p style="color:#549b01;" class="sanpham_item_gia_km">
                                <span>
                                181.000&nbsp;VNĐ                                </span>
                                </p>
                                                         
                         

                <div class="order_buy">
                    <a title="Bóng đèn FILA 4.3-40W E27 A60/ST64" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/418/bong-den-fila-.-w-e-ast.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-fila-2-3-25w-e27-st64.html" class="sanpham_item_img" title="Bóng đèn FILA 2,3-25W E27 ST64"><img src="upload/bong-den-LED-FILA-2-3-25W-E27-ST64_thumb.jpg" title="Bóng đèn FILA 2,3-25W E27 ST64" alt="Bóng đèn FILA 2,3-25W E27 ST64"></a>
                                <a href="http://denledphilips.net/bong-den-fila-2-3-25w-e27-st64.html" class="sanpham_item_name" title="Bóng đèn FILA 2,3-25W E27 ST64">Bóng đèn FILA 2,3-25W E27 ST64</a>
                
                
                                           		<p style="color:#549b01;" class="sanpham_item_gia_km">
                                <span>
                                181.000&nbsp;VNĐ                                </span>
                                </p>
                                                         
                         

                <div class="order_buy">
                    <a title="Bóng đèn FILA 2,3-25W E27 ST64" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/417/bong-den-fila-w-e-st.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/den-led-bulb-master-dt-9-60w-e27-a60-cl.html" class="sanpham_item_img" title="Đèn LED Bulb Master DT 9-60w E27 A60 CL"><img src="upload/den-LED-Bulb-Master-DT-9-60w-E27-A60-CL_thumb.jpg" title="Đèn LED Bulb Master DT 9-60w E27 A60 CL" alt="Đèn LED Bulb Master DT 9-60w E27 A60 CL"></a>
                                <a href="http://denledphilips.net/den-led-bulb-master-dt-9-60w-e27-a60-cl.html" class="sanpham_item_name" title="Đèn LED Bulb Master DT 9-60w E27 A60 CL">Đèn LED Bulb Master DT 9-60w E27 A60 CL</a>
                
                
                                           		<p style="color:#549b01;" class="sanpham_item_gia_km">
                                <span>
                                400.000&nbsp;VNĐ                                </span>
                                </p>
                                                         
                         

                <div class="order_buy">
                    <a title="Đèn LED Bulb Master DT 9-60w E27 A60 CL" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/414/den-led-bulb-master-dt-w-e-a-cl.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item" style="margin-right:0 !important;">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-ledbulb-scene-switch-9-5-60w-philips.html" class="sanpham_item_img" title="Bóng đèn ledbulb Scene Switch 9.5-60W Philips"><img src="upload/bong-den-led-bulb-scene-switch-9-5-60w-e27-philips_thumb.jpg" title="Bóng đèn ledbulb Scene Switch 9.5-60W Philips" alt="Bóng đèn ledbulb Scene Switch 9.5-60W Philips"></a>
                                <a href="http://denledphilips.net/bong-den-ledbulb-scene-switch-9-5-60w-philips.html" class="sanpham_item_name" title="Bóng đèn ledbulb Scene Switch 9.5-60W Philips">Bóng đèn ledbulb Scene Switch 9.5-60W Philips</a>
                
                
                                                <p class="sanpham_item_gia">
                                290.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>278.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-4%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn ledbulb Scene Switch 9.5-60W Philips" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/402/bong-den-ledbulb-scene-switch-.-w-philips.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-mini-bulb-philips-3w.html" class="sanpham_item_img" title="Bóng đèn Mini bulb Philips 3W"><img src="upload/den-led-mini-bup-3w-philips_thumb.jpg" title="Bóng đèn Mini bulb Philips 3W" alt="Bóng đèn Mini bulb Philips 3W"></a>
                                <a href="http://denledphilips.net/bong-den-mini-bulb-philips-3w.html" class="sanpham_item_name" title="Bóng đèn Mini bulb Philips 3W">Bóng đèn Mini bulb Philips 3W</a>
                
                
                                                <p class="sanpham_item_gia">
                                53.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>49.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-7%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn Mini bulb Philips 3W" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/353/bong-den-mini-bulb-philips-w.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-led-bulb-philips-4w.html" class="sanpham_item_img" title="Bóng đèn Led bulb Philips 4W"><img src="upload/Bong-den-led-bup-Philips-5w1_thumb.jpg" title="Bóng đèn Led bulb Philips 4W" alt="Bóng đèn Led bulb Philips 4W"></a>
                                <a href="http://denledphilips.net/bong-den-led-bulb-philips-4w.html" class="sanpham_item_name" title="Bóng đèn Led bulb Philips 4W">Bóng đèn Led bulb Philips 4W</a>
                
                
                                                <p class="sanpham_item_gia">
                                64.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>53.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-17%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn Led bulb Philips 4W" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/352/bong-den-led-bulb-philips-w.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-led-bulb-philips-18w.html" class="sanpham_item_img" title="Bóng đèn Led bulb Philips 18W"><img src="upload/Bong-den-led-bup-Philips-5w_thumb.jpg" title="Bóng đèn Led bulb Philips 18W" alt="Bóng đèn Led bulb Philips 18W"></a>
                                <a href="http://denledphilips.net/bong-den-led-bulb-philips-18w.html" class="sanpham_item_name" title="Bóng đèn Led bulb Philips 18W">Bóng đèn Led bulb Philips 18W</a>
                
                
                                                <p class="sanpham_item_gia">
                                320.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>299.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-6%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn Led bulb Philips 18W" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/351/bong-den-led-bulb-philips-w.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item" style="margin-right:0 !important;">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-led-bulb-philips-7w.html" class="sanpham_item_img" title="Bóng đèn Led bulb Philips 7W"><img src="upload/Bong-den-led-bup-Philips-7w_thumb.jpg" title="Bóng đèn Led bulb Philips 7W" alt="Bóng đèn Led bulb Philips 7W"></a>
                                <a href="http://denledphilips.net/bong-den-led-bulb-philips-7w.html" class="sanpham_item_name" title="Bóng đèn Led bulb Philips 7W">Bóng đèn Led bulb Philips 7W</a>
                
                
                                                <p class="sanpham_item_gia">
                                115.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>88.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-23%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn Led bulb Philips 7W" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/350/bong-den-led-bulb-philips-w.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
                     <div class="col-xs-12 col-sm-4 col-md-3">          
             <div class="sanpham_item">
                                <a rel="nofollow" href="http://denledphilips.net/bong-den-led-bulb-philips-7-5w.html" class="sanpham_item_img" title="Bóng đèn Led bulb Philips 7.5W"><img src="upload/Bong-den-led-bup-Philips-7,5w_thumb.jpg" title="Bóng đèn Led bulb Philips 7.5W" alt="Bóng đèn Led bulb Philips 7.5W"></a>
                                <a href="http://denledphilips.net/bong-den-led-bulb-philips-7-5w.html" class="sanpham_item_name" title="Bóng đèn Led bulb Philips 7.5W">Bóng đèn Led bulb Philips 7.5W</a>
                
                
                                                <p class="sanpham_item_gia">
                                125.000&nbsp;VNĐ                                </p>
                            <p style="color:#549b01;" class="sanpham_item_gia_km"><span>115.000&nbsp;VNĐ                            </span>
                            </p>                                 
                                                         
                                                    <div class="sanpham_giamgia"><span>-8%</span></div>
                             

                <div class="order_buy">
                    <a title="Bóng đèn Led bulb Philips 7.5W" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/349/bong-den-led-bulb-philips-.w.html">Mua ngay</a>
                </div>                                                                    
             </div>  </div>              
             
            <div class="clear"></div>                                                                           
    </div>   
</div>
<br>
<br>
<style>
.product-detail table{
	width:100% !important;
}
.product-detail img{
	width:100% !important;
	height: 100% !important;
}
</style>                <div class="clear"></div>
            </div>
@endsection
