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
		out.println("<a href=" + host + "Hello> Hello </a><br>");
		out.println("<a href=" + host + "Hello.jsp> Hello.jsp </a><br>");
		out.println("<a href=" + host + "Hello.html> Hello.html </a><br>");
		out.println("<a href=" + host + "deptList.jsp> deptList.jsp </a><br>");
		out.println("<a href=" + host + "directive.jsp> directive.jsp </a><br>");
		out.println("</body>");
		out.println("</html>");
	}

}
