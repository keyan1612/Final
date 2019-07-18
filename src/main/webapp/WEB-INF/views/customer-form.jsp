<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/style.css"/>"rel="stylesheet">
</head>
<body>

<h3>Banking Registration Form</h3>
 <div class="container">
<form:form action="saveCustomer" method="post" modelAttribute="customer">
  <form:hidden path="acc_no" />
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="user_id"><b>User Id</b></label>
    <input type="text" placeholder="Enter UserName" name="User Id" required>

    <label for="log_pass"><b>Login Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <label for="log_pass"><b>Repeat Login Password</b></label>
    <input type="password" placeholder="Repeat Password" name="password" required>
    
    <label for="trans_pass"><b>Transaction Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <label for="trans_pass"><b>Repeat Transaction Password</b></label>
    <input type="password" placeholder="Repeat Password" name="password" required>
   
    

    <div class="clearfix"/>
   
      <button type="submit" class="signupbtn">Register</button>
      </form:form>
    </div>
  
</body>
</html>