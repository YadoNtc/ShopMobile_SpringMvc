<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ"/></title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<link id="callCss" rel="stylesheet" href="<c:url value="/template/css/bootstrap.min.css" />" media="screen">
<link href="<c:url value="/template/css/base.css" />" rel="stylesheet" media="screen">
<link href="<c:url value="/template/css/bootstrap-responsive.min.css" />" rel="stylesheet">
<link href="<c:url value="/template/js/google-code-prettify/prettify.css"/>" rel="stylesheet">

</head>
<body>

<%@ include file="/common/web/header.jsp" %>

<div id="mainBody">
	<div class="container">
		<div class="row">
			<%@ include file="/common/web/menu.jsp" %>
			<dec:body/>	
		</div>
	</div>
</div>

<%@ include file="/common/web/footer.jsp" %>


<script src="<c:url value="/template/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/template/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/template/js/google-code-prettify/prettify.js" />"></script>
<script src="<c:url value="/template/js/bootshop.js" />"></script>
<script src="<c:url value="/template/js/jquery.lightbox-0.5.js" />"></script>
</body>
</html>