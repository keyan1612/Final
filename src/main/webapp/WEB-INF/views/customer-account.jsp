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

<h2>Open A Savings Account</h2>
<h3>Personal Details</h3>
<div class="container">
  <form:form action="saveCustomers" method="post" modelAttribute="account">
   <p>Title *    
        <select type="text" value="" name="subject"> 
            <option></option>
            <option>Ms.</option> 
            <option>Mr.</option> 
            <option>Mrs.</option>  
        </select></p><br>
 
    <label for="fname">First Name</label>
    <input type="text" name="fname" required>

    <label for="mname">Middle Name</label>
   <input type="text"  name="mname">
   
    <label for="lname">Last Name</label>
   <input type="text"  name="lname" required>
   
    <label for="faname">Father's Name</label>
   <input type="text"  name="faname" required>
   
    <label for="mobno">Mobile Number</label>
   <input type="text"  name="mobno" required>
   
    <label for="eid">Email ID</label>
   <input type="text"  name="eid" required>
   
    <label for="aadhar">Aadhar Number</label>
   <input type="text"  name="aadhar" required>
   
<div class="col">
                    <label for="dob">Date of Birth</label>
                    <input type="date" onload="getDate()" class="form-control" id="dob" 
                      name="dob">
                </div><br><br>
   
   
   <label for="address">Address</label>
   <input type="text"  name="address" required>
   
    <h3> Occupation Details </h3>
 
    <p>a)Occupation Type*     -   <select type="text" value="" name="occtype" required> 
           <option></option>
            <option>Business</option> 
            <option>Agriculture</option> 
            <option>Student</option>  
           </select></p>
    <p>b)Source of Income*  - <select type="text" value="" name="sincome" required> 
     <option></option>
            <option>Business</option> 
            <option>Agriculture</option> 
            <option>Student</option>  
           </select></p>
    <p>c)Gross Annual Income*  - <select type="text" value="" name="gincome" required>
     <option></option>
            <option>Business</option> 
            <option>Agriculture</option> 
            <option>Student</option>  
           </select></p>
           <br>
           
            <h3> Deposit </h3>
            <br>
             <label for="dept">Initial Deposit</label>
   <input type="text"  name="dept" required>
            
    <p>Debit/ATM Card </p>
    <p>Do you want a debit card ? </p>
   
     
 <input type="checkbox" > Opt for Net banking<br>
      <input type="checkbox" > I agree<br>
      
      
    
 
 <center> <input type="submit" value="Submit"> </center> 
</form:form>


</body>
</html>
