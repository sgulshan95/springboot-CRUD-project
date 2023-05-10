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

	<div class="container">
		<h1 style="color: blue;">Edit Form</h1>
		<form class="col-5" action="save"  method= "post" id="formId">
				
                    	
             <div class="mb-3">
                <input type="hidden" name="id" value='${user.id}' />
             </div>
                	
		
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Name</b></label>
				<input type="text" name="name" id="name" class="form-control" value='${user.name}' placeholder="Enter name">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Father Name</b></label>
				<input type="text" name="fatherName" id="fatherName" class="form-control" value='${user.fatherName}' placeholder="Enter fatherName">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Email</b></label>
				<input type="email" name="email" id="email" class="form-control" value='${user.email}' placeholder="Enter email">
			</div>
			<div class="mb-3">
				<label for="exampleInputInput1" class="form-label"><b>Phone</b></label>
				<input type="text" name="phone" id="phone" class="form-control" value='${user.phone}' placeholder="Enter Phone Number">
			</div>

			<button type="submit" class="btn btn-success" >Update</button>



		</form>

	</div>
	
	
	<script>
	
	
	const myform = document.querySelector('form'); // select your form
	myform.addEventListener('submit', (event) => {
	//  event.preventDefault(); // prevent form from submitting

	  const formData = new FormData(myform); // create a new FormData object with the form data
	  const data = Object.fromEntries(formData.entries()); // convert FormData to plain object

	  console.log(data); // log the form data to the console
	});
	
	
	
	

      
    </script>

	

</body>



</html>