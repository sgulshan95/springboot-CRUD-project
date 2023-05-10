<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>register</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>

</head>

<body>
<p style="color: green;text-align: center;  font-weight: bold;">${messg}</p>
	<div class="container">
		<h1 style="color: blue;">User Form</h1>
		<form class="col-5" action="registerUser"  method= "post">
				
		
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Name</b></label>
				<input type="text" name="name" id="name" class="form-control" required placeholder="Enter name">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Father Name</b></label>
				<input type="text" name="fatherName" id="fatherName" class="form-control" required  placeholder="Enter fatherName">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Email</b></label>
				<input type="email" name="email" id="email" class="form-control" required placeholder="Enter email">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Phone</b></label>
				<input type="text" name="phone" id="phone" class="form-control" required placeholder="Enter Phone Number">
			</div>
			

			<button type="submit" class="btn btn-success">Register</button>
			



		</form>

	</div>
	
		<div class="container mt-3">

		<h1> Users List</h1>
		
		<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">FatherName</th>
						<th scope="col">Email</th>
						<th scope="col">Phone</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${userList}">
						<tr>
							<td>${user.id}</td>
							<td>${user.name}</td>
							<td>${user.fatherName}</td>
							<td>${user.email}</td>
							<td>${user.phone}</td>
							
							<td><a href="editUser/${user.id}" class="btn btn-warning">
									Update </a></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	

</body>



</html>