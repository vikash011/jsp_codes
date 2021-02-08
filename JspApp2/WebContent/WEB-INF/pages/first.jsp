
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>first.jsp</title>
</head>
<body>
	<h1 align="center" style="color:red">Welcome To JSP(Private Area)</h1>
	<br>
	<div align="center"  style="color:green">
		<%
			Date d = new Date();
		    out.print(d);
		%>
	</div>
</body>
</html>