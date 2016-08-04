<%@page import="com.hybrid.domain.MemberInfo"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regist.jsp</title>
</head>
<body>

id = ${memberInfo.id} <br>
name = ${memberInfo.name} <br>
email = ${memberInfo.email} <br>

<hr>
<%
	MemberInfo m = (MemberInfo) request.getAttribute("memberInfo");
%>
id = <%= m.getId() %> <br>
name = <%= m.getName() %> <br>
email = <%= m.getEmail() %> <br>

</body>
</html>
