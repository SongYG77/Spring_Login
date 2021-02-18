<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">

<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
부가적인 테마
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mycss.css">
<title>Login</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".register").on("click", function() {

			location.href = "/log/user";

		})
		$(".cencle").on("click", function() {

			location.href = "/log/";

		})

		$("#submit").on("click", function() {
			if ($("#userId").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#userId").focus();
				return false;
			}
			if ($("#userPW").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPW").focus();
				return false;
			}
		});
	})
</script>

</head>
<body style ="background-color: #34495e">
	<section id="container">
		<form action="/log/login" style = "width: 300px; height:600px; " method="post" class="loginForm">
		<h2>Login</h2>
			<div class="idForm">
				<input placeholder="ID" class="id" type="text" id="userID"
					name="userID" />
			</div>
			<div class="passForm">
				<input class="pw" type="password" id="userPW" name="userPW"
					class="pw" placeholder="PW" />
			</div>
			<c:if test="${msg ==false }">
					<div>
						<p style="color: red;">아이디와 비밀번호를 확인하세요</p>
					</div>
				</c:if>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">로그인</button>
				<button class="register btn btn-success" type="button">회원가입</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
				<br> <a href="/log/findid"> 아이디 찾기 </a><br> <a
					href="/log/findpw"> 비밀번호 찾기</a>
			</div>
		</form>
	</section>
</body>
</html>