<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- �ΰ����� �׸� -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>register success</title>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script>
	alert("Welcome");
	$(document).ready(function() {
		$(".golog").on("click", function() {

			location.href = "/log/login";

		})
	})
</script>
</head>
<body>
	<section id="container">
		<form action="/log/clear" method="post">
			<h1>  ȸ������ �Ϸ�   </h1>
			<div class="form-group has-feedback">
				<button class="golog btn-success" type="submit" id="submit">�α���</button>
			</div>
		</form>
	</section>
</body>
</html>