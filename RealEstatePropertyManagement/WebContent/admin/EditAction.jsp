<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection" %>
<%@page import="java.sql.*" %>


<% 
try{
	
	Connection conn=DbConnection.getConnection();
	response.setContentType("text/html");
	PrintWriter in=response.getWriter();
	
	String property_name=request.getParameter("property_name");
	String picture=request.getParameter("picture");
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile");
	String address1=request.getParameter("address1");
	String address2=request.getParameter("address2");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String pin=request.getParameter("pin");
	String Description=request.getParameter("description");
	
	out.println(email+mobile);
	
	PreparedStatement ps=conn.prepareStatement("update  property set property_name=?, picture=?, mobile=?, address1=?, address2=?, city=?, state=?, pin=?, description=? where email=?");
	
	ps.setString(1, property_name);
	ps.setString(2, picture);
	ps.setString(10, email);
	ps.setString(3, mobile);
	ps.setString(4, address1);
	ps.setString(5, address2);
	ps.setString(6, city);
	ps.setString(7, state);
	ps.setString(8, pin);
	ps.setString(9, Description);

	int i=ps.executeUpdate();
	if(i>0)
	{
		request.getRequestDispatcher("showData.jsp").forward(request, response);
		//response.sendRedirect("showData.jsp");
	}
	else{
		//response.sendRedirect("edit.jsp");
		out.println("oops somthing is wrong! go  <a href='edit.jsp'>BACK</a>");
	}
	
	
}
catch(Exception e)
{
	e.printStackTrace();
}


%>

