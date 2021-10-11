<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<div id="content">
<div class="inner">
	<div class="row">
		<div class="col-lg-12">
			<h3>Sản phẩm</h3>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-lg-12">
			<div id="div-5" class="accordion-body collapse in body">
				<div class="form-group row">
					<div class="col-lg-4"></div>
					<div class="col-lg-5" style="margin-bottom: -8px;">
						<form action="#" class="form-horizontal" method="post">
							<div class="form-group input-group">
								<input path="name" type="text" id="name" name="name"
									placeholder="Tên sản phẩm" value=""
									class="form-control" /> <span class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="icon-search"></i>
									</button>
								</span>
							</div>
						</form>
					</div>
					<div class="col-lg-3">
						<div id="AlertBox" class="a hiden"
							style="margin-top: 6px; font-size: large; color: #468847;">
							${notificationsSuccessfully}</div>
						<div id="AlertBox2" class="b hiden"
							style="margin-top: 6px; font-size: large; color: #b94a48;">
							${notificationsError}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					Màn hình hiển thị dữ liệu
					<div style="float: right">
						<a href="<c:url value="/admin-product?type=edit"/>" class="btn btn-default btn-sm"
							style="margin-top: -5px"> Thêm Mới </a>
					</div>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
					
					<form id="submitForm" action="<c:url value="/admin-product"/>" method="get">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th style="width: 150px;">Mã Sản Phẩm</th>
									<th style="width: 150px;">Tên Sản Phẩm</th>
									<th style="width: 150px;">Hình Ảnh</th>
									<th style="width: 150px;">Đơn Giá</th>
									<th style="width: 150px;">Số Lượng</th>							
									<th style="width: 150px;">Thao Tác</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${product.listResult}" var="p">
									<tr>
										<td>${p.code}</td>
										<td>${p.name}</td>
										<td><img src="${p.image}" width="220px;" height="175px;" /></td>
										<td>
											<fmt:setLocale value = "vi_VN"/>
         									<fmt:formatNumber pattern="#,###,###" value ="${p.price}" type = "currency"/>VND
										</td>
										<td>${p.quantity}</td>									
										<td>
											<c:url var="editUrl" value="/admin-product">
												<c:param name="type" value="edit"/>
												<c:param name="id" value="${p.id}"/>
											</c:url>
											<a href="${editUrl}"												
												class="btn btn-primary" data-toggle="tooltip" title='Chỉnh sửa'>
												<i class="icon-pencil icon-white"></i>
											</a>
											<a href="#"
												class="btn btn-danger" data-toggle="tooltip" title='Xóa sản phẩm'
												onclick="return confirm('Bạn có chắc chắn muốn xóa bản ghi này?')">
												<i class="icon-remove icon-white"></i>
											</a>									
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<!--Pagination-->
						<nav aria-label="Page navigation" style="display: flex; justify-content: center;">
							<ul class="pagination" id="pagination"></ul>
						</nav>
						<!--End Pagination-->
							
						<input type="hidden" id="page" value="" name="page"> 
						<input type="hidden" id="limit" value="" name="limit">
		
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
	var totalPages = ${product.totalPage};
	var currentPage = ${product.page};
	var limit = 2;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages : totalPages,
			visiblePages : 5,
			startPage : currentPage,
			onPageClick : function(event, page) {
				//console.info(page + ' (from options)');
				if (currentPage != page) {
					// Truyền giá trị cho input là 1 page
					$('#limit').val(limit);
					$('#page').val(page);
					$('#submitForm').submit();		
				}
			}
		});
	});

</script> 