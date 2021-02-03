<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Login</title>
<script>
$(document).ready(function(){
	$(".register").on("click", function(){
		
		location.href = "/log/user";
				    	
	})
	
	$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPW").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPW").focus();
					return false;
				}
	});
})
</script>

</head>
<body>
	<section id="container">
		<form action="/log/login" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userID">   아이디</label> <input
					class="form-control" type="text" id="userID" name="userID" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userPW">   패스워드</label> <input
					class="form-control" type="password" id="userPW" name="userPW" />
			</div>
			<div class="form-group has-feedback">
				&nbsp &nbsp<button class="btn btn-success" type="submit" id="submit">로그인</button>
				&nbsp &nbsp<button class="register btn btn-success" type="button">회원가입</button>
			</div>
			<c:if test="${msg ==false }">
			<div><p style="color : red;">&nbsp &nbsp아이디와 비밀번호를 확인하세요</p></div>
			</c:if>
		</form>
	</section>
</body>
</html>