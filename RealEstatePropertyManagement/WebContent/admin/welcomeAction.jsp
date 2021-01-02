<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection"%>
<%@page import="java.sql.*"%>

<%
	try {
		
	Connection conn = DbConnection.getConnection();
	response.setContentType("text/name");
	PrintWriter in = response.getWriter();

	String property_name = request.getParameter("property_name");
	String property_pic = request.getParameter("picture");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pin = request.getParameter("pin");
	String description = request.getParameter("description");

	PreparedStatement ps = conn.prepareStatement("insert into property values(?,?,?,?,?,?,?,?,?,?)");
	
	ps.setString(1, property_name);
	ps.setString(2, property_pic);
	ps.setString(3, email);
	ps.setString(4, mobile);
	ps.setString(5, address1);
	ps.setString(6, address2);
	ps.setString(7, city);
	ps.setString(8, state);
	ps.setInt(9, Integer.parseInt(pin));
	ps.setString(10, description);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("showData.jsp");
		out.println("your property is successfully submited...");
		
	}
	else{
		out.println("oops somthing is wrong <a href='welcomeAdmin.jsp'>GO BACK</a>");
	}
	
	
} catch (Exception e)
{
	e.printStackTrace();
}
%>