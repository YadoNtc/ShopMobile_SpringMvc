<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.springmvc.util.SecurityUtils" %>
<!DOCTYPE html>

<div id="header">
	<div class="container">
		<div id="welcomeLine" class="row">
			<div class="span9">
				<marquee
					style="padding-top: 5px; font-weight: bold; color: red; font-family: initial; font-style: italic; font-size: 15px;">©
					2021. Công ty TNHH Thương mại và dịch vụ kỹ thuật Ntc. Kính chào
					quý khách hàng!
				</marquee>
			</div>
			<div class="span3">
				<div class="pull-right">
					<security:authorize access="isAnonymous()"> 
						<a href="<c:url value="/dang-nhap"/>"> <span
						class="btn btn-mini btn-primary"> Đăng nhập </span>
						</a> 
						<a href="initIndexAddUser.htm"> <span
						class="btn btn-mini btn-primary"> Đăng ký </span>
						</a>
					</security:authorize>   
					<security:authorize access="isAuthenticated()">
						<a href="#"> <span
						class="btn btn-mini btn-primary">Xin chào, <%=SecurityUtils.getPrincipal().getFullname() %></span>
						</a> 
						<a href="<c:url value="/thoat"/>"> <span
						class="btn btn-mini btn-primary"> Thoát </span>
						</a>
					</security:authorize>
						
					
				</div>
			</div>
		</div>
		<div id="logoArea" class="navbar">
			
			<div class="navbar-inner">
				<a class="brand" href="<c:url value="/trang-chu"/>"><img
					src="/spring_mvc_project4/template/images/logontc.png" alt="Bootsshop"
					style="height: 50px;"></a>
					
				<form action="<c:url value="/search"/>" class="form-inline navbar-search" method="post">
					<input id="name" class="srchTxt" type="text" name="name"
						value="" placeholder="Nhập từ khóa cần tìm kiếm...">
					<button type="submit" id="submitButton" class="btn btn-primary">Tìm	kiếm</button>
					
					<input type="hidden" name="action" value="search">
				</form>
				
				<ul id="topMenu" class="nav pull-right">

					<li class=""><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
					<li class=""><a href="#">Giới thiệu</a></li>
					<li class=""><a href="#footer">Liên hệ</a></li>
					<li class=""><a href="#">Tin tức</a></li>
					<li class=""><a href="<c:url value="/trang-chu"/>">Sản phẩm</a></li>
					<li class=""><a href="<c:url value="gio-hang"/>">
						${order.billProducts == null ? 0 : order.billProducts.size()}
						<img src="/spring_mvc_project4/template/images/ico-cart.png" alt="cart"></a>
					</li>
							

				</ul>
			</div>
		</div>
	</div>
</div>

<!-- slide -->
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
			<div class="item active">
				<div class="container">
					<a href="#"><img
						style="width: 100%; height: 340px;"
						src="/spring_mvc_project4/template/images/slide_3_F-C1_1200x300.jpg"
						alt="special offers"></a>
				</div>
				<br> <br>
			</div>

			<div class="item">
				<div class="container">
					<a><img style="width: 100%; height: 340px"
						src="/spring_mvc_project4/template/images/slide_1_1200x300.jpg"
						alt=""></a>
				</div>
				<br> <br>
			</div>

			<div class="item">
				<div class="container">
					<a><img style="width: 100%; height: 340px"
						src="/spring_mvc_project4/template/images/slide_2_1200x300.jpg" alt=""></a>
				</div>
				<br> <br>
			</div>

			<div class="item">
				<div class="container">
					<a><img style="width: 100%; height: 340px"
						src="/spring_mvc_project4/template/images/slide_4_F-C1_1200x300@2x.jpg" alt=""></a>
				</div>
				<br> <br>
			</div>

			<div class="item">
				<div class="container">
					<a><img style="width: 100%; height: 340px"
						src="/spring_mvc_project4/template/images/slide_5_F-C1_1200x300.jpg"
						alt=""></a>
				</div>
				<br> <br>
			</div>
			
			<div class="item">
				<div class="container">
					<a><img style="width: 100%; height: 340px"
						src="/spring_mvc_project4/template/images/slide_6_F-C1_1200x300.jpg"
						alt=""></a>
				</div>
				<br> <br>
			</div>

		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
	</div>
</div>
