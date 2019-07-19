<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/dash.css"/>"rel="stylesheet">
</head>
<body>
<body>
<center><h1>Dashboard</h1></center>
<br>
<c:url var="fundtransfer" value="/fund/fundTransfer">
	<c:param name="customerId" value="${usr.acc_no}" />
</c:url>

   <br>
   <center>
<select>
  <option value="Account Statement">Account Statement</option>
  <option value=""></option>
  <option value=""></option>
  <option value=""></option>
</select>
<select>
  <option value="Fund Transfer"></option>
  <option value=""></option>
  <option value=""></option>
  <option value =""></option>
</select>
<select>
  <option value="User Profile">Profile</option>
  <option value=""></option>
  <option value=""></option>
  <option value =""></option>
</select>
  <select>
  <option value="Change UserID">Fund Transfer</option>
  <option value=""></option>
  <option value=""></option>
  <option value =""></option>
</select>
  
  
  
  </center>
 
<div class="vertical-menu">
  <a href="#" class="active">Home</a>
  <a href="${usr.acc_no}"${usr.user_id}">Account details</a>
  <a href="#">Account Summary</a>
 <a href="${fundtransfer}">Fund Transfer</a>
  <a href="#">Account Statement</a>
</div>
<br>
<br>
 

</body>
</html>




