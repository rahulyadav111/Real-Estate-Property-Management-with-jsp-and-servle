
<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection"%>
<%@page import="java.sql.*"%>

<%
	try {
	Connection conn = DbConnection.getConnection();
	response.setContentType("text/html");
	String email=request.getParameter("email");
	out.println(email);
	
	PreparedStatement ps = conn.prepareStatement("delete  from property where email=?");
	ps.setString(1, email);
	
	int i = ps.executeUpdate();
	if (i>0) 
	{
		response.sendRedirect("showData.jsp");
	} else
	{
		response.sendRedirect("delete.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>