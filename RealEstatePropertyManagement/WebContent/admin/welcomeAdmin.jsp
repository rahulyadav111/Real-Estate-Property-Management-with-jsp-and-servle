<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Property Add registration page</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width" initial-sacle=1>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<style>
</style>

</head>
<body>
	<div class="container">
		<form name="myform" class="form-group" action="welcomeAction.jsp" method="post">
		

						
		
			<h3 style="text-align: center; font-weight: bold; font-size: 30px;">Add
				your property here!</h3>

					<div class="row jumbotron">
						
					<div class="col-sm-6">
						<label for="input name">property_name</label><input type="text"
							name="property_name" class="form-control"
							placeholder="enter your first_name" /required>
					</div>

					<div class="col-sm-6">
						<label for="input name">property_picture</label> <input
							type="file" name="picture" class="form-control"
							placeholder="enter your last_name" /required>
					</div>


					<div class="col-sm-6">
						<label for="input name">Email</label> <input type="email"
							name="email" class="form-control" placeholder="enter your email"
							/required>
					</div>

					<div class="col-sm-6">
						<label for="input name">Mobile_number</label> <input type="number"
							name="mobile" class="form-control"
							placeholder="enter your mobile_number" /required>
					</div>


					<div class="col-sm-6">
						<label for="input name">address_Line1</label> <input type="text"
							name="address1" class="form-control"
							placeholder="enter your address_Line1" /required>
					</div>

					<div class="col-sm-6">
						<label for="input name">address_Line2</label> <input type="text"
							name="address2" class="form-control"
							placeholder="enter your address_Line2" /required>
					</div>


					<div class="col-sm-6">
						<label for="input name">city!</label> <input type="text"
							name="city" class="form-control" placeholder="enter your city"
							/required>
					</div>

					<div class="col-sm-4">
						<label for="input name">state</label> <input type="text"
							name="state" class="form-control" placeholder="enter your state"
							/required>
					</div>

					<div class="col-sm-2">
						<label for="input name">pin Code</label> <input type="number"
							name="pin" class="form-control" placeholder="enter your Zip Code"
							/required>
					</div>

					<div class="col-sm-6">
						<label for="input name">Description</label> <input type="text"
							name="description" class="form-control" style=""
							placeholder="enter your Description" /required>
					</div>

					<div class="col-sm-12"
						style="text-align: center; margin-top: 20px;">
						<button type="submit" class="btn btn-primary">submit</button>
					<a href="showData.jsp">Show Data</a>
					</div>
					
					
			</div>
					

		</form>


	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>



</body>
</html>