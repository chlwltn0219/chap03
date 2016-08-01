<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readFileDirectly.jsp</title>
</head>
<body>

<%
	char[] buff = new char[128];
	int len = -1;
	
	String filePath = "D:\\03_Src\\jsp\\chap03\\src\\main\\webapp\\chap05" + "\\message\\notice.txt";
	
	try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "UTF-8")) {
		
		while((len = fr.read(buff)) != -1) {
			out.print(new String(buff, 0 ,len));
		}
	} catch (IOException ex) {
		out.println("익셉션 발생: " + ex.getMessage());
	}
%>
</body>
</html>