<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | CRM</title>


<link href="<c:url value="/resources/css/search.css" />"
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
   <input type="password"  name="log_pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
 <br><br>
    <input type="submit" value="Submit">
    <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
  </form:form>
</div>

<div style="color: red">${error}</div>
</div>
</body>