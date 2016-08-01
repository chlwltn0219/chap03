<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readFileUsingURL.jsp</title>
</head>
<body>

<%
	String resourcePath = "/chap05/message/notice.txt";
	char[] buff = new char[128];
	int len = -1;
	URL url = application.getResource(resourcePath);
	
	try (InputStreamReader br = new InputStreamReader(url.openStream(),"UTF-8")) {
		while ((len = br.read(buff)) != -1) {
			out.println(new String(buff, 0, len));
			System.out.println(new String(buff, 0, len));
		}
	} catch (IOException ex) {
		out.println("익셉션 발생:"+ex.getMessage());
	}
%>

</body>
</html>