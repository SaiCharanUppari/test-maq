<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

.content button {
	display: inline-block;
	margin-top: 50px;
	margin-left: 25px;
}

</style>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-10 content">
				<form action="/adduser" method="post">

					Enter New Username : <input type="text" class="form-control"
						id="username" name="username" required="required"> Enter Password : <input
						type="password" class="form-control" id="password" name="password" required="required">
					Select the role of user <select id="role" name="role"
						class="form-control" required="required">
						<option>--- select role ---</option>
						<option value="Admin">Admin</option>
						<option value="Client">Client</option>
					</select>
					<button type="submit" class="btn btn-success" value="addUser"
						name="addUser">Add User</button>
					<button type="button" class="btn btn-dark"
						onclick="location.href='/adminOperations'">Home</button>
				</form>

			</div>
		</div>
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