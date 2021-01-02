<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection" %>
<%@page import="java.sql.*" %>

<%

	try{
Connection conn=DbConnection.getConnection();
response.setContentType("text/html");
PrintWriter in=response.getWriter();

String email=request.getParameter("email");
String pass=request.getParameter("password");
String repass=request.getParameter("re-password");

PreparedStatement ps=conn.prepareStatement("update boot set password=?, re_password=?  where email=?");

ps.setString(3, email);
ps.setString(1, pass);
ps.setString(2, repass);

int i=ps.executeUpdate();
if(i>0)
{
	out.println("your password is successfully updated...please go back for <a href='Sign_up.jsp'>Login</a>");
}
else{
	out.println("oops somthing is wrong please try <a href='forgot.jsp'>Forgot</a>");
	response.sendRedirect("forgot.jsp");
}


	}
catch(Exception e)
{
	e.printStackTrace();
}
%>