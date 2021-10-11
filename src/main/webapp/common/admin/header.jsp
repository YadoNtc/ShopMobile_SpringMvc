<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<div id="top">
<nav class="navbar navbar-inverse navbar-fixed-top "
	style="padding-top: 10px;">
	<a data-original-title="Show/Hide Menu" data-placement="bottom"
		data-tooltip="tooltip"
		class="accordion-toggle btn btn-primary btn-sm visible-xs"
		data-toggle="collapse" href="#menu" id="menu-toggle"> <i
		class="icon-align-justify"></i>
	</a>
	<header class="navbar-header">
		<a href="index.htm" class="navbar-brand" style="margin-top: -9px; margin-left: 22px;">
			<img src="/Project1/template/images/logontc.png" alt="" height="45">
		</a>
	</header>
	<ul class="nav navbar-top-links navbar-right" style="width: 83%;">
		<li class="dropdown" style="width: 92%;"><marquee
				style="padding-top: 5px; font-weight: bold; color: red; font-family: initial; font-style: italic; font-size: 16px;">©
				2021. Công ty TNHH Thương mại và dịch vụ kỹ thuật Ntc.</marquee></li>
		<li class="dropdown" style="float: right;">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
	   	    	<i class="icon-user "></i>&nbsp; <i class="icon-chevron-down "></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i
						class="icon-user"></i> Thông tin cá nhân </a></li>
				<li><a href="#"><i class="icon-gear"></i> Cài đặt </a></li>
				<li class="divider"></li>
				<li><a href="<c:url value="/thoat"/>"><i class="icon-signout"></i>
						Đăng xuất </a></li>
			</ul></li>
	</ul>
</nav>
</div>