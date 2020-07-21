<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="featured spad">
	<div class="container">


		<div class="row featured__filter">

			<c:forEach items="${products }" var="list" varStatus="loop">

				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges " style="cursor:pointer" onclick="Nav(${list.id})">
					<div class="featured__item">
						
						<div class="featured__item__pic set-bg" data-setbg="<c:url value="${list.img_Main}"/>">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						
						
						<div class="featured__item__text">
							<h6>
								<a href="#">${list.name}</a>
							</h6>

							<c:forEach items="${list.productDetails }" var="pd"
								varStatus="loop1">

								<c:choose>
									<c:when test="${loop1.index == 0 }">
										<h5 class="pricee">${pd.price }</h5>
									</c:when>
								</c:choose>

							</c:forEach>


						</div>
					</div>
				</div>
			</c:forEach>

		</div>

		<div class="product__pagination">
			<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
				class="fa fa-long-arrow-right"></i></a>
		</div>
	</div>
</section>

<script type="text/javascript">
	$(document).ready(function() {
		$('.pricee').each(function() {
			console.log("price");
			$(this).text(numeral($(this).text()).format('0,0') + "VND");
		})
	})
	function Nav(id){
		window.location="/didongxanh/chitiet/"+id;
	}
</script>