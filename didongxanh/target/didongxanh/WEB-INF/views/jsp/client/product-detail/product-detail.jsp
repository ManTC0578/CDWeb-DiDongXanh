<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="<c:url value="${product.img_Main }"/>" alt="">
						</div>
						<div class="product__details__pic__slider owl-carousel">
							<img data-imgbigurl="<c:url value="${product.img_1 }"/>"
								src="<c:url value="${product.img_1 }"/>" alt=""> <img
								data-imgbigurl="<c:url value="${product.img_2 }"/>"
								src="<c:url value="${product.img_2 }"/>" alt=""> <img
								data-imgbigurl="<c:url value="${product.img_3 }"/>"
								src="<c:url value="${product.img_3 }"/>" alt="">

						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-5">
					<div class="product__details__text">
						<h3>${product.name}</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<div class="product__details__price">$50.00</div>
						<div class="linked" style="display: flex; flex-wrap: wrap;">

							<c:forEach items="productDetail.spec_proDetail" var="specs">
								<c:forEach items="specs.specDetails" var="spec">
									<a
										style="position: relative; background: #fff; border: 1px solid #ddd; -moz-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); -webkit-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; width: calc(( 100%/ 3)- 10px); text-align: center; padding: 5px; margin-right: 10px; margin-bottom: 10px; cursor: pointer; display: flex; flex-direction: column; justify-content: center; color: #d70018; text-decoration: none;"
										title="iPhone 11 Pro 512GB Chính hãng"> <span> <i
											style="color: #000; font-style: italic;"></i>
									</span> <strong
										style="font-size: 14px; display: block; color: #e10c00; font-weight: 700;">
											31.000.000 vnd</strong>
									</a>
								</c:forEach>

							</c:forEach>



						</div>



						<div>
							<strong style="color: #2f2f2f; font-weight: 500;"><i>Chọn
									màu để xem giá và chi nhánh có hàng</i></strong>

						</div>

						<div style="margin-top: 2px;">
							<ul
								style="margin-top: 0; padding-left: 50px; display: block; list-style: none;"
								class="col-md-12">
								<c:forEach items="${productDetail}" var="p_c">

									<li class="col-md-4"
										style="margin-right: 2px; margin-bottom: 5px; display: inline-block; padding-left: 5px; border-radius: 5px; border: solid 1px #e11b1e; width: 150px; background-color: rgba(238, 238, 238, .25);">
										<a style="color: #d70018; text-decoration: none;"
										data-toggle="tooltip" title="${p_c.color_proDetail.name }">
											<label
											style="color: #000; position: relative; cursor: pointer; opacity: 1; max-width: 100%;">
												<span style="color: #000; float: left; width: 100%;">${p_c.color_proDetail.name }</span>
												<span style="color: #d70018;">${p_c.price} ₫</span>
										</label>
									</a>
									</li>

								</c:forEach>

								<li class="col-md-4"
									style="background: #eee; margin-right: 2px; display: inline-block; margin-bottom: 5px; padding-left 5px; border-radius: 5px; border: solid 1px #eee; width: 150px;">
									<a href="dfsdf" style="color: #d70018; text-decoration: none;"
									data-toggle="tooltip" title="Tạm hết hàng"> <label
										style="color: #000; position: relative; cursor: not-allowed !important; opacity: .5;">
											<span style="color: #000; float: left; width: 100%;">Cam</span>
											<span style="color: #d70018;">14.990.000 ₫</span>
									</label>
								</a>
								</li>


							</ul>
						</div>

					</div>
				</div>
				<!-- hien thi chi nhánh -->
				<div class="col-lg-3 col-md-3">
					<div style="line-height: 30px;">
						<strong
							style="display: block; width: 100%; font-weight: 600; background-color: #f7f7f7; float: left; text-align: center; text-transform: uppercase; border: 1px #eee solid; line-height: 40px; color: #3c3d41;">
							Hiện 1 cửa hàng có sẵn sản phẩm </strong> <strong
							style="font-weight: 600;"> Cửa hàng còn hàng (Bấm xem
							dẫn đường):</strong>

					</div>

					<ul class="cpsscroll"
						style="display: block; width: 100%; float: left; border-top: none; list-style: none; border-bottom: none; margin-top: 10px; background: #f7f7f7;">

						<li
							style="display: list-item; text-align: -webkit-match-parent; margin-top: 2px;">
							<a href="dfsd" style="background-color: transparent;">136
								Nguyễn Thái Học, P. Phạm Ngũ Lão, Q. 1</a>
						</li>

					</ul>

				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Mô
									tả</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">Thông tin</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Sự miêu tả chi tiết iPhone 11 Pro Max: Chiếc
										smartphone đỉnh nhất 2019?</h6>
									<p>${product.description}</p>

								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Thông tin sản phẩm</h6>
									<p>Chi tiết cấu hình iPhone 11 Pro Max</p>
									Như vậy thì bộ ba iPhone 11, iPhone 11 Pro và iPhone 11 Pro Max
									đã chính thức được trình làng với nhiều thông tin hết sức thú
									vị.
								</div>

							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>Vestibulum ac diam sit amet quam vehicula elementum sed
										sit amet dui. Pellentesque in ipsum id orci porta dapibus.
										Proin eget tortor risus. Vivamus suscipit tortor eget felis
										porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Donec rutrum congue leo eget
										malesuada. Vivamus suscipit tortor eget felis porttitor
										volutpat. Curabitur arcu erat, accumsan id imperdiet et,
										porttitor at sem. Praesent sapien massa, convallis a
										pellentesque nec, egestas non nisi. Vestibulum ac diam sit
										amet quam vehicula elementum sed sit amet dui. Vestibulum ante
										ipsum primis in faucibus orci luctus et ultrices posuere
										cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
										ullamcorper sit amet ligula. Proin eget tortor risus.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- Product Details Section End -->

	<!-- Related Product Section Begin -->
	<section class="related-product">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related__product__title">
						<h2>Related Product</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="img/product/product-1.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="img/product/product-2.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="img/product/product-3.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="img/product/product-4.jpg">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>