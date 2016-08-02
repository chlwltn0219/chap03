<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPageTest.jsp</title>
</head>
<body>
<h1>errorPage.jsp</h1>
<%= exception.getMessage()%>
<p>
<%= exception.getLocalizedMessage() %>
</p>
<!--
	<% 
		for(int i=0; i<512; i++)
			out.println((char)i);

		exception.printStackTrace();
	%> 
 -->
</body>
</html>