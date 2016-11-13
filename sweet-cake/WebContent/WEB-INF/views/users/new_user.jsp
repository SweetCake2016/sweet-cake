<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
  <title>New User</title>
</head>

<body>

	<h2>New User info:</h2>

	<div id="container">
	  <form:form action="saveUser" modelAttribute="user" method="POST">
	  
	  <table>
	  	<tbody>
	  		<tr>
	  		 <td><label>First name:</label></td>
	  		 <td><form:input path="firstName"/></td> 
	  		 </tr>
	  		 <tr>
	  		 <td><label>Last name:</label></td>
	  		 <td><form:input path="familyName"/></td> 
	  		 </tr>
	  		 <tr>
	  		 <td><label>Email:</label></td>
	  		 <td><form:input path="email"/></td> 
	  		</tr>
	  		
	  		<tr>
	  		  <td><label></label></td>
	  		  <td><input type="submit" value="Save"/></td> 
	  		</tr>
	  	</tbody>
	  </table>
	  </form:form>
	  
	  <a href='<c:url value="/users/list" />'>Back to the list</a>
	
	</div>

</body>

</html>