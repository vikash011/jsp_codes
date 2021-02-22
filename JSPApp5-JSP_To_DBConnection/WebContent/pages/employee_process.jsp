<%@page isELIgnored="false"%>
<%@page import="java.sql.*"%>

<%!Connection con = null;
	PreparedStatement ps1 = null;
	PreparedStatement ps2 = null;

	public void init() {

		/* creating servletconfig object */
		ServletConfig cg = getServletConfig();

		/*getting url,user,pwd  */
		String url = cg.getInitParameter("jdbcurl");
		String user = cg.getInitParameter("dbuser");
		String pwd = cg.getInitParameter("dbpwd");

		try {

			/* loading jdbc driver class */
			Class.forName("com.mysql.jdbc.Driver");

			/*creating jdbc connection  */
			con = DriverManager.getConnection(url, user, pwd);

			/*creating prepared statemnt  */
			ps2 = con.prepareStatement("select empid,ename,esal,eaddrs from Employee_JSp ");

			ps1 = con.prepareStatement("INSERT INTO EMPLOYEE_JSP (ename,esal,eaddrs) VALUES(?,?,?)");

		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();

		} catch (SQLException se) {
			se.printStackTrace();

		}

	}%>

<%
	String s1Val = request.getParameter("s1");
if (s1Val.equalsIgnoreCase("register")) {

	
	//getting request  parameter object
	String ename = request.getParameter("ename");
	String eaddrs = request.getParameter("eaddrs");
	String esal = request.getParameter("esal");

	ps1.setString(1, ename);
	ps1.setString(2, esal);
	ps1.setString(3, eaddrs);

	
	/* executing update querry */
	int result = ps1.executeUpdate();

	if (result == 0) {
%>
       <h1 align="center" style="color: Green">"Problem Employee  Registration"</h1>
	                                                            
<%
	} else {
%>
       <h1 align="center" style="color: Green">"Successful Employee Registration"</h1>
	
<%
	}
}
      if (s1Val.equalsIgnoreCase("link")) {
       ResultSet rs = ps2.executeQuery();
       %>
       
       
       <!-- printing employee data using table tag -->
       <table style="background-color:cyan" align='center'>
        <tr><th>Employee Id</th><th>Employee Name</th><th>Employee Salary</th><th>Employee Address</th></tr>
       <% while(rs.next()){ %>
            
            <tr>
               <td><%=rs.getString(1) %></td>
               <td><%=rs.getString(2) %></td>
               <td><%=rs.getString(3) %></td>
               <td><%=rs.getString(4) %></td>
            </tr>
            
       <%} %>
       </table>    
<%       
}%>





<%!public void Destroy() {

		if (ps1 != null) {
			try {
				ps1.close();
			} catch (SQLException sql) {
				sql.printStackTrace();
			}
		}
		if (ps2 != null) {
			try {
				ps2.close();
			} catch (SQLException sql) {
				sql.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException sql) {
				sql.printStackTrace();
			}
		}
	}%>






