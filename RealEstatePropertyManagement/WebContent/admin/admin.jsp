<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin_page here!</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="custom.css">

<style>
body 
{
	background-color: #746576;
}

.container {
	margin-top: 60px;
}

.pannel-body {
	margin-top: 20px;
}

.account {
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
						<h3 class="pannel-title">Admin-Sign_UP</h3>
					</div>
					<div class="pannel-body">
						<form class="form" action="adminAction.jsp" method="post">


							<div class="form-group">
								<input type="email" name="email" id="email"
									class="form-control input-sm" placeholder="enter your email">
							</div>


							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-sm" placeholder="password" /required>
							</div>
					</div>

					<input type="submit" value="Sign_UP" class="btn btn-info btn-block">

					


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