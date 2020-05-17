<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN OPERATIONS</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/areasstyle.css">
<style type="text/css">
* {
	font-family: poppins;
}

.content {
	display: flex;
	justify-content: center;
}

.content li {
	display: inline-block;
}

.content li button {
	justify-content: space-between;
}
</style>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-12 header">
				<h1 style="text-align: center; margin-bottom: 100px">Admin
					Operation</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 content">
				<ul>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='/showadduser'">Add User</button></li>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='/showdeleteuser'">Delete User</button></li>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='/showaddproject'">Add Project</button></li>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='/showdeleteproject'">Delete
							Project</button></li>

				</ul>
			</div>
		</div>

<!-- 		<iframe src="" width="100%" height="300px;" id="frame"></iframe>
 -->
	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="../resources/js/areasjs.js"></script>
</body>
</html>