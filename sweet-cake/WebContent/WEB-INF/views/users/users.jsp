<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
  <title>Users</title>
  
  <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css" />' />
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/style.css" />'/>
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href='<c:url value="/resources/font-awesome-4.4.0/css/font-awesome.min.css"/> ' />
</head>

<body>

	<h2>List of users:</h2>

	<div id="container">
	<table  class="table table-inverse">
	  <tr class="bg-primary">
	  	<th>First name</th>
	  	<th>Last name</th>
	  	<th>Email name</th>
	  	<th>Action</th>
	  </tr>
	  
	  
	  <c:forEach var="currentUser" items="${users}">
	  
	  <c:url value="/users/showFormForUpdate" var="updateLink">
   		<c:param name="userId" value="${currentUser.id}"/>
   	  </c:url>
   	  
   	  <c:url value="" var="deleteLink">
   		<c:param name="userId" value="${currentUser.id}"/>
   	  </c:url>
   	  
	   <tr>
	     <td> ${currentUser.firstName} </td>
	     <td> ${currentUser.familyName} </td>
	     <td> ${currentUser.email} </td>
	     <td><a href="${updateLink}" class="glyphicon glyphicon-pencil"></a>&nbsp;&nbsp; <a href="${deleteLink}" class="glyphicon glyphicon-remove"></a><td>
	   </tr>
	  </c:forEach>
	</table>
	
	<!-- Add button to add new user -->
	<input type="button" value="Add user" onclick="window.location.href='showFormForAdd'; return false;"/>
	</div>

</body>

</html>