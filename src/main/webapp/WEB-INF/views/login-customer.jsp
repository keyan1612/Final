<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | CRM</title>


<link href="<c:url value="/resources/css/style1.css" />"
 rel="stylesheet">
</head>
<body background="<c:url value="/resources/images/LTI2.jpg"/>"/>

<h2>Login - CRM</h2>
<div class="container">
<form:form action="loginUser" method="post" modelAttribute="user">
	
	<label>
		<div style="color:pink">User Name</div>
		</label>
							
		<form:input path="user_id"/>
					<br><br>		
<label>
		<div style="color: pink">Password</div></label>
							
		<form:password path="log_pass"/>
							
					<br><br>													
	<form:button>Login</form:button>					

					</form:form>

<div style="color: red">${error}</div>
</div>
</body>