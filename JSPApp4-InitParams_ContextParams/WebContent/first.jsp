<%@page isELIgnored="false"%>


<h1 align="center" style="color: red">Welcome To JSP(init param and
	context param)</h1>

<%!public void init() {

		/*getting ServletConfig object   */
		ServletConfig cg = getServletConfig();

		/* getting ServletContext object */
		ServletContext sc = getServletContext();

		System.out.println("dbuser::" + sc.getInitParameter("dbuser"));
		System.out.println("dbpwd::" + cg.getInitParameter("dbpwd"));

		
		
		
		/*we have  to catch and handle exceptions for those codes which are outside the _jspService(-,-)  */

		/* try {
			Class.forName("java.util.Date");
		} catch (ClassNotFoundException cnf) {
			cnf.printStackTrace();
		
		} */
	}%>


