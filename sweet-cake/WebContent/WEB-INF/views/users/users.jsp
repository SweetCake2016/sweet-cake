<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
  <title>Users</title>
</head>

<body>

	<h2>List of users:</h2>

	<div id="container">
	<table>
	  <tr>
	  	<th>First name</th>
	  	<th>Last name</th>
	  	<th>Email name</th>
	  </tr>
	  
	  <c:forEach var="currentUser" items="${users}">
	   <tr>
	     <td> ${currentUser.firstName} </td>
	     <td> ${currentUser.familyName} </td>
	     <td> ${currentUser.email} </td>
	   </tr>
	  </c:forEach>
	</table>
	
	<!-- Add button to add new user -->
	<input type="button" value="Add user" onclick="window.location.href='showFormForAdd'; return false;"/>
	</div>

</body>

</html>