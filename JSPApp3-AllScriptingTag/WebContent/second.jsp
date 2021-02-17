<%@page import="java.util.Calendar"%>
<%@ page isELIgnored="false"%>
<!-- Declaration Tag   =>goes Out _jspService()-->
<%!public String wishMessageGenerator(String user) {

		//get System Hour Time
		Calendar cal = Calendar.getInstance();
		int hour = cal.get(Calendar.HOUR_OF_DAY);//24 hour format

		if (hour < 12) {
			return "Good Morning " + user;
		} else if (hour < 16) {
			return "Good AfterNoon " + user;
		} else if (hour < 20) {
			return "Good Evening " + user;
		} else {
			return "Good Night " + user;
		}

	}%>


<!-- Template Text -->
<h1 align="center" style="color: red">Welcome To JSP page</h1>

<!-- Expression Tag -->
<h2 align="center" style="color: green">
	Date and Time::<%=new java.util.Date()%></h2>


<!-- Scriptlet Tag   => code goes inside _jspService()-->
<%
	String user = request.getParameter("user");
%>

<h2 align="center" style="color: green">
	Wish Message::<%=wishMessageGenerator(user)%>
	<br> <br> request object class name::<%=request.getClass()%>
	<br> response object class name::<%=response.getClass()%>
	<br> page object class name::<%=page.getClass()%>
	<br>pageContext object class name::<%=pageContext.getClass()%>
	<br> config object class name::<%=config.getClass()%>
	<br>application object class name::<%=application.getClass()%>
	<br>session object class object::<%=session.getClass()%>
	<br>out object class object name::<%=out.getClass()%>
</h2>

