<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection"%>
<%@page import="java.sql.*" %>

<%

try{
	

Connection conn=DbConnection.getConnection();
response.setContentType("text/html");


String fname=request.getParameter("first_name");
String lname=request.getParameter("last_name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String re_password=request.getParameter("re-password");

PreparedStatement ps=conn.prepareStatement("insert into boot values(?,?,?,?,?)");

ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, email);
ps.setString(4, password);
ps.setString(5, re_password);

int i=ps.executeUpdate();
if(i>0)
{
	response.sendRedirect("index.jsp");
}
else{
	out.println("ooops somthing is wrong please try <a href='index.jsp'>again</a>");
}



}
catch(Exception e)
{
	e.printStackTrace();
}


%>