<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeObject.jsp</title>
</head>
<body>
<%
	member.setId("madvirus");
	member.setName("최범균");
%>	
<jsp:forward page="/chap08/useObject.jsp" />
</body>
</html>