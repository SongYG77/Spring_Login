<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- �ΰ����� �׸� -->
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
	})
</script>

</head>
<body>
	<section id="container">
		<form action="/">
			<div>
				<h1>This is my First Spring Page<br>
					Hello =��=</h1>
			</div>
			<div>
				<c:if test="${member != null}">
					<p>${name}�Ծȳ��ϼ���.</p>
				</c:if>
			</div>
			
			<div class="form-group has-feedback">
				<c:if test="${member != null}">
					&nbsp &nbsp<button class="cencle btn btn-danger" type="button">�α׾ƿ�</button>
				</c:if>
				<c:if test="${member == null}">

					&nbsp &nbsp<button class="golog btn-success" type="button">�α���</button>
				</c:if>
			</div>

		</form>
	</section>
</body>
</html>