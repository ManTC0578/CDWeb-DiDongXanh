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
	<!-- Page Preloder -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">

					

					<div class="module no-item" id="no-item"
						style="text-align: center; margin-top: 50px; display: none;">
						<i class="fa fa-frown-o fa-4x"
							style="margin-bottom: 30px; font-size: 9em; display: inline-block; font: normal normal normal 30px FontAwesome; font-size: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased;"></i>
						<p
							style="font-size: 22px; font-weight: 300; display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;">Không
							có sản phẩm nào trong giỏ hàng, vui lòng tải lại trang</p>

						<a href="<c:url value="/"/>" class="btn btn-default btn-sm"
							id="backPD"
							style="margin-top: 30px; font-size: 11px; background-image: linear-gradient(to bottom, #fff 0, #e0e0e0 100%); background-repeat: repeat-x; border-color: #ccc;">Quay
							về trang chủ</a>
					</div>

					<div class="shoping__cart__table" id="shopingCartTable"
						style="display: block;">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">Danh sách sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${carts }" var="c">
									<tr data-idProductDetail="${c.productDetail.id }"
										data-idProduct="${c.productDetail.product_proDetail.id }">

										<td class="shoping__cart__item name"
											data-nameProduct="${c.productDetail.product_proDetail.name}-${c.productDetail.color_proDetail.name }-${c.productDetail.spec_proDetail.gotValue }GB"><img
											src="img/cart/cart-1.jpg" alt="">
											<h5>${c.productDetail.product_proDetail.name}-${c.productDetail.color_proDetail.name }-${c.productDetail.spec_proDetail.gotValue }GB</h5></td>
										<td class="shoping__cart__price price"
											data-price="${c.productDetail.price}">${c.productDetail.price}</td>
										<td class="">
											<div class="quantity">
												<div class="pro-qty">
													<input class="quan-cart" type="number"
														value="${c.quantity }">
												</div>
											</div>
										</td>
										<td class="shoping__cart__total">${c.totalPrice}</td>
										<td class="shoping__cart__item__close"><span
											class="icon_close"></span></td>


									</tr>
								</c:forEach>


							</tbody>
						</table>
					</div>
				</div>

			</div>
			<div class="row" id="checkOut">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a id="a_back_PD" href="#" class="primary-btn cart-btn">Tiếp tục mua sắm</a> <a
							href="#" class="primary-btn cart-btn cart-btn-right"><span
							class="icon_loading"></span> Upadate Cart</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Discount Codes</h5>
							<form action="#">
								<input type="text" placeholder="Enter your coupon code">
								<button type="submit" class="site-btn">APPLY COUPON</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Cart Total</h5>
						<ul>
							<li>Subtotal <span>$454.98</span></li>
							<li>Total <span id="totalmoney">$454.98</span></li>
						</ul>
						<a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
	<script type="text/javascript">
		ganTongTienGioHang();

		function ganTongTienGioHang(isEventChange) {
			var totalMoney = 0;

			var backPD = document.getElementById("a_back_PD");
			var idProduct = $(".price").closest("tr").attr("data-idProduct");

			backPD.setAttribute("href", "/didongxanh/chitiet/" + idProduct);
			$(".price").each(
					function() {
						var price = $(this).attr("data-price");
						var quan = $(this).closest("tr").find(".quan-cart")
								.val();
						var money = parseInt(price) * quan;

						totalMoney = totalMoney + money;

						$("#totalmoney").html(totalMoney);
						$('#totalmoney').each(
								function() {
									$(this).text(
											numeral($(this).text()).format(
													'0,0')
													+ " VND");
								});

					});

		};

		$(".icon_close")
				.click(
						function() {
							var idProductDetail = $(this).closest("tr").attr(
									"data-idProductDetail");
							var self = $(this);
							$
									.ajax({
										url : "/didongxanh/API/deleteProductInCart/"
												+ idProductDetail,
										type : "GET",
										success : function(value) {

											self.closest("tr").remove();
											ganTongTienGioHang(true);

											if (value == "empty") {
												var noItem = document
														.getElementById("no-item");
												var shopingCartTable = document
														.getElementById("shopingCartTable");
												var module = document
														.getElementById("checkOut");
											
												noItem.style.display = "block";
												shopingCartTable.style.display = "none";
											
												module.style.display = "none";
											}
											//window.location = "http://localhost:8080/didongxanh/shopping-cart";	
										}
									});

						})

		$(".quan-cart")
				.change(
						function() {
							console.log("change");
							var quan = $(this).val();

							var name = $(this).closest("tr").find(".name")
									.attr("data-nameProduct");

							var price = $(this).closest("tr").find(".price")
									.attr("data-price");
							var idProductDetail = $(this).closest("tr").attr(
									"data-idProductDetail");

							var c = quan * parseInt(price);
							$(this).closest("tr").find(".shoping__cart__total")
									.html(c);

							ganTongTienGioHang(true);

							$('.shoping__cart__total').each(
									function() {
										$(this).text(
												numeral($(this).text()).format(
														'0,0')
														+ " VND");
									});
							$('#totalmoney').each(
									function() {
										$(this).text(
												numeral($(this).text()).format(
														'0,0')
														+ " VND");
									});

							//khi refresh trang thi no van giữ sl sp mà mình ms click
							$.ajax({
								url : "/didongxanh/API/updateCart",
								type : "GET",
								data : {
									idProductDetail : idProductDetail,
									quantity : quan,
									totalPrice : c
								},
								success : function(value) {

								}

							});

						});

		$('.price').each(function() {
			$(this).text(numeral($(this).text()).format('0,0') + " VND");
		});

		$('.shoping__cart__total').each(function() {
			$(this).text(numeral($(this).text()).format('0,0') + " VND");
		});
	</script>
</body>
</html>