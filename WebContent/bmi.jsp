<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.user.Student"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/styles.css">
<%
Student student = (Student) session.getAttribute("student");
%>
<head>
<meta charset="UTF-8">
<title>Get your BMI</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar0brand" href="#">Welcome to <%
		out.print(student.getSchoolName());
		%></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault"></div>
	</nav>

	<!-- < Main jumbotron for a primary marketing message or call to action> -->
	<div class="jumbotron mt-5">
		<div class="container">
			<h1>
				Hello,
				<%
			out.print(student.getFirstName());
			%>
			</h1>
			<p>This is a simple java servlet program for a for a functional
				website.</p>

		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4">
				<h2>My BMI</h2>
				<p>
					<%
					out.print(student.getBmi());
					%>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Enter Weight and Height</h2>
				<form action="BmiServlet" method="post">
					<div class="form-group">
						<label for="weight">Weight(pounds)</label> <input type="text"
							class="form-control" name="weight" id="weight"
							placeholder="weight">
					</div>

					<div class="form-group">
						<label for="height">Height(inches)</label> <input type="text"
							class="form-control" name="height" id="height"
							placeHolder="height">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<hr>
			<footer>
				<p>&copy; 2017 Company, Inc.</p>
			</footer>
		</div>
		<!-- /container -->
	</div>
</body>
</html>