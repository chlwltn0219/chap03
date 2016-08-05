<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if.jsp</title>
</head>
<body>

<c:set var="name" value="hong" />
<c:set var="address" value="서울" />

<c:if test="${name == 'hong'}">
	<h1>if(name == 'hong')</h1>
</c:if>

<c:if test="${name eq 'hong'}">
	<h1>if(name eq 'hong')</h1>
</c:if>
<hr>
<%
	if(true){
%>
	<h1>if(true)</h1>
<%
	} 
%>
<%
	if(false){
%>
	<h1>if(false)</h1>
<%
	} 
%>

</body>
</html>
