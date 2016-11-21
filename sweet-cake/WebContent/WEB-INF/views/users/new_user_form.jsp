<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
  <title>New User</title>
  
  <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css" />' />
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/style.css" />'/>
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href='<c:url value="/resources/font-awesome-4.4.0/css/font-awesome.min.css"/> ' />
	
</head>

<body>

	<h2>New User info:</h2>

	<div id="container">
	  <form:form action="saveUser" modelAttribute="user" method="POST">
	  
	  <div class="form-group">
	  <label for="firstName">First name:</label>
	  <form:input path="firstName" class="form-control" placeholder="Example input"/>
	  </div>
	  <div class="form-group">
	  <label for="lastName">Last name:</label>
	  <form:input path="familyName" class="form-control" placeholder="Example input"/>
	  </div>
	   <div class="form-group">
	  <label for="email">Email:</label>
	  <form:input path="email" class="form-control" placeholder="Example input"/>
	  </div>
	  
	  <div class="form-group">
	  <label for="image">Image:</label>
	  <form:input type="file" path="image" class="form-control" placeholder="Example input" size="50"/>
	  </div>
	  		
	  		  <td><input type="submit" value="Save"/></td> 
	  </form:form>
	  
	  <a href='<c:url value="/users/list" />'>Back to the list</a>
	
	</div>

</body>

</html>