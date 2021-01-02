<%@page import="java.io.PrintWriter"%>
<%@page import="packk.DbConnection" %>
<%@page import="java.sql.*" %>

<a href="welcomeAdmin.jsp">Add more property!</a>

<h2>welcome here!</h2>

<%

try{
	
Connection conn=DbConnection.getConnection();
response.setContentType("text/html");
PrintWriter in=response.getWriter();

PreparedStatement ps=conn.prepareStatement("select * from property");
ResultSet result=ps.executeQuery();

out.println("<html><head><title>show_data</title></head><body><center><table border='2px'><form='showDataAction.jsp' method='post'>");
out.println("<tr><th>property_name</th><th>picture</th><th>email</th><th>Mobile_number</th><th>address_Line1</th><th>address_Line2</th><th>city</th><th>state</th><th>pin_no</th><th>Description</th><th>Edit</th><th>Delete</th></tr>");

while(result.next())
	out.println("<tr><td>"+result.getString(1)+"</td><td>"+ "<img src='" +	result.getString(2) + "' width='200px' height='200px' alt="+ result.getString(2)  +">"+"</td><td>"+result.getString(3)+"</td><td>"+result.getString(4)+"</td><td>"+result.getString(5)+"</td><td>"+result.getString(6)+"</td><td>"+result.getString(7)+"</td><td>"+
result.getString(8)+"</td><td>"+result.getString(9)+"</td><td>"+result.getString(10)+
"</td><td><a href=edit.jsp?property_name="+result.getString(1)+
				//"&picture="+result.getString(2)+
				"&email="+result.getString(3)+
				"&number="+result.getString(4)+
				"&address_line1="+result.getString(5)+
				"&address_line2="+result.getString(6)+
				"&city="+result.getString(7)+
				"&state="+result.getString(8)+
				"&pin="+result.getString(9)+
				"&description="+result.getString(10)+">EDIT</a></td><td><a href=delete.jsp?email="+result.getString(3)+">delete</a></td></tr>");


}
catch(Exception e)
{
	e.printStackTrace();
}
%>


