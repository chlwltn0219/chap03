<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sitemesh" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		border: 1px solid red;
	}
	.center{
		width: 75%;
		height: 300px;
		float: left;
	}
	.left{
		width: 25%;
		height: 300px;
		float: left;
	}
	.control_bar{
		clear: both;
	}
</style>
<meta charset="UTF-8">
<title>maindeco2.jsp <sitemesh:write property="title"/></title>
</head>
<body>

<div>
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<br>
	this is top<br>
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<br>
</div>
<div class="left">
	%%%%%%%%%%%%%%%%<br>
	this is left bar<br>
	%%%%%%%%%%%%%%%%<br>
</div>
<div class="center">
	<sitemesh:write property="body"/>
</div>
<hr class="control_bar">
<div>
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<br>
	this is bottom<br>
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<br>
</div>


</body>
</html>
