<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link href="<c:url value="/resources/css/style1.css"/>"rel="stylesheet">
<body background="<c:url value="/resources/images/LTI.jpg"/>"/>
</head>
<body>
<h2>CRM - Customer Relationship Manager</h2>
<hr color="pink" size="3" />
<img src="<c:url value="/resources/images/LTI.png"/>"/>


			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"/>
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
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<tr bgcolor="pink">
								<td>${tempCustomer.user_id}</td>
								<td>${tempCustomer.acc_no}</td>
								<td>${tempCustomer.log_pass}</td>
								<td>${tempCustomer.trans_pass}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>
				
</body>
</html>