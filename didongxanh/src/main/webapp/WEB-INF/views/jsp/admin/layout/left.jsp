<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="left">
  <aside class="main-sidebar"> 
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar"> 
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image"> <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> </div>
        <div class="pull-left info">
          <p>Admin</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Trực tuyến</a> </div>
      </div>
      <!-- search form -->
      <form class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Tìm kiếm...">
          <span class="input-group-btn">
          <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
          </span> </div>
      </form>
      <!-- /.search form --> 
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MENU QUẢN LÝ</li>
        <li class="treeview"> <a href="index.html"> <i class="fa fa-home"></i> <span>Trang chủ</span> </a> </li>
        <li class="treeview"> <a href="#m2"> <i class="fa fa-building"></i> <span>Quản lý Menu</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu collapse" id="m2">
            <li><a href="danhsachmenu.html"><i class="fa fa-circle-o"></i> Danh sách menu</a></li>
          </ul>
        </li>
        <li class="treeview" id="m3"> <a href="#"> <i class="fa fa-table nav_icon"></i> <span>Quản lý sản phẩm</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a href="danhsachsanpham.html"><i class="fa fa-circle-o"></i> Tất cả sản phẩm</a></li>
          </ul>
        </li>
        <li class="treeview"> <a href="#"> <i class="fa fa-files-o"></i> <span>Hóa đơn</span> <span class="fa fa-angle-left pull-right"></span> </a>
          <ul class="treeview-menu">
            <li><a href="danhsachdonhang.html"><i class="fa fa-circle-o"></i> Quản lý hóa đơn</a></li>
            <li><a href="donhangspam.html"><i class="fa fa-circle-o"></i> Đơn hàng spam</a></li>
          </ul>
        </li>
        <li class="treeview"> <a href="#"> <i class=" fa fa-user"></i> <span>Thành viên</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a href="danhsachUser.html"><i class="fa fa-circle-o"></i> Thành viên</a></li>
          </ul>
        </li>
        <li class="treeview"> <a href="#"> <i class="fa fa-shopping-cart fw"></i> <span>Bán hàng</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a href="phieugiamgia.html"><i class="fa fa-circle-o"></i> Phiếu giảm giá </a></li>
          </ul>
        </li>
    
      </ul>
    </section>
    <!-- /.sidebar --> 
  </aside>
</div>
</body>
</html>