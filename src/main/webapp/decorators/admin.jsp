<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="<c:url value='/template/paging/jquery.twbsPagination.js' />" type="text/javascript"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<link rel="stylesheet" href="<c:url value="/template/admin/css/main.css" />"> 
<link rel="stylesheet" href="<c:url value="/template/admin/css/MoneAdmin.css"/>">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

<script src="<c:url value='/ckeditor/ckeditor.js' />"></script>
<script src="<c:url value='/ckfinder/ckfinder.js' />"></script>
</head>
<body class="padTop53">

	<div id="wrap">
		<%@ include file="/common/admin/header.jsp" %>
		
		<%@ include file="/common/admin/menu.jsp" %>
		
		<dec:body/>
	</div>
	
	<%@ include file="/common/admin/footer.jsp" %>


</body>
</html>