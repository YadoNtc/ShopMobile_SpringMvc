<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product"/>
<c:url var="ProductUrl" value="/admin-product"/>
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
				<div class="box">
					<header>
						<div class="icons">
							<i class="icon-th-large"></i>
						</div>
						<c:if test="${not empty product.id}">
							<h5>Cập nhật dữ liệu</h5>
						</c:if>
						<c:if test="${empty product.id}">
							<h5>Thêm dữ liệu</h5>
						</c:if>
						
						<div class="toolbar">
							<ul class="nav">
								<li>
									<div class="btn-group">
										<a class="accordion-toggle btn btn-xs minimize-box"
											data-toggle="collapse" href="#collapseOne"> <i
											class="icon-chevron-up"></i>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</header>
					<div id="collapseOne" class="accordion-body collapse in body">
					
					<c:if test="${not empty messageResp }">
						<p class="${alert}">
							${messageResp}
						</p>
					</c:if>
					
						<form id="formSubmit" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-lg-2">Tên Sản Phẩm</label>
								<div class="col-lg-10">
									<input id="name" name="name" class="form-control" type="text"
										value="${product.name}">

								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2">Mã Sản Phẩm</label>
								<div class="col-lg-10">
									<input id="code" name="code" class="form-control"
										type="text" value="${product.code}">

								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2">Đơn Giá</label>
								<div class="col-lg-10">
									<input id="price" name="price" class="form-control"
										type="number" value="${product.price}">

								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-lg-2">Hình ảnh</label>
								<div class="col-lg-10">
									<input id="productmodel_image" name="image" style="width: 50%; display: unset;" class="form-control"
										type="text" readonly="readonly" value="${product.image}">
									<input type="button" id="Browse" value="Select Image" class="btn btn-outline-secondary" style="border: 1px solid #ced4da;">
										<br>
								</div>
							</div>
				
							<div class="form-group">
								<label class="control-label col-lg-2">Mô Tả</label>
								<div class="col-lg-10">
									<input id="description" name="description" class="form-control"
										type="text" value="${product.description}">

								</div>
							</div>
							
							<div class="form-group">
                                <label class="control-label col-lg-2">Nội dung</label>
                                <div class="col-lg-10">                                
                                    <textarea id="detail" name="detail" class="form-control" style=" display: block;">${product.detail}</textarea> 
                                </div>
                            </div>
                            
							<div class="form-group">
								<label class="control-label col-lg-2">Số Lượng</label>
								<div class="col-lg-10">
									<input id="quantity" name="quantity" class="form-control"
										type="number" value="${product.quantity}">

								</div>
							</div>
							
							<div class="form-group">
								<label for="text1" class="control-label col-lg-2">Ngày
									Tạo</label>
								<div class="col-lg-10">
									<input id="today" name="createdDate" class="form-control"
										type="date" readonly="readonly" value="${product.createdDate}">

								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-lg-2">Danh Mục Sản Phẩm</label>
								<div class="col-lg-10">
									<select id="categoryId" name="categoryId" class="form-control">
										<c:if test="${empty product.categoryId}">
											<option value="">Chọn dòng máy</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.id}">${item.name}</option>
											</c:forEach>
										</c:if>
										
										<c:if test="${not empty product.categoryId}">
											<option value="">Chọn dòng máy</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.id}"
													<c:if test="${item.id == product.categoryId}">
														selected="selected"
													</c:if>>
													${item.name}
												</option>
				
											</c:forEach>
										</c:if>										
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2">Nhà Sản Xuất</label>
								<div class="col-lg-10">
									<select id="producerId" name="producerId" class="form-control">
									<c:if test="${empty product.producerId}">
										<option value="">Chọn nhà sản xuất</option>
										<c:forEach var="item" items="${producer}">
											<option value="${item.id}">${item.name}</option>
										</c:forEach>										
									</c:if>
									<c:if test="${not empty product.producerId}">
										<option value="">Chọn nhà sản xuất</option>
										<c:forEach var="item" items="${producer}">
											<option value="${item.id}"
												<c:if test="${item.id == product.producerId}">
													selected = "selected"
												</c:if>>
											${item.name}
											</option>
										</c:forEach>	
									</c:if>
									</select>
								</div>
							</div>
							
							<div class="form-actions no-margin-bottom"
								style="text-align: center;">
								<a href="#" type="button" class="btn btn-default">Quay
									lại</a> 
								<c:if test="${not empty product.id }">
									<input type="button" id="btnAddOrUpdate" class="btn btn-primary" value="Cập nhật">
								</c:if>
								<c:if test="${empty product.id }">
									<input type="button" id="btnAddOrUpdate" class="btn btn-primary" value="Thêm">
								</c:if>
								
							</div>
							<input type="hidden" id="id" name="id" value="${product.id}"> 
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var editor = '';
$(document).ready(function () {
document.querySelector("#today").valueAsDate = new Date();
	editor = CKEDITOR.replace('detail');
	CKFinder.setupCKEditor(editor, '<c:url value="/ckfinder"/>');
	 $('#Browse').on('click', function (e) {
	        e.preventDefault();
	        var finder = new CKFinder();
	        finder.selectActionFunction = function (url) {
	            $('#productmodel_image').val(url);
	        };
	        finder.popup();
	    });

	 $('#btnAddOrUpdate').click(function (e) {
		e.preventDefault();
		var data = {};
		var formData = $('#formSubmit').serializeArray();
		$.each(formData, function (i, v) {
			data[""+v.name+""] = v.value;
		});
		// Lay data trong ckeditor
		//data["detail"] = editor.getData();
		data["detail"] = CKEDITOR.instances.detail.getData();
		var id = $('#id').val();
		if (id == "") {
			addProduct(data);
		} else {
			updateProduct(data);
		}
	});
	
	 function addProduct(data) {
			$.ajax({
				type: "POST",
				url: "${APIurl}",
				contentType: "application/json", // Dinh nghia kieu du lieu gui cho SV
				data: JSON.stringify(data), // Chuyen OBj jvscript ---> json
				dataType: "json",
				success: function (result) { //result la productModel
					window.location.href = "${ProductUrl}?type=edit&id="+result.id+"&message=insert_success";
				},
				error: function (error) {
					window.location.href = "${ProductUrl}?type=list&maxPageItem=2&page=1&message=error_system";
				}
			});
		}
	
	function updateProduct(data) {
		$.ajax({
			url: "${APIurl}",
			type: "PUT",
			contentType: "application/json",
			data: JSON.stringify(data),
			dataType: "json",
			success: function (result) {
				window.location.href = "${ProductUrl}?type=edit&id="+result.id+"&message=update_success";
			},
			error: function (error) {
				window.location.href = "${ProductUrl}?type=list&maxPageItem=2&page=1&message=error_system";
			}
		});
	} 
});
</script>