<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>initParam.jsp</title>
</head>
<body>

<%= application.getInitParameter("logEnabled") %> <br>
<%= application.getInitParameter("debugLevel") %> <br>
<%= application.getInitParameter("xxx") %> <br>
<hr>
${ initParam.logEnabled } <br>
${ initParam.debugLevel } <br>
${ initParam.xxx } <br>

</body>
</html>