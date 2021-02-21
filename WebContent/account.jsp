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
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar0brand" href="#">Welcome to<%
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
				<h2>My GPA</h2>
				<p>
					<%
					out.print(student.getGpa());
					%>
				</p>
			</div>
			<div class="col-md-4">
				<h2>Enter Grades</h2>
				<form action="GpaServlet" method="post">
					<div class="form-group">
						<label for="gradeOne">Grade One</label> <input type="text"
							class="forn-control" name="gradeOne" id="gradeOne"
							placeholder="Grade One">
					</div>

					<div class="form-group">
						<label for="gradeTwo">Grade Two</label> <input type="text"
							class="form-control" name="gradeTwo" id="gradeTwo"
							placeHolder="Grade Two">
					</div>


					<div class="form-group">
						<label for="gradeThree">Grade Three</label> <input type="text"
							class="form-control" name="gradeThree" id="gradeThree"
							placeholder="Grade Three">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<hr>
			<a href="bmi.jsp">BMI</a>
			<footer>
				<p>&copy; 2017 Company, Inc.</p>
			</footer>
		</div>
		<!-- /container -->
	</div>
</body>
</html>