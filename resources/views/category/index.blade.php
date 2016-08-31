@extends('app')
@section('title')
{{$cate_info->cate_name}}
@stop
@section('content')
<div class="col-xs-12 col-sm-12 col-md-9">
	<?php if(isset($listProducts)) { ?>
	<?php foreach ($listProducts as $productInfo) { ?>
	<?php if(isset($productInfo['products'])) { ?>
	<div class="box">
		<div class="box_top1"> 
			<div class="box_top1_l">               
				<h1>
					<a class="cufont_text" href="http://denledphilips.net/den-tuyp-led-102.html"><?php echo $productInfo['cate_name'];?></a>
				</h1>  
			</div>
			<div class="box_top1_r"></div>  
			<div class="clear"></div>     
		</div>
		
		<div class="box_sanpham_main">                
			<?php if(isset($productInfo['products'])) { ?>
				<?php foreach ($productInfo['products'] as $products) { ?>
			<div class="col-xs-12 col-sm-4 col-md-3">   
				
                <div class="sanpham_item" style="border: 2px solid rgb(230, 230, 230);">
					
					<a rel="nofollow" href="http://denledphilips.net/bong-den-led-tuyp-master-t8-philips-1m2.html" class="sanpham_item_img" title="Bóng đèn Led Tuýp Master T8 Philips 1m2"><img src="<?php echo URL::to('/').'/uploads/products/thumb/'.$products->product_image; ?>" title="Bóng đèn Led Tuýp Master T8 Philips 1m2" alt="Bóng đèn Led Tuýp Master T8 Philips 1m2"></a>
					<a href="http://denledphilips.net/bong-den-led-tuyp-master-t8-philips-1m2.html" class="sanpham_item_name" title="Bóng đèn Led Tuýp Master T8 Philips 1m2">Bóng đèn Led Tuýp Master T8 Philips 1m2</a>

					<p class="sanpham_item_gia">
						475.000&nbsp;VNĐ                                </p>
					<p style="color:#549b01;" class="sanpham_item_gia_km"><span>455.000&nbsp;VNĐ                            </span>
					</p>                                 

					<div class="sanpham_giamgia"><span>-4%</span></div>
					

					<div class="order_buy">
						<a title="Bóng đèn Led Tuýp Master T8 Philips 1m2" rel="nofollow" href="http://denledphilips.net/sanpham/dathang/310/bong-den-led-tuyp-master-t-philips-m.html">Mua ngay</a>
					</div>  
					

                </div><!--End .sanpham_item-->   
				
				
			</div>   
			<?php } } ?>
			<div class="clear"></div>
			<div style="padding:10px;"></div>
			<div class="clear"></div>
			<br>
			<div id="show">
				<a href="#" class="show">Infomation</a>
			</div>
			<div class="theh_item">
                <b>Thông tin về sản phẩm <?php echo $productInfo['cate_name'];?> </b>
                <p style="text-align: center;">
					&nbsp;</p>
				<h2 style="text-align: center;">
					<span style="font-family: 'Times New Roman', Times, serif;">Đèn led tuýp</span></h2>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					&nbsp;</p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Bóng <a href="http://denledphilips.net/den-tuyp-led-102.html"><strong>đèn tuýp led</strong></a> hay đèn led tube là giải pháp chiếu sáng sinh thái cung cấp ánh sáng hoàn hảo bằng nguồn sáng LED, thay thế đèn huỳnh quang truyền thống mang lại hiệu quả cao.</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					&nbsp;</p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-family: 'Times New Roman', Times, serif;"><span style="font-size: 18px;"><span style="color:black;">Đèn tuýp là những bóng đèn dài quá quen thuộc với mọi người, để chiếu sáng là chủ yếu, kết cấu bóng dài giúp dải sáng rộng hơn và đều hơn, chỉ với 1 bóng tuýp có thể thay thế 2 tới 3 bóng đèn búp thông thường. Hiện nay người ta mới áp dụng công nghệ led vào bóng tuýp vì thế vẫn còn rất nhiều người vẫn còn lạ lẫm bóng đèn tuýp led với bóng đèn tuýp huỳnh quang truyền thống, vì đèn tuýp đơn thuần đã ăn sâu vào tâm thức của người dân Việt. Vời khả năng tiết kiệm 50% tuổi thọ cao hơn gấp 5 tới 7 lần bóng tuýp huỳnh quang nhưng rào cản lớn nhất của bóng tuýp led là giá thành, nếu chúng ta tính toán giá trị sử dụng với số tiền thì việc sử dụng đèn tuýp led chắc chắn sẽ mang lại lợi ích và tiết kiệm hơn.</span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					&nbsp;</p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); font-weight: 700; font-style: italic; vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Những ưu điểm nổi bật của LEDtube:</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Với đèn huỳnh quang chỉ sử dụng trong 5.000 giờ chiếu sáng thì LED tube có thể phát sáng trong 25.000 giờ, giúp bạn không phải thay bóng trong vòng 8-10 năm, tiết kiệm chi phí thay mới và tối ưu hóa thời gian phát sáng.</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;"><a href="http://denledphilips.net/den-tuyp-led-102.html"><strong>Đèn led tuýp</strong></a> phát sáng trực tiếp bằng dòng electron dịch chuyển trong lớp bán dẫn phát ra năng lượng dưới dạng ánh sáng nhìn thấy, màu sắc chính xác và không gây chói lóa cho mắt.</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Đèn tuýp led phát sáng không cần tăng phô cơ như đèn huỳnh quang, tránh tiêu hao điện năng. Với công nghệ LED hiện đại chỉ cần một bóng đèn công suất 10-20W có thể thay thế các bóng đèn huỳnh quang 25-36W, phát sáng ngay lập tức, không phát ra tiếng kêu khó chịu và giúp tiết kiệm điện năng gấp 2 lần, </span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Đèn tuýp LED là sản phẩm xanh, sự lựa chọn tin cậy cho xã hội phát triển bền vững. Khác với đèn huỳnh quang, <a href="http://denledphilips.net/"><strong>bóng đèn led</strong></a> không chứa thủy ngân, không phát ra tia hồng ngoại, từ ngoại an toàn cho tài sản, sức khỏe và môi trường sống.</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					<span style="font-size: 18px;"><span style="font-family: 'Times New Roman', Times, serif;"><span id="docs-internal-guid-25da6470-1fc5-0201-30c0-84302bfa09b8"><span style="color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Hãy lựa chọn nguồn sáng LED cho xã hội tương lai phát triển bền vững, xanh – sạch – đẹp.</span></span></span></span></p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					&nbsp;</p>
				<p dir="ltr" style="line-height:1.3800000000000001;margin-top:0pt;margin-bottom:10pt;text-indent: 28.35pt;text-align: justify;">
					&nbsp;</p>
				<h2 style="text-align: center;">
					<span style="font-family: 'Times New Roman', Times, serif;"><?php echo $productInfo['cate_name'];?></span></h2>
				<div>
					&nbsp;</div>
            </div>    

			<br>    
			
		</div>
		<div class="clear"></div>
    </div>
	<div class="clear"></div>
	<?php } } } ?>
</div>
<style>
	.theh_item{
		display: none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('.show').click(function(){
			$('.theh_item').show();
		});
	});
</script>
@endsection