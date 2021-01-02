<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>your registration page</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="custom.css">


<style>
body {
	background-color: #765672;
}

.center-form {
	margin-top: 60px;
}

.center-form .pannel {
	background: rgba(255, 255, 255, 0, 8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

.pannel-body {
	margin-top: 10px;
}

.pannel-title {
	text-align: center;
}
.account{
margin-top: 20px;

}


</style>

</head>
<body>

	<div class="container">
		<div class="row center-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-xm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="pannel-title">Please-sign_IN</h3>
					</div>
					<div class="pannel-body">
						<form class="form" action="Process.jsp" method="post">

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-ms-6">
									<div class="form-group">
										<input type="text" name="first_name" id="first_name"
											class="form-control input-sm" placeholder="first_name">
									</div>
								</div>

								<div class="col-xs-6 col-sm-6 col-ms-6">
									<div class="form-group">
										<input type="text" name="last_name" id="last_name"
											class="form-control input-sm" placeholder="last_name">
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="email" name="email" id="email"
									class="form-control input-sm" placeholder="enter your email">
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-ms-6">
									<div class="form-group">
										<input type="password" name="password" id="password"
											class="form-control input-sm" placeholder="password">
									</div>
								</div>

								<div class="col-xs-6 col-sm-6 col-ms-6">
									<div class="form-group">
										<input type="password" name="re-password" id="re-password"
											class="form-control input-sm" placeholder="re-type-password">
									</div>
								</div>
							</div>
							<input type="submit" value="Register"
								class="btn btn-info btn-block">
								
								<div class="account">
								<a href="Sign_up.jsp">do you have already account</a>
								</div>

						</form>
					</div>

				</div>


			</div>


		</div>

	</div>


	<!-- Optional theme -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
		integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
		crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>



</body>
</html>