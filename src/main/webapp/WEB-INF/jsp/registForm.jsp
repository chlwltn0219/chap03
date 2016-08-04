<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registForm.jsp</title>
</head>
<body>

<h1>회원가입</h1>

<form action="/member/regist" method="post">
	id : <input name="id" /> <br>
	name : <input name="name" /> <br>
	email : <input name="email" /> <br>
	<input type="submit" value="회원가입" />
</form>

</body>
</html>
