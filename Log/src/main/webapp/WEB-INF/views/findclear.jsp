<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
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
						&nbsp 찾으시는 ID 입니다. <br>&nbsp ${findid}<br>
					</h2>
					&nbsp&nbsp<button class="golog btn-success" type="button">확인</button>
				</div>
			</c:if>
			<!-- 수정할 부분, PW를 찾는 경우면 새로운 PW입력으로 받을 예정 -->
			<c:if test='${findtype == "PW"}'>
				<div>
					<h2>
						<div class="form-group has-feedback">
							<label class="control-label" for="newpw">&nbsp 새로운 비밀번호를
								입력하세요.</label> <input class="form-control" type="text" id="newpw"
								name="newpw" />
							<div class="form-group has-feedback">
								<button class="btn btn-success" type="submit" id="submit">확인</button>
							</div>
						</div>
					</h2>
				</div>
			</c:if>
		</form>
	</section>

</body>
</html>