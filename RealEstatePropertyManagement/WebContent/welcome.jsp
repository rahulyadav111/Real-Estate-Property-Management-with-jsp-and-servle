<!DOCTYPE html>

<%@page import="packk.DbConnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="java.io.PrintWriter"%>

<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>body {	}.form-group {	}.form-control1 {	width: 100%;	height: 70px;	text-color	="blue";}.input-field {	margin: 20px;}.input-field:hober {	background-color: #456782;}.input_field2 {	margin: 20px;}

.footer{
	background-color: lightgreen;
	height: 500px;
	width: 100%;
	
}
.card-text{
		width:100%;
		height:100px;

}
.btn{
	padding: 30px;
}
.submit{
			width: 80px;
			height:40px;
			color: red;
			border-radius: 10px;

}</style>
</head>
<body>

	<nav class="navbar navbar-inverse ">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Real Estate Property</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="Sign_up.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>




	<div class="container">



		<div class="container p-3 my-3 border">
			<h1>Welcome to BBDU Green city property!</h1>
			<p>This container has a border and some extra padding and
				margins.</p>



			<%
				try {
				Connection conn = DbConnection.getConnection();

				response.setContentType("text/html");
				PrintWriter in = response.getWriter();

				PreparedStatement ps = conn.prepareStatement("select * from property where email='bbdu@gmail.co.in'");
				ResultSet rs = ps.executeQuery();

				out.println("<html><head><title>home_page</title></head><body><table border='1px'>");
				out.println("<tr><th>property_Image</th><th>Description</th><th>Mobile_number</th><th>Email</th><tr>");

				while (rs.next())
					out.println("<tr><td>" + "<img src='" + rs.getString(2) + "' width='800px' height='500px' alt="
					+ rs.getString(2) + ">" + "</td><td><" + rs.getString(10) + "</td><td>" + rs.getString(4) + "</td><td>"
					+ rs.getString(3) + "</td></tr>");

				out.println("for more info visit this website <a href='next.jsp'>GO</a>");

				out.println("</table></body></html>");
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>


		</div>

		<div class="container p-3 my-3 bg-dark text-white">
			<h1>for more information!</h1>
			<p>this property here for sell you you are interested then you
				can contact me or if you want to purchase then click the BUY button
			</p>
			
			<input type="submit" value=Add_Card class="input-field">
			<input type="submit" value="Buy_Now!" class="input-field"> 


		</div>

		<div class="container p3 my-3 bg-warning text-white">
			<h2>Welcome to the Goal_smd property!</h2>
			<p>Goal property is the best property of one here!</p>

			<%
				try {

				Connection conn = DbConnection.getConnection();

				PreparedStatement ps = conn.prepareStatement("select * from property where email='goalinstitute@gmail.com.in'");
				ResultSet rs = ps.executeQuery();

				out.println("<html><head><title>goal_property_page</title></head><body><table border='1px'>");
				out.println("<tr><th>Picture!<th><th>Description</th><th>Email</th><th>Mobile_number</th></tr>");

				while (rs.next())

					out.println("<tr><td>" + "<img src='" + rs.getString(2) + "' width='800px' height='500px' alt="
					+ rs.getString(2) + ">" + "<td>" + rs.getString(10) + "</td><td>" + rs.getString(3) + "</td><td>"
					+ rs.getString(4) + "</td></tr>");

				out.println("</table></body></html>");

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>

			<input type="submit" value="Add_Card!" class="input-field"> <input
				type="submit" value="Buy_Now" class="input-field">

		</div>


		<div class="container p-3 my-3 bg-danger text-white">
			<h3>Welcome to Ramswaroop property!</h3>
			<p>hi user welcome here this property you can visit here and
				contact me for more info!</p>

			<%
				try {

				Connection conn = DbConnection.getConnection();

				PreparedStatement ps = conn.prepareStatement("select * from property where email='ramswaroop@gmail.com.in'");
				ResultSet rs = ps.executeQuery();

				out.println("<html><head><title>ramswaroop_property</title></head><body><table border='1px'>");
				out.println("<tr><th>Picture</th<th>Email</th><th>Contact_num</th></tr>");

				while (rs.next())
					out.println("<tr><td>" + "<img src='" + rs.getString(2) + "' width='800px' height='500px' alt="
					+ rs.getString(2) + ">" + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td></tr>");

				out.println("</table></body></html>");

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>

			<input type="submit" value="Add_Cart" class="input_field2"> <input
				type="submit" value="Buy_now" class="input_field2">

		</div>



		<div class="container p-3 my-3 bg-primary text-white">
			<h1>you can follow this location!</h1>
			<p>This container has a blue background color and a white text,
				and some extra padding and margins.</p>

			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.5083234034914!2d81.05288671432466!3d26.887358133138548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399be2970c968dd9%3A0x11a77b51a74f6cc7!2sBBD%20GREEN%20CITY%20Lucknow!5e0!3m2!1sen!2sin!4v1604521066333!5m2!1sen!2sin"
				width="600" height="450" frameborder="0" style="border: 0;"
				allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

		</div>

		<div class="container p-3 my-3 bg-primary text-white">
			<h1>Contact_us</h1>
			<p>this property here for sell you you are interested then you
				can contact me or if you want to purchase then click the BUY button
			</p>

			<form action="formAction.jsp" method="post">
				<div class="form-group">
					<label for="fname">First Name:</label> <input type="text"
						 name="fname" class="form-control" name="fname"
						placeholder="Enter enter your first name" id="fname" /required>
				</div>
				<div class="form-group">
					<label for="lname">Last_name:</label> <input type="text"
						name="lname" class="form-control" placeholder="Enter Last name" id="lname" /required>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email"
						name="email" class="form-control" placeholder="Enter Email" id="email" /required>
				</div>
				<div class="form-group">
					<label for="mobile_number">Mobile_number:</label> <input
						 type="number" class="form-control"  name="mobile" placeholder="Enter Last number" /required
						id="mobile">
				</div>

				<div class="form-group">
					<label for="mobile_number">Message:</label> <input type="text"
						name="message" class="form-control" placeholder="Enter your Message!" /required id="mobile">
				</div>

				<div class="form-group form-check">
					<label class="form-check-label"> <input
						class="form-check-input" type="checkbox"> Remember me
					</label>
				</div>
					<input type="submit" value="Submit!" class="submit">
				

			</form>

		</div>

		<!-- footer section start from here -->



		<footer class="footer">
		<div class="card-deck">
		<h2>Footer_section here </h2>
			<div class="card bg-warning">
				<div class="card-body text-center">
					<p class="card-text">Some text inside the first card</p>
				</div>
			</div>
			<div class="card bg-warning">
				<div class="card-body text-center">
					<p class="card-text">Some text inside the second card</p>
				</div>
			</div>
			<div class="card bg-primary">
				<div class="card-body text-center">
					<p class="card-text">Some text inside the third card</p>
				</div>
			</div>
			<div class="card bg-danger">
				<div class="card-body text-center">
					<p class="card-text">Some text inside the fourth card</p>
				</div>
			</div>
		</div>
		</footer>
</body>
</html>
