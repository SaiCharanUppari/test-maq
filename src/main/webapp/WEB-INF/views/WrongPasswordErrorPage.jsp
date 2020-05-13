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

.box {
	width: 700px;
	height: 300px;
	background: #dd2c00;
	border-radius: 10px;
	margin: 0 auto;
	margin-top: 100px;
	padding: 50px;
	box-sizing: border-box;
	box-shadow: 10px 10px 10px 2px #000;
}

.box > h1 {
	color: #f7f7f7;
}
.box > h5 {
	color: #f7f7f7;
	text-align: center;
}

.box > h6 {
	color: #f7f7f7;
	text-align: center;
}

.box > button {
/* 	background: transparent;
	color: #f7f7f7; */
	margin-left: 200px;
}

.box:hover > button {
	background: transparent;
	color: #f7f7f7;
	margin-left: 200px;
}

</style>

</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-10 content">


				<div class="box">

					<h1>OOPS..!!!!</h1>

					<%-- <h1 style="color: red;">The password you entered did not match your old password</h1>
		</br>	${errormessage} --%>

					<h5>${errormessage}</h5>
					<h6>Please Try Again</h6>

					<button type="button" class="btn btn-light"
						onclick="location.href='/showchangePassword'">Back to
						Change Password</button>

				</div>



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