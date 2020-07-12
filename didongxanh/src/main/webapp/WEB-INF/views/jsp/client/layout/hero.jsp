<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
						</div>
						<ul>
							<li><a href="#">Iphone</a></li>
							<li><a href="#">SamSung</a></li>
							<li><a href="#">NoKia</a></li>
							<li><a href="#">VIVO</a></li>
							<li><a href="#">Xiaomi</a></li>
							<li><a href="#">Oppo</a></li>
							<li><a href="#">VsMart</a></li>
							<li><a href="#">Huawei</a></li>
							<li><a href="#">BPhone</a></li>
							<li><a href="#">Sản Phẩm Khác</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>
					<div class="hero__item set-bg" data-setbg="<c:url value="/resources/Client/img/hero/banner.jpg"/> ">
					
						
						<div class="hero__text">
							<span>Điện thoại xanh</span>
							<h2>
								Mọi thứ đều phải nhanh
							</h2>
							
							<a href="#" class="primary-btn">SHOP NOW</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>