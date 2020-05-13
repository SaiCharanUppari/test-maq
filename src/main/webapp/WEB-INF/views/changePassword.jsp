<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change password</title>
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
	margin-left: 15px;
}
</style>

</head>
<body>
	<script>
		function myFunction() {
			var pass1 = document.getElementById("password1").value;
			var pass2 = document.getElementById("password2").value;
			if (pass1 == pass2) {
				//alert("Passwords Do not match");
				/* document.getElementById("password1").style.borderColor = "#E34234";
				document.getElementById("password2").style.borderColor = "#E34234"; */
				//document.getElementById("regForm").submit();
				return true;
			} else {
				alert("Passwords do no match Match!!!");
				return false;
			}
		}
	</script>

	<div class="container">
		<div class="row">
			<div class="col-md-10 content">

				<form id="regForm" onsubmit="return myFunction()"
					action="/changePassword" method="post">

					User Name: <input id="username" class="form-control"
						name="username" type="text" / required="required"> Old password : <input
						id="oldPassword" class="form-control" name="oldPassword"
						type="password" / required="required"> New Password : <input id="password1"
						class="form-control" name="password1" type="password" required="required"/> Confirm
					New Password : <input id="password2" class="form-control"
						name="password2" type="password" required="required" />
					<button type="submit" class="btn btn-primary btnchpwd"
						value="change" name="change">Change Password</button>
					<button type="button" class="btn btn-dark"
						onclick="location.href='/userOperations'">Home</button>

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