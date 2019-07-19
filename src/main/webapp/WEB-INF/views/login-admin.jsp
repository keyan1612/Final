<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>

</head>
<body >

<h2>Login - Admin</h2>
<div class="container">
<form:form action="loginAdmin" method="post" modelAttribute="admin">
	
	<label>
		<div style="color:pink">Email</div></label>
							
		<form:input path="email"/>
					<br><br>		
<label>
		<div style="color: pink">Password</div></label>
							
		<form:password path="password"/>
							
					<br><br>													
	<form:button>Login</form:button>					

					</form:form>

</div>
	

</body>
</html>