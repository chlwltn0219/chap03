<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>

<h1>Login</h1>

<form action="loginProcess.jsp" method="post">
	<label>ID : <input type="text" name="id"/></label> <br>
	<label>PW : <input type="text" name="pw"/></label> <br>
	
	<input type="submit" value="login">
</form>

</body>
</html>
