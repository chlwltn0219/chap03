<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie.jsp</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null)
	for (Cookie c : cookies) {
		out.println(c.getName() + " = " + c.getValue() + "<br>");
	}
	
	Cookie c = new Cookie("id", "hong");
	c.setPath("/chap09");
	
	response.addCookie(c);
%>

</body>
</html>
