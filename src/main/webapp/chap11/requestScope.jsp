<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestScope.jsp</title>
</head>
<body>

<%
	request.setAttribute("xxx", "Hello EL!");
%>

<%= request.getAttribute("xxx") %>
<hr>
${ requestScope.xxx }
<hr>
${ xxx }
<hr>

</body>
</html>