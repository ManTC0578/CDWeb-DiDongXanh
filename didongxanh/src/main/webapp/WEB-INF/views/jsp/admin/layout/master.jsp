<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/Admin/Css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Admin/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Admin/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/Admin/dist/css/AdminLTE.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Admin/dist/css/skins/_all-skins.min.css" />"
	rel="stylesheet">			



</head>
<body class="skin-blue sidebar-mini">
	<!-- top -->
	<tiles:insertAttribute name="top"></tiles:insertAttribute>
	<!-- left -->
	<tiles:insertAttribute name="left"></tiles:insertAttribute>
	<!-- Content Wrapper. Contains page content -->
	<div id="content">
		<div class="content-wrapper" style="min-height: 522px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<a href="#"><i class="fa fa-home"></i> Trang chủ</a>
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Info boxes -->

				<div class="row">
					<div class="col-md-12">
						<div class="box">
							<div class="box-header with-border">
								<h3 class="box-title">Danh sách quản lý</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body" style="min-height: 450px">
								<div class="row">
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="info-box">
											<a href="danhsachmenu.html"> <span
												class="info-box-icon bg-red"><i class="fa fa-bars"></i></span></a>
											<div class="info-box-content">
												<a href="danhsachmenu.html">
													<h3>Menu</h3>
												</a>
											</div>
										</div>
									</div>

									<!-- fix for small devices only -->
									<div class="clearfix visible-sm-block"></div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="info-box">
											<a href="danhsachsanpham.html"> <span
												class="info-box-icon bg-green"><i
													class="fa fa-building-o"></i></span></a>
											<div class="info-box-content">
												<a href="danhsachsanpham.html">
													<h3>Sản phẩm</h3>
												</a>
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="info-box">
											<a href="danhsachUser.html"> <span
												class="info-box-icon bg-yellow"><img
													src="./icon/multiple-users-silhouette.png" alt=""></span></a>
											<div class="info-box-content">
												<a href="danhsachUser.html">
													<h3>Thành Viên</h3>
												</a>
											</div>
										</div>
									</div>
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="info-box">
											<a href="danhsachdonhang.html"> <span
												class="info-box-icon bg-orange"><i
													class="fa fa-files-o"></i></span></a>
											<div class="info-box-content">
												<a href="danhsachdonhang.html">
													<h3>Hóa đơn</h3>
												</a>
											</div>
										</div>
									</div>


								</div>
							</div>
							<tiles:insertAttribute name="body"></tiles:insertAttribute>

						</div>
					</div>
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>

	<div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>


	<script
		src="<c:url value="/resources/Admin/bootstrap/js/bootstrap.min.js" />"></script>

	<script src="<c:url value="/resources/Admin/dist/js/app.min.js" />"></script>
	<script src="<c:url value="/resources/Admin/js/jQuery-2.1.4.min.js" />"></script>

</body>
</html>