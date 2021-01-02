<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection"%>
<%@page import="java.sql.*"%>

<%
	try {

	Connection conn = DbConnection.getConnection();
	response.setContentType("text/name");
	PrintWriter in=response.getWriter();
	
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String message = request.getParameter("message");

	PreparedStatement ps = conn.prepareStatement("insert into message values(?,?,?,?,?)");
	//ResultSet rs=ps.executeQuery();
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, email);
	ps.setString(4, mobile);
	ps.setString(5, message);

	int i=ps.executeUpdate();
	if(i>0) 
	{
		out.println("your information is successfully submited....you will get notify soon...<a href='welcome.jsp'>GO Back</a>");
	}
	else{
		out.println("oops somthing is wrong!");
	}
	

} catch (Exception e) {
	e.printStackTrace();
}
%>