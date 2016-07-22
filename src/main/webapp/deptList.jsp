<%@page import="com.hybrid.domain.Dept"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.annotations.Mapper"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="com.hybrid.fx.MainApplication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deptlist.jsp</title>
</head>
<body>
<h1>DeptList</h1>
<%
	DeptMapper mapper = MainApplication.ctx.getBean(DeptMapper.class);
	List<Dept> depts = mapper.readAll();
	
	for(Dept dept : depts) {
		System.out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc());
		out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc() + "<br>");
	}
%>
</body>
</html>