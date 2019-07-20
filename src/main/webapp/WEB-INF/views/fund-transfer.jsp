<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/fund.css"/>"rel="stylesheet">
</head>
<body>

<center><h2>Initiate NEFT Payment</h2></center>

<div class="container">
<form:form action="Customers" method="post" modelAttribute="fund">
<form:hidden path="trans_id" />
    <label for="from_acc">From Account</label>
    <input type="text"  value="${cid}" name="from_acc" required>

    <label for="to_acc">To Account</label>
   <input type="text"  name="to_acc" required>
   
   <label for="amt">Amount</label>
    <input type="text" name="amt" required>
    
    <div class="col">
                    <label for="date">Date</label>
                    <input type="text" value=<%= new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new java.util.Date())%> class="form-control" id="date" 
                      name="date">
                </div>
    
    <label for="remark">Remark</label>
    <input type="text" name="remark" required>

   <center> <input type="submit" value="Proceed">
   
       
     
        </form:form>
  
</div>