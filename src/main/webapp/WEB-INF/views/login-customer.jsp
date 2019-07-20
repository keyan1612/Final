<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | CRM</title>


<link href="<c:url value="/resources/css/fund.css" />"
 rel="stylesheet">
</head>
<body background="<c:url value="/resources/images/LTI2.jpg"/>"/>

<h2>Login Online Banking</h2>
<div class="container">
<form:form action="loginUser" method="post" modelAttribute="user">
	
  
    <label for="user_id">Username</label>
    <input type="text"  name="user_id" required>
    <br><br>

    <label for="log_pass">Password</label>
   <input type="password"  name="log_pass">
    <center> <input type="submit" value="Proceed">
    <div id="message">
  
</div>
  </form:form>
</div>

<div style="color: red">${error}</div>
</div>
</body>