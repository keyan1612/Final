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
<h2>Customer Details</h2>
<hr color="red" size="3" />
<img src="<c:url value="/resources/images/logo.jpg"/>"/>


			
				
				<br/><br/>
				<h3 align=center>Customer List</h3>
				<table border=1   align=center>
						<tr>
							<th>User Id</th>
							<th>Account Number</th>
							<th>Login Password</th>
							<th>Transaction Password</th>
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customers}">
						
						
						<!-- construct an "update" link with customer id -->
							<c:url var="addLink" value="/customer/addForm">
								<c:param name="CustomerId" value="${tempCustomer.acc_no}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="CustomerId" value="${tempCustomer.acc_no}" />
							</c:url>
						

							<tr bgcolor="yellow">
								<td>${tempCustomer.user_id}</td>
								<td>${tempCustomer.acc_no}</td>
								<td>${tempCustomer.log_pass}</td>
								<td>${tempCustomer.trans_pass}</td>
								
								
								<td >
									<!-- display the update link --> <a href="${AddLink}">Add</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this Customer detail ?'))) return false">Delete</a>
								</td>

								

						</c:forEach>

					</table>
				
</body>
</html>