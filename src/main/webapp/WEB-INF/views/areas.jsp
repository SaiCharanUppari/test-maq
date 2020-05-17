<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	crossorigin="anonymous">
	
<!-- <link rel="stylesheet" href="webjars/bootstrap/4.4.1/css/bootstrap.min.js">	 -->
	
<link rel="stylesheet" href="../resources/css/areasstyle.css">
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-10 content">
				<form action="/getcategories/{aid}" method="post">
					<c:forEach items="${areas}" var="area" varStatus="loop">

						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${area.areaName}</h5>
								<p class="card-text">Lorem, ipsum dolor sit amet consectetur
									adipisicing elit. Ad quos earum dolore quod, laboriosam ut
									recusandae</p>
								<button type="submit" value="${area.id}" name="aid">Proceed</button>
							</div>
						</div>
					</c:forEach>
				</form>
			</div>
		</div>
	</div>

	
	<!-- Optional JavaScript 
	jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		crossorigin="anonymous"></script>
	<script src="../resources/js/areasjs.js"></script>


<!-- 	<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script> -->
<!-- 	<mvc:resources mapping="/webjars/**" location="/webjars/" /> -->
</body>
</html>