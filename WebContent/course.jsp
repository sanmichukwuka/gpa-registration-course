<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.enums.Course"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<%-- <%
Course cour = (Course) session.getAttribute("courses");
%> --%>
<head>
<meta charset="UTF-8">
<title>Courses</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
.weekDays-selector input {
	display: none !important;
}

.weekDays-selector input[type=checkbox]+label {
	display: inline-block;
	border-radius: 6px;
	background: #dddddd;
	height: 40px;
	width: 30px;
	margin-right: 3px;
	line-height: 40px;
	text-align: center;
	cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked+label {
	background: #2AD705;
	color: #ffffff;
}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div style="margin-top: 100px"></div>
		<div style="width: 300px">

			<br> <br>
			<form action="SchedulerServlet" method="Post">


				Professors <select class="form-control" name="professors">
					<option value="John White">John White</option>
					<option value="Michael Brown">Michael Brown</option>
					<option value="Tina Doe">Tina Doe</option>
					<option value="Emily Winter">Emily Winter</option>
					<option value="Christine Summer">Christine Summer</option>
				</select> <br> Courses <select class="form-control" name="courseName">
					<option value="Java Programming">Java Programming</option>
					<option value="C#">C#</option>
					<option value="C">C</option>
					<option value="Ruby on Rails">Ruby on Rails</option>
					<option value="Php">Php</option>
					<option value="SQL">SQL</option>
					<option value="Javascript">Javascript</option>
				</select> <br>


				<div class="weekDays-selector">
					<input type="checkbox" name="weekday" value="MONDAY"
						id="weekday-mon" class="weekday" /> <label for="weekday-mon">M</label>
					<input type="checkbox" name="weekday" value="TUESDAY"
						id="weekday-tue" class="weekday" /> <label for="weekday-tue">T</label>
					<input type="checkbox" name="weekday" value="WEDNESDAY"
						id="weekday-wed" class="weekday" /> <label for="weekday-wed">W</label>
					<input type="checkbox" name="weekday" value="THURSDAY"
						id="weekday-thu" class="weekday" /> <label for="weekday-thu">T</label>
					<input type="checkbox" name="weekday" value="FRIDAY"
						id="weekday-fri" class="weekday" /> <label for="weekday-fri">F</label>
				</div>
				<br>12/2
				<p>
					Date: <input type="date" id="datepicker" name="startDate">
				</p>
				<p>
					Room Number: <input type="text" id="room_number" name="room_number">
				</p>
				<p>
					Time: <input type="text" id="Time" name="time">
				</p>
				<button type="submit">add course</button>
			</form>
			</div>
			<div class="table-responsive">
				<c:if test="${courses != null}">

					<table class="table">
						<tr>
							<th>Course Name</th>
							<th>Start Date</th>
							<th>Time</th>
							<th>Professor</th>
							<th>Occurrence</th>
						</tr>
						<c:forEach var="course" items="${courses}">
							<tr>
								<td><c:out value="${course.courseName}" /></td>
								<td><c:out value="${course.startDate}" /></td>
								<td><c:out value="${course.time}" /></td>
								<td><c:out value="${course.professor}" /></td>
								<td><c:forEach var="day" items="${course.occurences}" ><br><c:out value="${day}" /></c:forEach></td>
								
							</tr>
						</c:forEach>

					</table>
				</c:if>


			</div>

		

	</div>

</body>
</html>