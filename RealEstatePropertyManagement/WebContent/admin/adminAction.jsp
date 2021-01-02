
<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection"%>
<%@page import="java.sql.Connection"%>

<%
response.setContentType("text/name");
PrintWriter in=response.getWriter();

Connection conn=DbConnection.getConnection();

	String uname = request.getParameter("email");
String pass = request.getParameter("password");

if (uname.equals("admin@gmail.com") && pass.equals("123456")) 
{
	response.sendRedirect("welcomeAdmin.jsp");
} 
else
{
	response.sendRedirect("error.jsp");
}
%>