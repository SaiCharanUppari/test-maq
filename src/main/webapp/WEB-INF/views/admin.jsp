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

<link rel="stylesheet" href="../resources/css/adminstyle.css">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="jumbotron">
					<h1>DevOps - Maturity Assesment Questionnaire</h1>
					<h5>Admin Operations</h5>
					<!-- Button to Open the Modal -->
					<ul>

						<li><button type="button" class="btn btnlogin"
								data-toggle="modal" data-target="#adduserModal">Add
								User</button></li>
						<li><button type="button" class="btn btnlogin"
								data-toggle="modal" data-target="#deleteuserModal">Delete
								User</button></li>
						<li><button type="button" class="btn btnlogin"
								data-toggle="modal" data-target="#addprojectModal">Add
								Project</button></li>
						<li><button type="button" class="btn btnlogin"
								data-toggle="modal" data-target="#deleteprojectModal">Delete
								Project</button></li>
						<li><button type="button" class="btn btnlogin"
								data-toggle="modal" data-target="#changepswdModal">Change
								Password</button></li>

					</ul>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">

				<!-- Add User Modal Start -->

				<div class="modal fade" id="adduserModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-title">
								Add User
								<button type="button" class="btnclose close"
									data-dismiss="modal">&times;</button>
							</div>
							<form action="/adduser" method="POST">
								<div class="modal-body">
									<fieldset>

										Enter New Username : <input type="text" class="form-control"
											id="username" name="username" required="required">
										Enter Password : <input type="password" class="form-control"
											id="password" name="password" required="required">
										Select the role of user <select id="role" name="role"
											class="form-control" required="required">
											<option>--- select role ---</option>
											<option value="Admin">Admin</option>
											<option value="Client">Client</option>
										</select>
										<button type="submit" class="btn btnlogin" value="addUser"
											name="addUser">Add User</button>

									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Add User Modal End -->
				<!-- Delete User Modal Start -->

				<div class="modal fade" id="deleteuserModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-title">
								Delete User
								<button type="button" class="btnclose close"
									data-dismiss="modal">&times;</button>
							</div>
							<form action="/deleteuser" method="POST">
								<div class="modal-body">
									<fieldset>

										<table class="table table-striped table-hover">

											<thead>
												<tr>
													<th>ID</th>
													<th>User</th>
													<th>Role</th>
													<th></th>
												</tr>
											</thead>

											<c:forEach items="${users}" var="user" varStatus="loop">
												<tr>
													<td>${user.id }</td>
													<td>${user.username}</td>
													<td>${user.role }</td>
													<td>
														<button type="submit" class="btn btnlogin"
															value="${user.username }" name="username">Delete</button>
													</td>

												</tr>
											</c:forEach>
										</table>

									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Delete User Modal End -->
				<!-- Add Project Modal Start -->

				<div class="modal fade" id="addprojectModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-title">
								Add Project
								<button type="button" class="btnclose close"
									data-dismiss="modal">&times;</button>
							</div>
							<form action="/addproject" method="POST">
								<div class="modal-body">
									<fieldset>

										Enter Project Name : <input type="text" class="form-control"
											id="projectName" name="projectName"> Select Account
										for the above project : <select id="username" name="username"
											class="form-control">
											<option>--- select account ---</option>
											<c:forEach items="${users}" var="user" varStatus="loop">

												<option value="${user.getUsername()}">${user.getUsername()}</option>
											</c:forEach>
										</select>

										<button type="submit" class="btn btnlogin" value="addProject"
											name="addProject">Add Project</button>

									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Add Project Modal End -->
				<!-- Delete Project Modal Start -->

				<div class="modal fade" id="deleteprojectModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-title">
								Delete Project
								<button type="button" class="btnclose close"
									data-dismiss="modal">&times;</button>
							</div>
							<form action="/deleteproject" method="POST">
								<div class="modal-body">
									<fieldset>

										Select the project you want to delete: <select
											id="projectName" name="projectName" class="form-control">
											<option>--- select project ---</option>
											<c:forEach items="${projects}" var="project" varStatus="loop">

												<option value="${project.getProjectName()}">${project.getProjectName()}</option>
											</c:forEach>
										</select>

										<button type="submit" class="btn btnlogin"
											value="deleteProject" name="deleteProject">Delete
											Project</button>

									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Delete Project Modal End -->
				<!-- Change Password Modal Start -->

				<script>
					function myFunction() {
						var pass1 = document.getElementById("password1").value;
						var pass2 = document.getElementById("password2").value;
						if (pass1 == pass2) {
							return true;
						} else {
							alert("Passwords do no match Match!!!");
							return false;
						}
					}
				</script>

				<div class="modal fade" id="changepswdModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-title">
								Change Password
								<button type="button" class="btnclose close"
									data-dismiss="modal">&times;</button>
							</div>
							<form action="/changePassword" method="POST"
								onsubmit="return myFunction()">
								<div class="modal-body">
									<fieldset>

										User Name: <input id="username" class="form-control"
											name="username" type="text" / required="required">
										Old password : <input id="oldPassword" class="form-control"
											name="oldPassword" type="password" / required="required">
										New Password : <input id="password1" class="form-control"
											name="password1" type="password" required="required" />
										Confirm New Password : <input id="password2"
											class="form-control" name="password2" type="password"
											required="required" />
										<button type="submit" class="btn btnlogin btnchpwd"
											value="change" name="change">Change Password</button>

									</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Change Password Modal End -->

			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>

</body>
</html>