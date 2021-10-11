<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ page import="com.springmvc.util.*" %>
<!DOCTYPE html>

<div id="left">
	<div class="media user-media well-small">
		<a class="user-link" href="#"> <img
			class="media-object img-thumbnail user-img"
			style="width: 64px; height: 64px;" alt=""
			src="/spring_mvc_project4/template/images/admin-web.jpg">
		</a> <br>
		<div class="media-body">
			<h5 class="media-heading"><%= SecurityUtils.getPrincipal().getFullname() %></h5>
			<ul class="list-unstyled user-info">
				<li><a class="btn btn-success btn-xs btn-circle"
					style="width: 10px; height: 12px;"></a> Online</li>
			</ul>
		</div>
		<br>
	</div>
	<ul id="menu" class="collapse">
		<li class="panel"><a href="<c:url value="/admin-home"/>"> <i
				class="icon-dashboard"></i> Home
		</a></li>
	
		<li class="panel"><a href="<c:url value="/admin-product-list"/>"> <i
				class="icon-trophy"></i> Sản phẩm
		</a></li>
		
		<li class="panel"><a href="<c:url value="/admin-product-edit"/>"> <i
				class="icon-indent-left"></i> Loại sản phẩm
		</a></li>
		
		<!-- 
		<li class="panel"><a href="listA.htm?page=1"> <i
				class="icon-tablet"></i> Giới thiệu
		</a></li>
		
		<li class="panel"><a href="listCate.htm?page=1"> <i
				class="icon-th-list"></i> Loại sản phẩm
		</a></li>
		
		<li class="panel"><a href="listO.htm?page=1"> <i
				class="icon-shopping-cart"></i> Đơn hàng
		</a></li> -->
		<!-- 
		<li class="panel"><a href="listU.htm?page=1"> <i
				class="icon-user"></i> Tài khoản
		</a></li>
		<li class="panel"><a href="listUG.htm?page=1"> <i
				class="icon-user-md"></i> Phân quyền
		</a></li>
		<li class="panel"><a href="listS.htm?page=1"> <i
				class="icon-picture"></i> Trình chiếu
		</a></li>
		<li class="panel"><a href="listC.htm?page=1"> <i
				class="icon-info-sign"></i> Liên hệ
		</a></li>
		<li class="panel"><a href="listCo.htm?page=1"> <i
				class="icon-book"></i> Tin tức
		</a></li>
		<li class="panel"><a href="listFB.htm?page=1"> <i
				class="icon-thumbs-up"></i> Phản hồi
		</a></li>
		<li class="panel"><a href="listF.htm?page=1"> <i
				class="icon-tint"></i> Chân trang
		</a></li>
		<li class="panel"><a href="listReport.htm"> <i
				class="icon-bar-chart"></i> Thống kê
		</a></li> -->
		<!-- <li class="panel"><a id="BrowseAdmin" href="#"> <input
				type="text" id="BrowseAdminImage" hidden="true"> <i
				class="icon-picture"></i> Tải ảnh
		</a></li> -->
	</ul>
</div>