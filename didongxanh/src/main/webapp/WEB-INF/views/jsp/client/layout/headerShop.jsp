<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.header {
    width: 1200px;
    margin: auto;
    height: 53px;
}
body {
    font-family: Sans-serif!important;
    font-size: 12px;
    color: #3c3d41;
    background-color: rgba(238,238,238,.25);
    line-height: 22px;
}
.table-display {
    display: table;
    box-sizing: border-box;
}
.table-display-cell {
    display: table-cell;
    box-sizing: border-box;
    vertical-align: top;
}
.nav-container {
    padding-left: 0;
}
#nav {
    margin: 0;
    padding: 0;
}
ul, ol {
    list-style: none;
}
#nav li {
    float: left;
}

#nav li {
    box-sizing: border-box;
}
#nav li {
    position: relative;
    text-align: left;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#nav li.active a, #nav a:hover, #nav li.over a {
    color: #e11b1e;
}
#nav li ul.horizental a.level1 {
    border-bottom: solid 1px #e11b1e;
    color: #393d3f;
    float: none;
    display: block;
    text-align: left;
    padding-left: 0;
    font-weight: 700;
    font-size: 11px;
    text-transform: uppercase;
}
#nav li a {
    text-transform: uppercase;
    text-align: center;
    line-height: 17px;
}
#nav a {
    color: #3c3d41;
    float: left;
    padding: 8px 4px 3px 5px;
}
#nav a, #nav a:hover {
    display: block;
    text-decoration: none;
    font-size: 10.5px;
}
nav li ul.horizental a.level1 {
    border-bottom: unset!important;
}
#nav li ul.level0 li a {
    padding: 5px 0;
    text-transform: none;
    color: #393d3f;
    font-size: 13px;
}
a {
    color: #d70018;
    text-decoration: none;
}
</style>
</head>
<body>

	<div class="header">
		<div class="table-display">
			<div class="table-display-cell">
				<div
					style="width: 360px; height: 53px; display: flex; align-items: center; background: #e11b1e;">
					<div class="left">
						<a href="https://cellphones.com.vn/"
							title="CellphoneS - Hệ thống bán lẻ điện thoại" class="logo"><strong>CellphoneS
								- Hệ thống bán lẻ điện thoại</strong><img
							class="cpslazy border border-white loaded"
							data-src="/media/logo/logo_cps.png" width="35" height="35"
							data-ll-status="loaded" src="/media/logo/logo_cps.png"></a>
					</div>
					<div class="left">
						<!-- Single button -->
						<div class="left" style="padding: 9px 0px;">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"
									style="padding: 6px 0px 6px 2px !important;">
									Hà Nội <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="javascript:void(0)"
										onclick="window.location.href='https://cellphones.com.vn/samsung-galaxy-a51.html?___store=hanoi&amp;___from_store=hanoi';"><i
											class="fa fa-map-marker"></i> Hà Nội</a></li>
									<li><a href="javascript:void(0)"
										onclick="window.location.href='https://cellphones.com.vn/samsung-galaxy-a51.html?___store=hochiminh&amp;___from_store=hanoi';"><i
											class="fa fa-map-marker"></i> Hồ Chí Minh</a></li>
								</ul>
							</div>
						</div>
						<form id="search_mini_form"
							action="https://cellphones.com.vn/catalogsearch/result/"
							method="get">
							<div class="form-search">
								<label for="search">Search:</label> <input id="search"
									type="text" name="q" value="" class="input-text"
									maxlength="128" onfocus="showAjaxSearchResult()" onblur=""
									autocomplete="off">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
								<div id="search_autocomplete" class="search-autocomplete"
									style="display: none;"></div>
								<script defer="">
									window
											.addEventListener(
													'DOMContentLoaded',
													function() {
														var searchForm = new Varien.searchForm(
																'search_mini_form',
																'search',
																'Tìm kiếm ...');
														searchForm
																.initAutocomplete(
																		'https://cellphones.com.vn/catalogsearch/ajax/suggest/',
																		'search_autocomplete');
													})
									function showAjaxSearchResult() {
										jQuery('#search_autocomplete').show();
									}
								</script>
							</div>
						</form>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="table-display-cell" style="width: 100%;">
				<div class="nav-container">
					<ul id="nav">
						<li class="level0 nav-1 first active parent"><a
							href="https://cellphones.com.vn/mobile.html"
							class="level0 has-children"><i class="fa fa-mobile fa-2x"></i><br>Điện
								thoại</a>
							<ul class="level0 horizental" style="width: 382px;">
								<li class="level1 nav-1-1 first parent" style=""><a
									href="https://cellphones.com.vn/mobile/apple.html"
									class="level1 has-children">Apple</a>
									<ul class="level1" style="">
										<li class="level2 nav-1-1-1 first" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-11-series.html"
											class="level2 ">iPhone 11 | 11 Pro | 11 Pro Max</a></li>
										<li class="level2 nav-1-1-2" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-xs-max.html"
											class="level2 ">iPhone XS | XS Max</a></li>
										<li class="level2 nav-1-1-3" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-x.html"
											class="level2 ">iPhone X | XR</a></li>
										<li class="level2 nav-1-1-4" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-8-8-plus.html"
											class="level2 ">iPhone 8 | 8 Plus</a></li>
										<li class="level2 nav-1-1-5" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-7-7-plus.html"
											class="level2 ">iPhone 7 | 7 Plus</a></li>
										<li class="level2 nav-1-1-6 last" style=""><a
											href="https://cellphones.com.vn/mobile/apple/iphone-se.html"
											class="level2 ">iPhone SE 2020</a></li>
									</ul></li>
								<li class="level1 nav-1-2 active" style=""><a
									href="https://cellphones.com.vn/mobile/samsung.html"
									class="level1 ">Samsung</a></li>
								<li class="level1 nav-1-3" style=""><a
									href="https://cellphones.com.vn/mobile/xiaomi.html"
									class="level1 ">Xiaomi</a></li>
								<li class="level1 nav-1-4" style=""><a
									href="https://cellphones.com.vn/mobile/oppo.html"
									class="level1 ">OPPO</a></li>
								<li class="level1 nav-1-5" style=""><a
									href="https://cellphones.com.vn/mobile/nokia.html"
									class="level1 ">Nokia</a></li>
								<li class="level1 nav-1-6" style=""><a
									href="https://cellphones.com.vn/mobile/realme.html"
									class="level1 ">Realme</a></li>
								<li class="level1 nav-1-7" style=""><a
									href="https://cellphones.com.vn/mobile/vsmart.html"
									class="level1 ">Vsmart</a></li>
								<li class="level1 nav-1-8" style=""><a
									href="https://cellphones.com.vn/mobile/asus.html"
									class="level1 ">ASUS</a></li>
								<li class="level1 nav-1-9" style=""><a
									href="https://cellphones.com.vn/mobile/huawei.html"
									class="level1 ">Huawei</a></li>
								<li class="level1 nav-1-10 parent" style=""><a
									href="https://cellphones.com.vn/mobile/hang-khac.html"
									class="level1 has-children">Hãng khác</a>
									<ul class="level1" style="">
										<li class="level2 nav-1-10-1 first" style=""><a
											href="https://cellphones.com.vn/mobile/hang-khac/pocophone.html"
											class="level2">Pocophone</a></li>
										<li class="level2 nav-1-10-2" style=""><a
											href="https://cellphones.com.vn/mobile/hang-khac/bkav-bphone.html"
											class="level2 ">BKAV Bphone</a></li>
										<li class="level2 nav-1-10-3 last" style=""><a
											href="https://cellphones.com.vn/mobile/hang-khac/sharp.html_bk"
											class="level2 ">Sharp</a></li>
									</ul></li>
								<li class="level1 nav-1-11" style=""><a
									href="https://cellphones.com.vn/mobile/dien-thoai-pho-thong.html"
									class="level1 ">Điện thoại phổ thông</a></li>
								<li class="level1 nav-1-12" style="width: 120px;"><a
									href="https://cellphones.com.vn/mobile/hang-sap-ve.html"
									class="level1 ">Tin đồn - Mới ra</a></li>
								<li class="level1 nav-1-13 last" style=""><a
									href="https://cellphones.com.vn/mobile/thucudoimoi.html"
									class="level1 ">Thu cũ - Đổi mới</a></li>
							</ul></li>
						<li class="level0 nav-2 parent"><a
							href="https://cellphones.com.vn/tablet.html"
							class="level0 has-children"><i class="fa fa-tablet fa-2x"></i><br>Tablet</a>
							<ul class="level0" style="width: 322px;">
								<li class="level1 nav-2-1 first" style=""><a
									href="https://cellphones.com.vn/tablet/ipad-pro.html"
									class="level1 ">iPad Pro</a></li>
								<li class="level1 nav-2-2" style=""><a
									href="https://cellphones.com.vn/tablet/ipad-10-2.html"
									class="level1 ">iPad 10.2</a></li>
								<li class="level1 nav-2-3" style=""><a
									href="https://cellphones.com.vn/tablet/ipad-air.html"
									class="level1 ">iPad Air</a></li>
								<li class="level1 nav-2-4" style=""><a
									href="https://cellphones.com.vn/tablet/ipad-9-7.html"
									class="level1 ">iPad 9.7</a></li>
								<li class="level1 nav-2-5" style=""><a
									href="https://cellphones.com.vn/tablet/ipad-mini.html"
									class="level1 ">iPad mini</a></li>
								<li class="level1 nav-2-6" style=""><a
									href="https://cellphones.com.vn/tablet/huawei.html"
									class="level1 ">Huawei</a></li>
								<li class="level1 nav-2-7 last" style=""><a
									href="https://cellphones.com.vn/tablet/samsung.html"
									class="level1 ">Samsung</a></li>
							</ul></li>
						<li class="level0 nav-3 parent"><a
							href="https://cellphones.com.vn/phu-kien.html"
							class="level0 has-children phu-kien-menu"><span></span>Phụ
								kiện</a>
							<ul class="level0 phu-kien-menu" style="width: 382px;">
								<li class="level1 nav-3-1 first" style=""><a
									href="https://cellphones.com.vn/phu-kien/apple.html"
									class="level1 ">Phụ Kiện Apple</a></li>
								<li class="level1 nav-3-2" style=""><a
									href="https://cellphones.com.vn/phu-kien/phu-kien-gia-dinh-thong-minh.html"
									class="level1 ">Phụ kiện nhà thông minh</a></li>
								<li class="level1 nav-3-3" style=""><a
									href="https://cellphones.com.vn/phu-kien/may-loc-khong-khi.html"
									class="level1 ">Máy lọc không khí</a></li>
								<li class="level1 nav-3-4" style=""><a
									href="https://cellphones.com.vn/phu-kien/dan-man-hinh.html"
									class="level1 ">Dán màn hình</a></li>
								<li class="level1 nav-3-5" style=""><a
									href="https://cellphones.com.vn/phu-kien/bao-da-op-lung.html"
									class="level1 ">Ốp lưng | Bao da</a></li>
								<li class="level1 nav-3-6" style=""><a
									href="https://cellphones.com.vn/phu-kien/sac-dien-thoai.html"
									class="level1 ">Cáp sạc</a></li>
								<li class="level1 nav-3-7" style=""><a
									href="https://cellphones.com.vn/phu-kien/pin-du-phong.html"
									class="level1 ">Pin dự phòng</a></li>
								<li class="level1 nav-3-8" style=""><a
									href="https://cellphones.com.vn/phu-kien/thiet-bi-mang.html"
									class="level1 ">Thiết bị mạng</a></li>
								<li class="level1 nav-3-9" style=""><a
									href="https://cellphones.com.vn/phu-kien/camera.html"
									class="level1 ">Camera</a></li>
								<li class="level1 nav-3-10" style=""><a
									href="https://cellphones.com.vn/phu-kien/chuot-ban-phim-may-tinh.html"
									class="level1 ">Chuột | Bàn Phím</a></li>
								<li class="level1 nav-3-11 last" style=""><a
									href="https://cellphones.com.vn/phu-kien/phu-kien-tien-ich.html"
									class="level1 ">Phụ kiện tiện ích</a></li>
							</ul></li>
						<li class="level0 nav-4 parent"><a
							href="https://cellphones.com.vn/do-choi-cong-nghe.html"
							class="level0 has-children do-choi-menu"><span></span>Đồng hồ</a>
							<ul class="level0 do-choi-menu" style="width: 382px;">
								<li class="level1 nav-4-1 first" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/apple-watch.html"
									class="level1 ">Apple Watch</a></li>
								<li class="level1 nav-4-2" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/samsung.html"
									class="level1 ">Samsung</a></li>
								<li class="level1 nav-4-3" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/garmin.html"
									class="level1 ">Garmin</a></li>
								<li class="level1 nav-4-4" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/xiaomi.html"
									class="level1 ">Xiaomi</a></li>
								<li class="level1 nav-4-5" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/amazfit.html"
									class="level1 ">Amazfit</a></li>
								<li class="level1 nav-4-6" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/huawei.html"
									class="level1 ">Huawei</a></li>
								<li class="level1 nav-4-7" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/fitbit.html"
									class="level1 ">Fitbit</a></li>
								<li class="level1 nav-4-8" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/vong-tay-thong-minh.html"
									class="level1 ">Vòng tay thông minh</a></li>
								<li class="level1 nav-4-9" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/dong-ho-dinh-vi-tre-em.html"
									class="level1 ">Đồng hồ định vị trẻ em</a></li>
								<li class="level1 nav-4-10 last" style=""><a
									href="https://cellphones.com.vn/do-choi-cong-nghe/day-deo-dong-ho.html"
									class="level1 ">Dây đeo đồng hồ</a></li>
							</ul></li>
						<li class="level0 nav-5 parent"><a
							href="https://cellphones.com.vn/thiet-bi-am-thanh.html"
							class="level0 has-children"><i class="fa fa-music  fa-2x"></i><br>Âm
								thanh</a>
							<ul class="level0" style="width: 322px;">
								<li class="level1 nav-5-1 first parent" style=""><a
									href="https://cellphones.com.vn/thiet-bi-am-thanh/loa.html"
									class="level1 has-children">Loa</a>
									<ul class="level1 " style="">
										<li class="level2 nav-5-1-1 first" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/loa/loa-vi-tinh.html"
											class="level2 ">Loa vi tính</a></li>
										<li class="level2 nav-5-1-2" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/loa/loa-bluetooth.html"
											class="level2 ">Loa Bluetooth</a></li>
										<li class="level2 nav-5-1-3" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/loa/loa-keo.html"
											class="level2 ">Loa kéo</a></li>
										<li class="level2 nav-5-1-4 last" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/loa/loa-tivi-soundbar.html"
											class="level2 ">Loa Tivi | Soundbar</a></li>
									</ul></li>
								<li class="level1 nav-5-2 last parent" style=""><a
									href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe.html"
									class="level1 has-children">Tai nghe</a>
									<ul class="level1 " style="">
										<li class="level2 nav-5-2-1 first" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-khong-day.html"
											class="level2 ">Tai nghe không dây</a></li>
										<li class="level2 nav-5-2-2" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-bluetooth.html"
											class="level2 ">Tai nghe Bluetooth</a></li>
										<li class="level2 nav-5-2-3" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-nhet-tai.html"
											class="level2 ">Tai nghe nhét tai</a></li>
										<li class="level2 nav-5-2-4 last" style=""><a
											href="https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/headphones.html"
											class="level2 ">Tai nghe chụp tai</a></li>
									</ul></li>
							</ul></li>
						<li class="level0 nav-6 parent"><a
							href="https://cellphones.com.vn/laptop.html"
							class="level0 has-children"><i class="fa fa-laptop fa-2x"></i><br>Laptop</a>
							<ul class="level0 horizental" style="width: 262px;">
								<li class="level1 nav-6-1 first parent" style="width: 120px;"><a
									href="https://cellphones.com.vn/laptop/mac.html"
									class="level1 has-children">MacBook</a>
									<ul class="level1 " style="width: 172px;">
										<li class="level2 nav-6-1-1 first" style=""><a
											href="https://cellphones.com.vn/laptop/mac/macbook-air.html"
											class="level2 ">MacBook Air</a></li>
										<li class="level2 nav-6-1-2 last" style=""><a
											href="https://cellphones.com.vn/laptop/mac/macbook-pro.html"
											class="level2 ">MacBook Pro</a></li>
									</ul></li>
								<li class="level1 nav-6-2" style=""><a
									href="https://cellphones.com.vn/laptop/asus.html"
									class="level1 ">Asus</a></li>
								<li class="level1 nav-6-3" style=""><a
									href="https://cellphones.com.vn/laptop/surface.html"
									class="level1 ">Microsoft Surface</a></li>
								<li class="level1 nav-6-4" style=""><a
									href="https://cellphones.com.vn/laptop/hp.html" class="level1 ">HP</a></li>
								<li class="level1 nav-6-5" style=""><a
									href="https://cellphones.com.vn/laptop/lenovo.html"
									class="level1 ">Lenovo</a></li>
								<li class="level1 nav-6-6" style=""><a
									href="https://cellphones.com.vn/laptop/dell.html"
									class="level1 ">Dell</a></li>
								<li class="level1 nav-6-7" style=""><a
									href="https://cellphones.com.vn/laptop/phu-kien.html"
									class="level1 ">Phụ kiện</a></li>
								<li class="level1 nav-6-8" style=""><a
									href="https://cellphones.com.vn/laptop/laptop-gaming-msi.html"
									class="level1 ">MSI</a></li>
								<li class="level1 nav-6-9" style=""><a
									href="https://cellphones.com.vn/laptop/tui-chong-soc-macbook.html"
									class="level1 ">Balo | Túi xách</a></li>
								<li class="level1 nav-6-10" style=""><a
									href="https://cellphones.com.vn/laptop/acer.html"
									class="level1 ">Acer</a></li>
								<li class="level1 nav-6-11 last" style=""><a
									href="https://cellphones.com.vn/laptop/thiet-bi-van-phong.html"
									class="level1 ">Thiết bị văn phòng</a></li>
							</ul></li>
						<li class="level0 nav-7 parent"><a
							href="https://cellphones.com.vn/sim-3g-4g-nghe-goi.html"
							class="level0 has-children sim-menu"><span></span>Sim Thẻ</a></li>
						<li class="level0 nav-8 parent"><a
							href="https://cellphones.com.vn/hang-cu.html"
							class="level0 has-children"><i class="fa fa-refresh fa-2x"></i><br>Hàng
								cũ</a>
							<ul class="level0" style="width: 322px;">
								<li class="level1 nav-8-1 first" style=""><a
									href="https://cellphones.com.vn/hang-cu/iphone.html"
									class="level1 ">iPhone</a></li>
								<li class="level1 nav-8-2" style=""><a
									href="https://cellphones.com.vn/hang-cu/ipad.html"
									class="level1 ">iPad</a></li>
								<li class="level1 nav-8-3" style=""><a
									href="https://cellphones.com.vn/hang-cu/apple-watch.html"
									class="level1 ">Apple Watch</a></li>
								<li class="level1 nav-8-4" style=""><a
									href="https://cellphones.com.vn/hang-cu/mac.html"
									class="level1 ">Mac</a></li>
								<li class="level1 nav-8-5" style=""><a
									href="https://cellphones.com.vn/hang-cu/samsung.html"
									class="level1 ">Samsung</a></li>
								<li class="level1 nav-8-6" style=""><a
									href="https://cellphones.com.vn/hang-cu/huawei.html"
									class="level1 ">Huawei</a></li>
								<li class="level1 nav-8-7" style=""><a
									href="https://cellphones.com.vn/hang-cu/xiaomi.html"
									class="level1 ">Xiaomi</a></li>
								<li class="level1 nav-8-8" style=""><a
									href="https://cellphones.com.vn/hang-cu/oppo.html"
									class="level1 ">OPPO</a></li>
								<li class="level1 nav-8-9" style=""><a
									href="https://cellphones.com.vn/hang-cu/realme.html"
									class="level1 ">Realme</a></li>
								<li class="level1 nav-8-10" style=""><a
									href="https://cellphones.com.vn/hang-cu/asus.html"
									class="level1 ">ASUS</a></li>
								<li class="level1 nav-8-11" style=""><a
									href="https://cellphones.com.vn/hang-cu/nokia.html"
									class="level1 ">Nokia</a></li>
								<li class="level1 nav-8-12 last" style=""><a
									href="https://cellphones.com.vn/hang-cu/vsmart.html"
									class="level1 ">Vsmart</a></li>
							</ul></li>
						<li class="level0 nav-9"><a
							href="https://cellphones.com.vn/tra-gop-menu.html"
							class="level0  tra-gop-menu"><span></span>Trả góp</a></li>
						<li class="level0 nav-10 last parent"><a
							href="https://cellphones.com.vn/sua-chua-phan-cung.html"
							class="level0 has-children sua-chua-menu"><span></span>Dịch
								vụ</a>
							<ul class="level0 sua-chua-menu" style="">
								<li class="level1 nav-10-1 first" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/pin.html"
									class="level1 ">Thay Pin</a></li>
								<li class="level1 nav-10-2" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/mat-kinh.html"
									class="level1 ">Ép kính</a></li>
								<li class="level1 nav-10-3" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/man-hinh.html"
									class="level1 ">Thay màn hình</a></li>
								<li class="level1 nav-10-4" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/ipad.html"
									class="level1 ">iPad</a></li>
								<li class="level1 nav-10-5" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/sony.html"
									class="level1 ">Sony</a></li>
								<li class="level1 nav-10-6" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/asus.html"
									class="level1 ">ASUS</a></li>
								<li class="level1 nav-10-7" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/samsung.html"
									class="level1 ">Samsung</a></li>
								<li class="level1 nav-10-8" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/lg.html"
									class="level1 ">LG</a></li>
								<li class="level1 nav-10-9" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/xiaomi.html"
									class="level1 ">Xiaomi</a></li>
								<li class="level1 nav-10-10" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/thay-sua-o-cung-laptop.html"
									class="level1 ">Thay ổ cứng Laptop</a></li>
								<li class="level1 nav-10-11" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/thay-sua-ram-laptop.html"
									class="level1 ">Thay ram laptop</a></li>
								<li class="level1 nav-10-12" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/thay-sua-pin-laptop.html"
									class="level1 ">Thay pin laptop</a></li>
								<li class="level1 nav-10-13" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/thay-sua-ban-phim-laptop.html"
									class="level1 ">Thay bàn phím laptop</a></li>
								<li class="level1 nav-10-14 last" style=""><a
									href="https://cellphones.com.vn/sua-chua-phan-cung/thay-man-hinh-laptop.html"
									class="level1 ">Thay màn hình Laptop</a></li>
							</ul></li>
						<li class="level1 nav-11"><a href="/sforum"
							class="level1 tin-tuc-sforum"><span></span>Công nghệ</a></li>

						<li class="level2 nav-12"><a
							href="/dich-vu-khach-hang-doanh-nghiep" class="level2 sale-menu"><span></span>Doanh
								nghiệp</a></li>

						<li class="level2 nav-12"><a href="/danh-sach-khuyen-mai"
							class="level2"><i class="fa fa-gift fa-2x"></i><br>Khuyến
								mại</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>