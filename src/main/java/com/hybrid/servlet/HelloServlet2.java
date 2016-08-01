package com.hybrid.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Hello2")
public class HelloServlet2 extends HttpServlet {
    
	String host = "http://localhost:8080/";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("########################");
		System.out.println("HelloServlet2.doGet()...");
		System.out.println("########################");
		
		response.setContentType("text/html; setchar=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");

		out.println("<head>");
		out.println("<title>HelloServlet2</title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h1>HTML & JSP</h1>");
		out.println("<a href=" + host + "Hello.html> Hello.html </a><br>");
		out.println("<a href=" + host + "Hello.jsp> Hello.jsp </a><br>");
		out.println("<br>");
		out.println("<h1>JSP + DB</h1>");
		out.println("<a href=" + host + "deptList.jsp> deptList.jsp </a><br>");
		out.println("<br>");
		out.println("<h1>Directive(지시어)</h1>");
		out.println("<a href=" + host + "directive.jsp> directive.jsp </a><br>");
		out.println("<a href=" + host + "page.jsp> page.jsp </a><br>");
		out.println("<br>");
		out.println("<h1>Servlet</h1>");
		out.println("<a href=" + host + "Hello> Hello </a><br>");
		out.println("<br>");
		out.println("<h1>Encoding</h1>");
		out.println("<a href=" + host + "invalidCharset.jsp> invalidCharset.jsp </a><br>");
		out.println("<a href=" + host + "invalidCharset.jsp> invalidCharset.jsp </a><br>");
		out.println("<br>");
		out.println("<h1>Decralation</h1>");
		out.println("<a href=" + host + "decralation.jsp> decralation.jsp </a><br>");
		out.println("<a href=" + host + "useDecl.jsp> useDecl.jsp </a><br>");
		out.println("<a href=" + host + "useDecl2.jsp> useDecl2.jsp </a><br>");
		out.println("<br>");
		out.println("<h1>request 기본객체</h1>");
		out.println("<a href=" + host + "requestInfo.jsp> requestInfo.jsp </a><br>");
		out.println("<a href=" + host + "form.jsp> form.jsp </a><br>");
		out.println("<a href=" + host + "viewParameter.jsp> viewParameter.jsp </a><br>");
		out.println("<a href=" + host + "request.jsp> form.jsp </a><br>");
		out.println("<h1>redirect</h1>");
		out.println("<a href=" + host + "redirect.jsp> redirect.jsp </a><br>");
		out.println("<h1>sec/test/java/com.hybrid.http : java(Web Client)</h1>");
		out.println("<h1>sec/main/resource/http : get.txt</h1>");
		
		out.println("</body>");
		out.println("</html>");
	}

}
