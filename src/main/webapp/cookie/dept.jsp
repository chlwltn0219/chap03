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

%>

<%
	ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);
	mapper.delete(55);
	/*
	 *	insert
	 */
	mapper.insert(new Dept(55, "aaa", "bbb"));
	Dept d = mapper.SelectByDeptno(55);
	System.out.println("Insert => " + d);
	out.println("Insert => " + d + "<br>");
	List<Dept> depts = mapper.SelectAll();
	
	for(Dept dept : depts) {
		System.out.println(dept);
		out.println("[" + dept + "]" + "<br>");
	}
	
	out.println("<hr>");
	System.out.println("============================================");
	
	/*
	 *	update
	 */
	mapper.update(new Dept(55, "aaabbb", "bbbaaa"));
	d = mapper.SelectByDeptno(55);
	System.out.println("Update => " + d);
	out.println("Update => " + d + "<br>");
	depts = mapper.SelectAll();
	
	for(Dept dept : depts) {
		System.out.println(dept);
		out.println("[" + dept + "]" + "<br>");
	}
	
	out.println("<hr>");
	System.out.println("============================================");
	
	/*
	 *	Delete
	 */
	d = mapper.SelectByDeptno(55);
	System.out.println("Delete => " + d);
	out.println("Delete => " + d + "<br>");
	mapper.delete(55);
	depts = mapper.SelectAll();
	
	for(Dept dept : depts) {
		System.out.println(dept);
		out.println("[" + dept + "]" + "<br>");
	}
	
	out.println("<hr>");
	System.out.println("============================================");
%>

<a href="logout.jsp">로그아웃</a>

</body>
</html>