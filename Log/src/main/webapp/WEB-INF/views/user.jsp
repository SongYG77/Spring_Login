<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cencle").on("click", function() {

			location.href = "/log/login";

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
			if ($("#Name").val() == "") {
				alert("성명을 입력해주세요.");
				$("#Name").focus();
				return false;
			}
			if ($("#Phone").val() == "") {
				alert("전화번호를 입력해주세요.");
				$("#Phone").focus();
				return false;
			}
		});

	})
</script>
<body>
	<section id="container">
		<form action="/log/user" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userID">&nbsp 아이디</label> <input
					class="form-control" type="text" id="userID" name="userID"  placeholder="ID" />
				<c:if test="${overlap == -1}">
					<div>
						<p style="color: red;">&nbsp &nbsp 아이디가 중복됩니다.</p>
					</div>
				</c:if>
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userPW">&nbsp 패스워드</label> <input
					class="form-control" type="password" id="userPW" name="userPW"  placeholder="PW" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="Name">&nbsp 성명</label> <input
					class="form-control" type="text" id="Name" name="Name"  placeholder="NAME" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="Phone">&nbsp 전화번호</label> <input
					class="form-control" type="text" id="Phone" name="Phone"  placeholder="PHONE NUMBER" />
			</div>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">회원가입</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
			</div>
		</form>
	</section>

</body>

</html>