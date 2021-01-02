<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection" %>
<%@page import="java.sql.*" %>

<%
try{
	Connection conn=DbConnection.getConnection();
	response.setContentType("text/html");
	

	String email=request.getParameter("email");
	String pass=request.getParameter("password");
	
	//HttpSession session=request.getSession()
	
	
	PreparedStatement ps=conn.prepareStatement("select * from boot where email=? and password=?");
	

	ps.setString(1, email);
	ps.setString(2, pass);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("welcome.jsp");
	}
	else{
		out.println("ooops some thing is wrong  please try <a href='Sign_up.jsp'>Again!</a>");
	}
	
}catch(Exception e)
{
	e.printStackTrace();
}

%>