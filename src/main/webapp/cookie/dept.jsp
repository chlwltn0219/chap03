<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="java.util.List"%>
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
	Cookie[] cookies = request.getCookies();
	
	boolean loginStatus = false;
	
	if(cookies != null)
	for (Cookie c : cookies) {
		String cname = c.getName();
		if(cname.equals("LOGIN")) {
			loginStatus = true;
		}
	}
	
	if (loginStatus != true) {
		response.sendRedirect("/cookie/loginForm.jsp");
		return ;
	}

	ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);
	
	List<Dept> depts = mapper.readAll();
	
	for(Dept dept : depts) {
		System.out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc());
		out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc() + "<br>");
	}
%>

<a href="logout.jsp">로그아웃</a>

</body>
</html>