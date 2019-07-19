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
<h2>Transaction Details</h2>
<hr color="pink" size="3" />
<img src="<c:url value="/resources/images/logo.jpg"/>"/>


			
				<br/><br/>
				<h3 align=center>Transfer Successfull</h3>
				<table border=1   align=center>
						<tr>
						
						    <th>Transaction Id</th>
						    <th>From Account</th>
							<th>To Account</th>
							<th>Amount</th>
							<th>Transaction Date</th>
							<th>Remark</th>
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${funds}">

							<tr bgcolor="pink">
								<td>${tempCustomer.trans_id}</td>
								<td>${tempCustomer.from_acc}</td>
								<td>${tempCustomer.to_acc}</td>
								<td>${tempCustomer.amt}</td>
								<td>${tempCustomer.trans_date}</td>
								<td>${tempCustomer.remark}</td>

								

						</c:forEach>

					</table>
				
</body>
</html>