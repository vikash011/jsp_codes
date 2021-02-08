<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>first.jsp</title>
</head>
<body>
	<h1 style="color:red">Welcome To JSP(public Area)</h1>
	<br> System Date and Time::
	<%
		java.util.Date d = new java.util.Date();
	     out.println(d);
	%>
</body>
</html>