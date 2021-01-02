<%@page import="java.io.PrintWriter"%>
<%@ page import="packk.DbConnection"%>
<%@ page import="java.sql.*"%>
<%
	try {
	Connection conn = DbConnection.getConnection();
	response.setContentType("text/html");

	String name = request.getParameter("property_name");
	String pic = request.getParameter("picture");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pin = request.getParameter("pin");
	String description = request.getParameter("description");

	out.println(email + mobile);

	out.println(
	"<html><head><title>edit_page!</title></head><body><form action='EditAction.jsp' method='post'><center><table border='1px'><h3>Please edit here your info!</h3>");

	String inputProperty = "<tr><th>property_name</th><td><input type='text'  name='property_name' value=" + name
	+ " /required></td></tr><br>";
	out.println(inputProperty);

	String inputpic = "<tr><th>property_pic</th><td><input type='file'  name='picture' value=" + pic
	+ " /required></td></tr>";
	out.println(inputpic);

	String inputemail = "<tr><th>Email</th><td><input type='text'  name='email' value=" + email
	+ " /required></td></tr>";
	out.println(inputemail);

	String inputmobile = "<tr><th>Mobile</th><td><input type='text'  name='mobile' value=" + mobile
	+ " /required></td></tr>";
	out.println(inputmobile);

	String inputaddress1 = "<tr><th>address1</th><td><input type='text'  name='address1' value=" + address1
	+ " /required></td></tr>";
	out.println(inputaddress1);

	String inputaddress2 = "<tr><th>address2</th><td><input type='text'  name='address2' value=" + address2
	+ " /required></td></tr>";
	out.println(inputaddress2);

	String inputcity = "<tr><th>City</th><td><input type='text'  name='city' value=" + city + " /required></td></tr>";
	out.println(inputcity);

	String inputstate = "<tr><th>State</th><td><input type='text'  name='state' value=" + state
	+ " /required></td></tr>";
	out.println(inputstate);

	String inputpin = "<tr><th>pin</th><td><input type='text'  name='pin' value=" + pin + " /required></td></tr>";
	out.println(inputpin);

	String inputdesc = "<tr><th>description</th><td><input type='text'  name='description' value=" + description
	+ " /required></td></tr>";
	out.println(inputdesc);

	out.println("<tr><th>click here!</th><td><input type='submit' value ='Edit&Save'></td></tr>");

	out.println("</table></center></form></body></html>");

} catch (Exception e) {
	e.printStackTrace();
}
%>