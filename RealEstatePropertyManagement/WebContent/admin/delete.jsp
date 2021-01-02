<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection" %>
<%@page import="java.sql.*" %>

<%
Connection conn=DbConnection.getConnection();
response.setContentType("text/html");
PrintWriter in=response.getWriter();

String email=request.getParameter("email");

out.println("<html><head><title>delete_page</title><head><body><center><form action='DeleteAction.jsp' method='post'><h2>are you sure want to delete your record!</h2>");

String inputEmail="<input type='email' name='email' /required value="+email+">";
out.println(inputEmail);

out.println("<input type='submit' value='Delete!'>");

out.println("</form></body></html>");

%>



