<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useApplicationLog.jsp</title>
</head>
<body>

<%
	application.log("메시지 로그 기록");
	log("메시지 로그 기록 2");
%>
로그 메시지를 기록합니다.

</body>
</html>