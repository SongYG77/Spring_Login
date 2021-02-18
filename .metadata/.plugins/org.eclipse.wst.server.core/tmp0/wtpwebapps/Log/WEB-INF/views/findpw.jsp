<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
�ΰ����� �׸�
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mycss.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="EUC-KR">
<title>FIND ID</title>
<script>
	$(document).ready(function() {

		$(".cencle").on("click", function() {

			location.href = "/log/login";

		})

		$("#submit").on("click", function() {
			if ($("#userID").val() == "") {
				alert("ID�� �Է����ּ���.");
				$("#ID").focus();
				return false;
			} else if ($("#Name").val() == "") {
				alert("������ �Է����ּ���.");
				$("#Name").focus();
				return false;
			} else if ($("#Phone").val() == "") {
				alert("��ȭ��ȣ�� �Է����ּ���.");
				$("#Phone").focus();
				return false;
			}
		});

	})
</script>
</head>
<body style="background-color: #34495e">
	<section id="container">
		<form action="/log/findpw" method="post"
			style="width: 300px; height: 600px;" class="loginForm">
			<h2>PassWord �н�</h2>
			
			<div class="idForm">
				<input class="id" type="text" id="userID" name="userID"
					placeholder="ID" />
			</div>
			<div class="idForm">
				<input class="id" type="text" id="Name" name="Name"
					placeholder="NAME" />
			</div>
			<div class="idForm">
				<input class="id" type="text" id="Phone" name="Phone"
					placeholder="PHONE NUMBER" />
			</div>
			<c:if test="${error_nondata =='error' }">
				<div>
					<p style="color: red;">�Է��Ͻ� ������ �ٽ� Ȯ���ϼ���</p>
				</div>
			</c:if>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">Ȯ��</button>
				<button class="cencle btn btn-danger" type="button">���</button>
			</div>
		</form>
	</section>
</body>
</html>