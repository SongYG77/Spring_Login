<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- �ΰ����� �׸� -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="EUC-KR">
<title>Find Clear</title>

<script>
	$(document).ready(function() {
		$(".golog").on("click", function() {

			location.href = "/log/login";

		})

	})
</script>

</head>
<body>
	<section id="container">
		<form action="/log/findclear" method="post">
			<c:if test='${findtype == "ID"}'>
				<div>
					<h2>
						&nbsp ã���ô� ID �Դϴ�. <br>&nbsp ${findid}<br>
					</h2>
					&nbsp&nbsp<button class="golog btn-success" type="button">Ȯ��</button>
				</div>
			</c:if>
			<!-- ������ �κ�, PW�� ã�� ���� ���ο� PW�Է����� ���� ���� -->
			<c:if test='${findtype == "PW"}'>
				<div>
					<h2>
						<div class="form-group has-feedback">
							<label class="control-label" for="newpw">&nbsp ���ο� ��й�ȣ��
								�Է��ϼ���.</label> <input class="form-control" type="text" id="newpw"
								name="newpw" />
							<div class="form-group has-feedback">
								<button class="btn btn-success" type="submit" id="submit">Ȯ��</button>
							</div>
						</div>
					</h2>
				</div>
			</c:if>
		</form>
	</section>

</body>
</html>