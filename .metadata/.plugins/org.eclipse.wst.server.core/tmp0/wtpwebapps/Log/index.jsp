<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Home</title>
<script>
	$(document).ready(function() {
		$(".golog").on("click", function() {

			location.href = "/log/login";

		})
		$(".cencle").on("click", function() {

			location.href = "/log/logout";

		})
		$(".regist").on("click", function() {

			location.href = "/log/user";

		})
	})
</script>

</head>
<body>
	<section id="container">
		<form action="/">
			<div>
				<h1>&nbsp This is my First Spring Page<br>
					&nbsp Hello =ㅅ=</h1>
			</div>
			<div>
				<c:if test="${member != null}">
					<p>&nbsp ${name}님안녕하세요.</p>
				</c:if>
			</div>
			
			<div class="form-group has-feedback">
				<c:if test="${member != null}">
					&nbsp &nbsp<button class="cencle btn btn-danger" type="button">로그아웃</button>
				</c:if>
				<c:if test="${member == null}">

					&nbsp &nbsp<button class="golog btn-success" type="button">로그인</button>
					&nbsp &nbsp<button class="regist btn-success" type="button">회원가입</button>
				</c:if>
			</div>

		</form>
	</section>
</body>
</html>