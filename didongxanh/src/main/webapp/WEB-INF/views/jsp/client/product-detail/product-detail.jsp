<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	media="all">

<title>Insert title here</title>
<style>
a.disable {
	pointer-events: none !important;
	cursor: default !important;
}

button.button-red, a.button-red {
	background: linear-gradient(#f52f32, #e11b1e);
	border: solid 1px #e11b1e;
}

button.big-button, a.big-button, span.big-button strong {
	margin-top: 10px;
	color: #fff;
	font-size: 14px;
	padding: 8px 5px;
	line-height: 18px;
	width: 100%;
	border-radius: 5px;
	display: block;
	text-align: center;
	cursor: pointer;
}

.left {
	
}
</style>
</head>
<body>

<input id="FirstIdSpec" type="hidden" value="${firstIdSpec }">
<input id="FirstIdPro" type="hidden" value="${product.id}">
<input id="firstIdPD" type="hidden" value="${firstIdPD}">

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<c:forEach items="${productDetailForDisplay }" var="pd" begin="0"
								end="0">

								<img id="img_main" class="product__details__pic__item--large"
									src="<c:url value="${pd.img_url }"/>" alt="">

							</c:forEach>
						</div>
						<div class="product__details__pic__slider owl-carousel">
							<c:forEach items="${productDetailForDisplay }" var="pd">
								<img data-imgbigurl="<c:url value="${pd.img_url }"/>"
									src="<c:url value="${pd.img_url }"/>" alt="">
							</c:forEach>
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
						<div id="price" class="priceee"></div>

						<div id="capa" class="linked"
							style="display: flex; flex-wrap: wrap;">

							<c:forEach items="${specs}" var="spec" varStatus="loopCapa">


								<a id="a_${loopCapa.index + 1 }"
									onclick="ajaxCallCapacity(${product.id },${spec.id},${loopCapa.index + 1 })"
									style="position: relative; background: #fff; border: 1px solid #ddd; -moz-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); -webkit-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); box-shadow: 0 2px 3px 0 rgba(0, 0, 0, .15); -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; width: calc(( 100%/ 3)- 10px); text-align: center; padding: 5px; margin-right: 10px; margin-bottom: 10px; cursor: pointer; display: flex; flex-direction: column; justify-content: center; color: #d70018; border-radius: 5px; text-decoration: none;"
									title="${product.name }  ${spec.gotValue } GB"> <span>
										<i style="color: #000; font-style: italic;">
											${spec.gotValue } GB </i>
								</span> <strong class="priceBtnCapa"
									style="font-size: 14px; display: block; color: #e10c00; font-weight: 700;">
										${spec.gotPriceMin}</strong>
								</a>

							</c:forEach>

						</div>

						<div>
							<aside class="promotion_wrapper"
								style="display: block; border: #e11b1e solid 1px; border-radius: 4px; padding: 10px 0 0; position: relative; overflow: visible; margin: 20px 0; float: left; width: 100%;">
								<b id="promotion_header"
									style="background: #e11b1e; border-radius: 13px; color: #fff; font-size: 14px; font-weight: 400; position: absolute; top: -13px; left: 10px; vertical-align: middle; line-height: 26px; clear: both; padding: 0 15px; text-transform: uppercase;"><i
									class="fa fa-gift" aria-hidden="true"
									style="display: inline-block; font: normal normal normal 14px/1 FontAwesome; font-size: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased;"></i>
									Khuyến mãi</b>

								<div class="khuyenmai-info" style="padding: 10px 10px 0;">
									<!-- CTKM chung -->
									<div class="kmChung" style="font-size: 13px; font-weight: 700;">

										<h4
											style="font-size: 13px; font-weight: 700; margin: 0 0 5px; line-height: 1.35; color: #0a263c;">Chương
											trình khuyến mại:</h4>

										<div class="pack-detail"
											style="margin-top: 5px; position: relative; display: block;">
											<ul class="el-promotion-pack"
												style="margin-bottom: 0px; padding: 0 15px; list-style: none;">
												<li style="list-style-type: disc; color: #e11b1e;"><a
													style="color: #d70018; text-decoration: none;"
													href="https://cellphones.com.vn/phu-kien/apple.html"
													rel="nofollow">Giảm 200.000đ khi mua kèm Tai nghe
														Airpods</a></li>

											</ul>
										</div>
									</div>
									<!--<hr style="margin-top: 5px;margin-bottom: 5px;">-->
									<!-- CTKM riêng -->
									<div id="lt-promotion-pack"></div>
								</div>
							</aside>
						</div>
						<div>
							<strong style="color: #2f2f2f; font-weight: 500;"><i>Chọn
									màu để xem giá và chi nhánh có hàng</i></strong>

						</div>

						<div style="margin-top: 2px;">
							<ul id="priceByColor"
								style="margin-top: 0; padding-left: 20px; display: block; list-style: none;"
								class="col-md-12">
								<c:forEach items="${productDetail}" var="c" varStatus="loopPD">

									<input id="id_proDetail_${loopPD.index}" type="hidden"
										name="cc">


									<li class="col-md-4" id="li_color_${loopPD.index}"
										style="margin-right: 2px; margin-bottom: 5px; display: inline-block; padding-left: 5px; border-radius: 5px; width: 150px; background-color: rgba(238, 238, 238, .25);">

										<a
										onclick="ajaxCallImgByColor(${loopPD.index},${product.id },${loopPD.index})"
										id="a_color_${loopPD.index}"
										style="color: #d70018; text-decoration: none;"
										data-toggle="tooltip" title="${c.color_proDetail.name }">
											<label
											style="color: #000; position: relative; cursor: pointer; opacity: 1; max-width: 100%;">
												<span id="pd_detail_title_${loopPD.index}"
												style="color: #000; float: left; width: 100%;">${c.color_proDetail.name }</span>
												<span id="pd_detail_price_${loopPD.index}"
												class="priceByColor" style="color: #d70018;">${c.price}</span>
										</label>
									</a>
									</li>

								</c:forEach>

							</ul>
							<input id="idProductDetail" type="hidden">
						</div>


						<div>
							<p class="ecommerce-note"
								style="font-size: 13px; font-weight: 700; cursor: pointer; color: #eb0000; position: relative; padding: 0 0 0 40px; margin: 0; border-radius: 2px; display: block; width: 100%; float: left;">
								<a href="/huong-dan-mua-hang-online"
									style="text-decoration: none; color: #555; font-style: italic;"><strong>Thanh
										toán online</strong></a> | <a href="/chinh-sach-giao-hang"
									style="text-decoration: none; color: #555; font-style: italic;"><span>
										Miễn phí giao hàng thu tiền</span></a>
							</p>

							<a class="" onclick="addToCart()"
								style="background: linear-gradient(#f52f32, #e11b1e); border: solid 1px #e11b1e; margin-top: 10px; color: #fff; font-size: 14px; padding: 8px 5px; line-height: 18px; width: 100%; border-radius: 5px; text-align: center; cursor: pointer;">
								<strong>MUA NGAY</strong>
							</a>
						</div>
					</div>
				</div>
				<!-- hien thi chi nhánh -->
				<div class="col-lg-3 col-md-3">
					<div id="div_store" style="line-height: 30px; ">
						<strong id="totalStore"
							style="display: block; width: 100%; font-weight: 600; background-color: #f7f7f7; float: left; text-align: center; text-transform: uppercase; border: 1px #eee solid; line-height: 40px; color: #3c3d41;">
							Hiện 1 cửa hàng có sẵn sản phẩm </strong> <strong id="storeConHang"
							style="font-weight: 600;"> Cửa hàng còn hàng</strong>


						<ul id="store" class="cpsscroll"
							style="display: block; width: 100%; float: left; border-top: none; list-style: none; border-bottom: none; margin-top: 10px; background: #f7f7f7;">



						</ul>
					</div>


					<div class="lt-table-box technical-info" id="id_16522"
						style="margin-top: 0px;">
						<div class="header">
							<h2 id="h2_spec"
								style="font-size: 15px;font-weight: bold; line-height: 100px;">Thông
								số kỹ thuật</h2>
						</div>
						<div class="content" style="padding: 10px;">
							<table id="tskt"
								style="border: 0; border-spacing: 0; empty-cells: show; font-size: 100%; display: table; border-collapse: collapse;">

								<tbody style="vertical-align: middle; border-color: inherit;">
									<tr id="tr_spec"
										style="height: 35px; vertical-align: inherit; border-color: inherit;">
										

									</tr>




								</tbody>
							</table>
							<a id="more-specific" href="javascript:void()"
								class="btn btn-default btn-sm" style="display: none;">Xem
								thêm</a>
						</div>
					</div>

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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
</body>

<script>
var firstIdSpec = document.getElementById("FirstIdSpec");
var firstIdPro = document.getElementById("FirstIdPro");
var firstIdPD = document.getElementById("firstIdPD");
$(document).ready(function(){
	
	console.log("dfsddfsdfsd");
	 $('.priceBtnCapa').each(function(){
		 $(this).text(numeral($(this).text()).format('0,0')+" VND");
	 });
	 $('.priceByColor').each(function(){
		 $(this).text(numeral($(this).text()).format('0,0')+" VND");
	 });
	 
	
	 
	 console.log("spec"+firstIdSpec.value);
	 console.log("ippro"+firstIdPro.value);
	 console.log(firstIdPD.value);
	 
	 var isFirstDisplay = true;
	 ajaxCallCapacity(firstIdPro.value,firstIdSpec.value,1,isFirstDisplay);	 
	
	 
});

function addToCart(){
	 var idProductDetail = document.getElementById("idProductDetail");
	console.log("add to cart"+idProductDetail.value);
	
	if(idProductDetail.value){
		
		$.ajax({
	        type: "GET",
	        url : "/didongxanh/API/addToCart/"+idProductDetail.value,
	        success: function(res){
	        	
	        	if(res == "successed"){
	        		
					window.location = "http://localhost:8080/didongxanh/shopping-cart";	
	        	}
	        	else{
	        		console.log("false");
	        	}
	        	
	        }
	   });
		
	}
	
};

function ajaxCallImgByColor(id,productId,btnColorId,isFirstDisplay){
	
	console.log("id is"+id);
	var idProDetail = document.getElementById("id_proDetail_"+id);
	idPD = idProDetail.value;
	console.log("id pro is"+productId);
	
	
	 var priceByColor = document.getElementById("priceByColor");
	 var li = priceByColor.querySelectorAll("li");
	    for(var i=0;i<li.length;i++){
	    	li[i].style.border = "solid 1px rgb(18, 17, 17)";
	    } 
	
	$.ajax({
        type: "GET",
        url : "/didongxanh/API/getImgProductDetail/"+idPD,
       
        success: function(res){
        	
        	console.log(res);
        	var btnColor = document.getElementById("li_color_"+btnColorId);
        	btnColor.style.border="solid 1px #e11b1e";
        	
        	var img = document.getElementById("img_main");
        	var price = document.getElementById("price");
        	var idProDetail = document.getElementById("id_proDetail_"+0);
        
        	img.setAttribute("src","/didongxanh"+res.img_url);
        	//price.innerHTML=res.price+" VND";
        	
        	price.style.color = "#dd2222";
        	price.style.fontSize = "30px";
        	price.style.fontWeight  = "600";
        	price.style.marginBottom = "15px";
        	
        	 $('.priceee').each(function(){
        		 $(this).text(numeral(res.price).format('0,0')+" VND");
        		
        	 }) 
        	
        	 var trSpec = document.getElementById("tr_spec");
        	 trSpec.innerHTML= "";
        	 
        	
        	 for(var i=0;i<res.spec_proDetail["specDetails"].length;i++){
        		 const spec = (res || {}).spec_proDetail.specDetails || null; 
        		 
        		 if(spec != null){
        			 var name = document.createElement("td");
        			 var value = document.createElement("td");
        		
            		 var textName = document.createTextNode(res.spec_proDetail.specDetails[i].name);
            		 var textValue = document.createTextNode(res.spec_proDetail.specDetails[i].value);
            		 
            		 name.appendChild(textName);
            		 value.appendChild(textValue);        		 
            		 
            		 trSpec.appendChild(name);
            		 trSpec.appendChild(value);
            		 
        			
        			 
        			 console.log("testssssssssss"+res.spec_proDetail.specDetails[i].name);
        		 }
        		
        		 
        	 }
        	 
        	 var td = trSpec.querySelectorAll("td");
        	 for (var i = 0; i < td.length; i++) {
        		    td[i].style.backgroundColor = "transparent";
        		    td[i].style.display  = "table-row";
             }
         if(!isFirstDisplay){
        	 ajaxGetStore(productId,idPD);	 
         }
         if(isFirstDisplay){
        	 ajaxGetStore(firstIdPro.value,firstIdPD.value);	 
         }
         	
        }
   });
		
};


function ajaxGetStore(idProduct,idProduct_Detail){
	
	var store = document.getElementById("store");
	store.innerHTML= "";
	
	$.ajax({
        type: "GET",
        url : "/didongxanh/API/getStoreHaveProduct",
        data : {
        	proId : idProduct,
        	ProDetailId : idProduct_Detail
        },
        success: function(res){
        	
        	console.log(res);
        
        	var count = 0;
        	 for(var i =0;i<res.length;i++){
        		 count++;
        		 var address = document.createElement("LI");
        		 var a = document.createElement("a");
        		 
        		 var textadd = document.createTextNode(res[i].address);
        		 a.appendChild(textadd);
        		
        		 address.appendChild(a);
        		 
        		 store.appendChild(address);
        	 }
        	 
        	 //set trang thai cua cua hang
        	 var divStore = document.getElementById("div_store");
        	 var h2Spec = document.getElementById("h2_spec");
        	 
        	 divStore.style.display="block";
        	 h2Spec.style.display="block";
        	 
        	 var setTotalStore = document.getElementById("totalStore");
        	 if(count == 0){
        		 
        		 var storeConHang = document.getElementById("storeConHang");
        		 storeConHang.style.display  = "none";
        		 setTotalStore.innerHTML = "Không còn cửa hàng nào còn sản phẩm này.";
        		
        	 }
        	 else{
        		 var idProductDetail = document.getElementById("idProductDetail");
        		 idProductDetail.value = idProduct_Detail;
        		 console.log("IPD is: "+idProductDetail.value);
        		 setTotalStore.innerHTML = "Hiện còn "+count+" cửa hàng còn sản phẩm này.";	 
        	 }
        	     	
        	 var li = store.querySelectorAll("li");
        	 for (var i = 0; i < li.length; i++) {
        		    li[i].style.backgroundColor = "transparent";
        		    li[i].style.display  = "list-item";
             }
        }
   });
};

function ajaxCallCapacity(id_pro,id_spec,id_a,isFirstDisplay){
	
	console.log(id_a);
    var store = document.getElementById("capa");
    var a = store.querySelectorAll("a");
    for(var i=0;i<a.length;i++){
    	a[i].style.border = " 1px solid #ddd";
    } 
     
	$.ajax({
        type: "GET",
        url : "/didongxanh/API/getProduct",
        data : {
        	product_id: id_pro,
        	spec_id: id_spec
        },
      
        success: function(res){
            
        	 var btnCapa = document.getElementById("a_"+id_a);
        	   btnCapa.style.border="solid 1px #e11b1e";
      
                console.log(res);
                
                 var numberOfColors = res.length;
                             
                 var priceByColor = document.getElementById("priceByColor");
            	 var li = priceByColor.querySelectorAll("li");
            	    for(var i=0;i<li.length;i++){
            	    	li[i].style.display="none";
            	    } 
                 
       	    	 for(var i=0; i<numberOfColors;i++){
       		     	 var li_id = "li_color_"+i;
       		     	 console.log(li_id);
       			    document.getElementById(li_id).style.display="inline-block";
       			 
       	 
       	     	 }
       	    	 
       	    	
               
       	    	 
                for(var i =0;i<res.length;i++){
                	var title = document.getElementById("pd_detail_title_"+i);
                	var price = document.getElementById("pd_detail_price_"+i);
                	
                	var idProDetail = document.getElementById("id_proDetail_"+i);
                	idProDetail.value = res[i].id;
                	console.log("idddddd"+idProDetail.value);
                
                	var id_a_color = "a_color_"+i;
                	var li_color = "li_color_"+i;
                	document.getElementById(li_color).style.border="solid 1px rgb(18, 17, 17)";
                	
                	var a_color = document.getElementById(id_a_color);
                	
                	title.innerHTML=res[i].color_proDetail["name"];
                	
                	console.log("color is:"+res[i].color_proDetail["name"]);
                	
                          	
                	 $('.priceByColor').each(function(){
                		 $(this).text(numeral(res[i].price).format('0,0')+" VND");
                		 
         
                	 }) 
                	              
                	a_color.setAttribute("title",res[i].color_proDetail["name"]);
                	               	               	
                	if(res[i].state == 0){
                		
                		
                		document.getElementById(id_a_color).style.cursor="not-allowed";
                		document.getElementById(id_a_color).disabled=true;
                		//document.getElementById(id_a_color).className="disable";
                		document.getElementById(id_a_color).style.opacity ="0.3";
                		document.getElementById(id_a_color).style.background="#eee";
                		document.getElementById(id_a_color).style.border="solid 1px #eee";
                		//var li_color = "li_color_"+i;
                    	document.getElementById(li_color).style.border="solid 1px #eee";
                		a_color.setAttribute("title","Tạm hết hàng");               		
                	}
                	
                	else{
                		document.getElementById(id_a_color).style.cursor="pointer";
                		document.getElementById(id_a_color).style.opacity ="1";
                		document.getElementById(id_a_color).style.backgroundColor="rgba(238, 238, 238, .25)";
                		//document.getElementById("li_color_"+i).style.border="solid 1px #e11b1e"
                	}
                	
                	
                	
              }
                for(var k=0;k<res.length;k++){
                  	 if(isFirstDisplay){
                   		if(res[k].state == 1){
                   			
                   			console.log("isFirstDisplay");
                   			console.log("index i"+k);
                   			ajaxCallImgByColor(k,firstIdPro,k,isFirstDisplay);
                   			break;
                   		}
                   		    	 
                      }  
                  }
               
                
               
             
        }
   });
	
};


</script>
</html>
