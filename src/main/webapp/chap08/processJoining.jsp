<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberInfo" class="com.hybrid.domain.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processJoining.jsp</title>
</head>
<body>

<table border="1">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty name="memberInfo" property="id" /></td>
		<td>암호</td>
		<td><jsp:getProperty name="memberInfo" property="password" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="memberInfo" property="name" /></td>
		<td>이메일</td>
		<td><jsp:getProperty name="memberInfo" property="email" /></td>
	</tr>
</table>

</body>
</html>