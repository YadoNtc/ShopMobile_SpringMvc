<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<div class="container h-100">
	<div class="d-flex justify-content-center h-100">
		<div class="user_card">
			<div class="d-flex justify-content-center">
				<div class="brand_logo_container">
					<img
						src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png"
						class="brand_logo" alt="Logo">
				</div>
			</div>
			<div class="d-flex justify-content-center form_container">
			
				<form class="formSubmit" action="j_spring_security_check" method="post">
					<c:if test="${param.incorrectAccount != null}">
						<p class="warning">
							Username or password is invalid!
						</p>
					</c:if>
					<c:if test="${param.accessDenied != null}">
						<p class="warning">
							You not permission!
						</p>
					</c:if>
					
					<div class="input-group mb-3">
						<div class="input-group-append">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>						
						<input type="text" name="spring_username" class="form-control input_user"
							placeholder="userName">
					</div>
					<div class="input-group mb-2">
						<div class="input-group-append">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="spring_password" class="form-control input_pass"
							placeholder="password">
					</div>
					
					<div class="d-flex justify-content-center mt-3 login_container">
						<button type="submit" name="button" class="btn login_btn">Đăng nhập</button>
					</div>
				</form>
			</div>

			
		</div>
	</div>
</div>