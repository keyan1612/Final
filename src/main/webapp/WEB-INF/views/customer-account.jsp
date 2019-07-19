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
<form:form action="saveCustomers" method="post" modelAttribute="account">
  
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="fname"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="fname" required>

    <label for="mname"><b>Middle Name</b></label>
    <input type="text" placeholder="Enter Middle Name" name="mname" required>

    <label for="lname"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lname" required>
    
    <label for="fathername"><b>Father's Name</b></label>
    <input type="text" placeholder="Enter Father's Name" name="fathername" required>

    <label for="mobno"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile Number" name="mobno" required>
   
    <label for="email_id"><b>Email ID</b></label>
    <input type="text" placeholder="Enter email id" name="email_id" required>
    
     <label for="aadhar_no"><b>Aadhar No</b></label>
    <input type="text" placeholder="Enter aadhar no" name="aadhar_no" required>
    
    
<div class="col">
                    <label for="dob">Date of Birth</label>
                    <input type="date" onload="getDate()" class="form-control" id="dob" 
                      name="dob">
                </div><br><br>
   
    
    <label for="occtype"><b>Occupation Type</b></label>
    <input type="text" placeholder="Enter Occupation Type" name="occtype" required>
    
    
       <label for="sincome"><b>Source of Income</b></label>
    <input type="text" placeholder="Enter Source of income" name="sincome" required>
    
       <label for="gincome"><b>Gross Annual Income</b></label>
    <input type="text" placeholder="Enter Gross Annual Income" name="gincome" required>
    
       

    <div class="clearfix"/>
   
      <button type="submit" class="signupbtn">Register</button>
      </form:form>
    </div>
  
</body>
</html>