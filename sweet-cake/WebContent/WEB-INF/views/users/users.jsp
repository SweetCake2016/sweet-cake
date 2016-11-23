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
    
    <!-- jQuery -->
	<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.1.1.js"/>'></script>
	<!-- Plugin JavaScript -->
	<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
	<script type="text/javascript" src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
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
   	  
   	  <c:url value="/users/deleteUser" var="deleteLink">
   		<c:param name="userId" value="${currentUser.id}"/>
   	  </c:url>
   	  
	   <tr>
	     <td> ${currentUser.firstName} </td>
	     <td> ${currentUser.familyName} </td>
	     <td> ${currentUser.email} </td>
	     <td><a href="${updateLink}" class="glyphicon glyphicon-pencil"></a>&nbsp;&nbsp;
	         <a href="#" data-href="${deleteLink}" class="glyphicon glyphicon-remove" data-toggle="modal" data-target="#confirm-delete"></a>
	     <td>
		</td>
	   </tr>
	  </c:forEach>
	</table>
	
	<!-- Add button to add new user -->
	<input type="button" value="Add user" onclick="window.location.href='showFormForAdd'; return false;"/>
	</div>
	
	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          Are you sure that you want to delete user?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger btn-ok" data-dismiss="modal">No</button>
            <a class="btn btn-danger btn-ok">Yes</a>
         </div>
       </div>
     </div>
     </div>

    <script>
      $(document).ready(function() {
    	$('#confirm-delete').on('show.bs.modal', function(e) {
    	  $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    	});
	  });
	</script>
</body>

</html>