<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>	
<!DOCTYPE html>

<div id="content">
	<div class="inner">
		<div class="row">
			<div class="col-lg-12">
				<h3>Loại sản phẩm</h3>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-lg-12">
				<div id="div-5" class="accordion-body collapse in body">
					<div class="form-group row">
						<div class="col-lg-4"></div>
						<div class="col-lg-5" style="margin-bottom: -8px;">
							<form action="initfindCate.htm" class="form-horizontal"
								method="post">
								<div class="form-group input-group">
									<input path="name" type="text" id="name" name="name"
										placeholder="Tên danh mục" value="${currentName}"
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
							<a href="#" class="btn btn-default btn-sm"
								style="margin-top: -5px"> Thêm Mới </a>
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
						
						<form id="submitForm" action="<c:url value="/admin-catagory"/>" method="get">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th style="width: 150px;">Thứ Tự</th>
										<th style="width: 150px;">Tên Danh Mục</th>																	
										<th style="width: 150px;">Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${category.listResult}" var="item">
										<tr>
											<td>${item.id}</td>
											<td>${item.name}</td>
											<td><a
												href="initUpdateCategory.htm?categoryID=${c.categoryID}"
												class="btn btn-primary"><i
													class="icon-pencil icon-white"></i></a> <a
												href="deleteCategory.htm?categoryID=${c.categoryID}&&find=${currentName}&&page=${currentPage}"
												class="btn btn-danger"
												onclick="return confirm('Bạn có chắc chắn muốn xóa bản ghi này?')"><i
													class="icon-remove icon-white"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
							<nav aria-label="Page navigation">
								<ul class="pagination" id="pagination"></ul>
							</nav>
							
							<input type="hidden" id="page" value="" name="page"> 
							<input type="hidden" id="maxPageItem" value="" name="maxPageItem">
							<input type="hidden" id="sortName" value="" name="sortName">
							<input type="hidden" id="sortBy" value="" name="sortBy">
							
						</form>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	var totalPages = ${category.totalPage};
	var currentPage = ${category.page};
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
					$('#maxPageItem').val(limit);
					$('#page').val(page);
					$('#sortName').val('name');
					$('#sortBy').val('desc');
					$('#submitForm').submit();		
				}
			}
		});
	});

</script>