<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fml" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<div id="sidebar" class="span3">

	<div class="well well-small">
		<a id="myCart" href="<c:url value="/gio-hang?id=${item.id}"/>">	 
			<img src="/spring_mvc_project4/template/images/ico-cart.png" alt="cart">
			${order.billProducts == null ? 0 : order.billProducts.size()} sản phẩm trong giỏ hàng
		</a>
	</div>

	<ul id="sideManu" class="nav nav-tabs nav-stacked">

		<li><a href="#">iPhone 5s,5se</a></li>

		<li><a href="#">iPhone 6s,6s+</a></li>

		<li><a href="#">iPhone 6,6+</a></li>

		<li><a href="#">iPhone 7,7+</a></li>

		<li><a href="#">iPhone 8,8+ Red</a></li>

		<li><a href="#">iPhone 8,8+</a></li>

		<li><a href="#">iPhone 2018</a></li>

		<li><a href="#">Iphone XS Max</a></li>

		<li><a href="#">iPhone XS</a></li>

		<li><a href="#">iPhone XR</a></li>

		<li><a href="#">Iphone X</a></li>
	</ul>
	<br>
	
	<c:forEach var="item" items="${product.listResult}">
		<div class="thumbnail">
			<c:url var="editUrl" value="/home-product-detail">											
				<c:param name="id" value="${item.id}"/>
			</c:url>
			<a href="${editUrl}"><img
				src="${item.image}"
				style="width: 230px; height: 160px"
				alt="${item.name}">
			</a>
			<div class="caption">
				<h5>${item.name}</h5>
				<h4 style="text-align: center">
					<a class="btn" href="${editUrl}">
						<i class="icon-zoom-in"></i>
					</a> 
					<a class="btn"
						href="<c:url value="/them-vao-gio-hang?id=${item.id}"/>">Thêm
						<i class="icon-shopping-cart"></i>
					</a> 
					<a class="btn btn-primary" href="#">
						<fml:setLocale value="vi_VN"/>
						<fml:formatNumber value="${item.price}"/> đ
					</a>
				</h4>
			</div>
		</div>
		<br>
	</c:forEach>
	
	<div class="thumbnail">
		<img src="/spring_mvc_project4/template/images/payment_methods.png"
			title="Bootshop Payment Methods" alt="Payments Methods">
		<div class="caption">
			<h5>Phương thức thanh toán</h5>
		</div>
	</div>
</div>