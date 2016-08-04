<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>

<form action="/session/loginProcess.jsp" method="post">
	<div>
		<label for="id">ID : </label>
		<input id="id" type="text" name="id" />
	</div>
	<div>
		<label for="pw">PW : </label>
		<input id="pw" type="password" name="pw" />
	</div>
	<sec:csrfInput/>
	<input type="submit" value="login">
</form>


</body>
</html>
