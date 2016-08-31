<div id="bg_top">
	<div id="top" class="container">
		<div class="col-xs-6 col-sm-2 col-md-2" style="    padding: 0;">
			<div id="delivery">
				Đổi trả lại hàng <span>trong 15 ngày</span>
			</div>
		</div>
		<div class="col-xs-6 col-sm-2 col-md-2" style="    padding: 0;">
			<div id="baohanh">
				Bảo hành <span>tới 2 năm</span>
			</div>
		</div>
		<div class="col-xs-6 col-sm-2 col-md-2" style="    padding: 0;">
			<div id="payment">
				Thanh toán<span>khi giao hàng</span>
			</div>
		</div>
		<div class="col-xs-6 col-sm-3 col-md-3" style="    padding: 0;">
			<div id="transport">
				Miễn phí<span>vận chuyển nội thành</span>
			</div>
		</div>
		<div class="col-xs-6 col-sm-1 col-md-1" style="    padding: 0;">
			<div id="hotline">
				Hotline
				<span>0942883579</span>
			</div>
		</div>
		<div class="col-xs-6 col-sm-2 col-md-2" style="    padding: 0;">
			<div id="fb_go">
				<div style="padding-top:4px;" class="fb-like" data-href="http://denledphilips.net/" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
<!--End #bg_top-->
<div id="header" class="container">
	<div id="header_all">
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div id="logo">
				<a rel="nofollow" href="<?php echo URL::to('/').'/';?>" title="Công ty TNHH công nghệ và thương mại MegaLine"><img src="images/logo.png" title="Công ty TNHH công nghệ và thương mại MegaLine" alt="Công ty TNHH công nghệ và thương mại MegaLine" />
				</a>
				<p>Địa chỉ:&nbsp;
				<p><strong>Miền Bắc:</strong> Số 28, Ngõ 208, Đường Giải Phóng, Phường Phương Liệt, Quận Thanh Xuân, Hà Nội
					<br>
					<br><strong>Miền Nam:</strong> 273/21/1 Tô Hiến Thành, Phường 13, Quận 10, Hồ Chí Minh</p>
			</div>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div id="r-right">
				<div class="col-xs-12 col-sm-9 col-md-9" style="padding:0;">
					<div id="search">
						<form name="frmsearch" method="post" action="http://denledphilips.net/site/search">
							<div style="float:left;">
								<input type="text" name="ten" id="ten" value="Tìm kiếm sản phẩm" onblur="if ('' === this.value) {
                                                this.value = 'Tìm kiếm sản phẩm';
                                            }" onfocus="if ('Tìm kiếm sản phẩm' === this.value) {
                                                        this.value = '';
                                                    }" />
							</div>
							<div>
								<input type="submit" name="submit" value="Tìm kiếm" />
							</div>
						</form>
						<script type="text/javascript">
							jQuery(document).ready(function () {
								jQuery("#search").submit(function () {
									if ($("#ten").val() == "" || $("#ten").val() == "Tìm kiếm sản phẩm") {
										alert('Bạn chưa nhập từ khóa tìm kiếm');
										$("#ten").focus();
										return false;
									} else {
										return true;
									}
								});
							});
						</script>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3" style="padding:0;">
					<div id="cart">
						<a rel="nofollow" href="http://denledphilips.net/sanpham/giohang">Giỏ hàng&nbsp;<span id="sosp">(
								0)</span></a>
					</div>
				</div>
			</div>
		</div>

		<div class="clear"></div>
	</div>
</div>