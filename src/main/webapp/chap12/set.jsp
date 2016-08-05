<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set.jsp</title>
</head>
<body>

<%-- ${fn:toUpperCase("hello")} --%>
<!-- <hr> -->


<!-- EL 변수 생성 page/request/session/application -->
<%-- <c:set var="xx" value="Hello" scope="application"/> --%>
<%
	pageContext.setAttribute("xx", "Hello JSTL!");
	request.setAttribute("xx", "Hello JSTL!");
	session.setAttribute("xx", "Hello JSTL!");
	application.setAttribute("xx", "Hello JSTL!");
%>

<%-- <c:remove var="xx" scope="page"/> --%>
<%-- <c:remove var="xx" scope="request"/> --%>
<c:remove var="xx" scope="session"/>
<c:remove var="xx" scope="application"/>

<%
	pageContext.removeAttribute("xx", pageContext.PAGE_SCOPE);
// 	request.removeAttribute("xx");
// 	session.removeAttribute("xx");
	application.removeAttribute("xx");
%>

pageScope.xx = [ ${ pageScope.xx } ]<br>
requestScope.xx = [ ${ requestScope.xx } ]<br>
sessionScope.xx = [ ${ sessionScope.xx } ]<br>
applicationScope.xx = [ ${ applicationScope.xx } ]<br>
</body>
</html>