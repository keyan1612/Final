<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link href="<c:url value="/resources/css/logo.css"/>"rel="stylesheet">
<body background="<c:url value="/resources/images/LTI.jpg"/>"/>
</head>
<body>
<jsp:forward page="welcome.jsp"> 
<jsp:param name="dept" value="${tempCustomer.dept}" /> 
<h2>Account Details</h2>
<hr color="pink" size="3" />
<img src="<c:url value="/resources/images/logo.jpg"/>"/>


			
				<br/><br/>
				<h3 align=center>Account List</h3>
				<table border=1   align=center>
						<tr>
							<th>Subject</th>
							<th>First Name</th>
							<th>Middle Name</th>
							<th>Last Name</th>
							<th>Father's Name</th>
							<th>Mobile Number</th>
							<th>Email ID</th>
							<th>Aadhar No</th>
							<th>Date of Birth</th>
							<th>Occupation Type</th>
							<th>Source of Income</th>
							<th>Gross Annual Income</th>
							<th>Address</th>
							<th>Deposit</th>
							
						
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${accounts}">
						
						
						
						

							<tr bgcolor="pink">
							     <td>${tempCustomer.subject}</td>
								<td>${tempCustomer.fname}</td>
								<td>${tempCustomer.mname}</td>
								<td>${tempCustomer.lname}</td>
								<td>${tempCustomer.faname}</td>
								<td>${tempCustomer.mobno}</td>
								<td>${tempCustomer.eid}</td>
								<td>${tempCustomer.aadhar}</td>
								<td>${tempCustomer.dob}</td>
								<td>${tempCustomer.occtype}</td>
								<td>${tempCustomer.sincome}</td>
								<td>${tempCustomer.gincome}</td>
								<td>${tempCustomer.address}</td>
								<td>${tempCustomer.dept}</td>
							   

								

						</c:forEach>

					</table>
				
</body>
</html>