<script type="text/javascript">
            function MM_jumpMenu(targ, selObj, restore) { //v3.0
                eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value + "'");
                if (restore) selObj.selectedIndex = 0;
            }
</script>
<p id="rtrangchu" style="    text-align: center;
	background-color: #6c9739;
	padding: 5px;
	margin: 0 15px;
	margin-bottom: 10px;"><a style="color:#fff;font-weight:bold;" href="<?php echo URL::to('/');?>">Trang chủ</a>
</p>
<div id="content_top">
	<div id="danhmucmenu">
		<ul id="menu_left">
			<?php if(isset($listCate)){ ?>
			<?php foreach($listCate as $cateInfo){ ?>
			<li>
				<h4><a href="<?php echo URL::to('/').'/'.$cateInfo['cate_rewrite'];?>.html" title="ĐÈN DOWNLIGHT ÂM TRẦN "><?php echo $cateInfo['cate_name'];?> <?php if($cateInfo['subCate']){ ?><i class="fa fa-sort-desc" aria-hidden="true"></i><?php } ?></a></h4>
				<?php if($cateInfo['subCate']){ ?>
				<ul class="menu_left_sub">
					<?php foreach($cateInfo['subCate'] as $subCateInfo){ ?>
					<li>
						<a href="<?php echo URL::to('/').'/'.$subCateInfo->cate_rewrite;?>.html"><?php echo $subCateInfo->cate_name; ?></a>
					</li>
					<?php } ?>
					
				</ul>
				<?php } ?>
			</li>
			<?php } } ?>
		</ul>
		<script type="text/javascript">
			$(document).ready(function () {
				$('#menu_left > li').hover(function () {
					$(this).children('.menu_left_sub').css('display', 'block');
					$(this).children('.sub-menu').stop().show(400);    
				}, function () {
					$(this).children('.menu_left_sub').css('display', 'none');
				});
			});
		</script>
	</div>
	<div id="slider">
		<div class="owl-carousel" style="height:100%;">

			<div>
				<a href="" target="_blank" title="den led philips"><img src="upload/den-led-philips-banner2.png" title="den led philips" alt="den led philips" />
				</a>
			</div>

			<div>
				<a href="" target="_blank" title="các loại đèn led philips"><img src="upload/den-led-philips-banner-1.png" title="các loại đèn led philips" alt="các loại đèn led philips" />
				</a>
			</div>

			<div>
				<a href="" target="_blank" title="lịch sử phát triển của bóng đèn"><img src="upload/phat-trien-den-led-philips.png" title="lịch sử phát triển của bóng đèn" alt="lịch sử phát triển của bóng đèn" />
				</a>
			</div>

		</div>
	</div>
	<div class="clear"></div>
</div>