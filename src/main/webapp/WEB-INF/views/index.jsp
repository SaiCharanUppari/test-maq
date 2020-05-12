<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style type="text/css">
.content {
	display: flex;
	flex-wrap: wrap;
	width: 1000px;
	
}

.card {
	margin: 10px;
	width: 15rem;
	border-color: #222A35;
	background-color: #222A35;
	color: white;
	border-color: #222A35;
}

.card-header {
	height: 50px;
}

.card-footer {
	height: 50px;
}
</style>

</head>
<body>

	<h1>Welcome</h1>

	<!-- For User API 1 -->
	<div class="formdiv">
		<form action="\getuserprojects/{uid}" method="post">
			<%-- <c:forEach items="${users}" var="user" varStatus="loop">

		${user.id}
		${user.username} 
		${user.password}
		${user.role}
		<button type="submit" name="uid" value="${user.id}">Login</button>
			<br>
		</c:forEach> --%>

			<input type="text" name="username" required="required"> <input
				type="password" name="password" required="required">
			<button type="submit">Login</button>

		</form>
	</div>


	<!-- For Projects API 2 -->

	<select>
		<c:forEach items="${projects}" var="project" varStatus="loop">

			<%-- ${project.id} --%>
			<option>${project.projectName}</option>
			<%-- ${project.account.username} --%>
			<br>

		</c:forEach>
	</select>

	<div class="content">
		<form action="/getcategories/{aid}">
			<c:forEach items="${areas}" var="area" varStatus="loop">

				<%-- <div class="card">
					<div class="card-header">${area.areaName}</div>
					<div class="card-body"></div>
					<div class="card-footer">
						<button class="btn btn-primary takeasmt" value="${area.id}">Take
							Assessment</button>
					</div>
				</div> --%>
					<p>${area.areaName}</p>

				<button type="submit" name="aid" value="${area.id}">Proceed</button>

			</c:forEach>
		</form>
	</div>

	<c:forEach items="${categories}" var="category" varStatus="loop">

		<div class="jumbotron">
			<p>${category.categoryName}</p>
		</div>

	</c:forEach>


	<c:forEach items="${questions}" var="question" varStatus="loop">
		<table class="table-dark table-hover" style="margin: 0 auto;">
			<tr>
				<td width="800px" style="padding: 10px;">
					<input type="text" value="${question.id }" disabled="disabled" hidden="" name="qid">${question.question}</h5>
				</td>
				<td style="padding: 10px;"><select name="rid">
						<option value="5">Always</option>
						<option value="4">Often</option>
						<option value="3">Sometimes</option>
						<option value="2">Seldom</option>
						<option value="1">Never</option>
						<option value="0">Not Applicable</option>
				</select></td>
				<td style="padding: 10px;"><textarea rows="1" cols="20"
						name="remark" placeholder="Remark"></textarea></td>
			</tr>
		</table>
	</c:forEach>

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>