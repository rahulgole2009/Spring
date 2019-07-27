<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html>
<body>
	<h2 align="center">All User Details</h2>
	
	<h4 align="center" style="font-style: italic; color: red;">${message}</h4>

	<c:if test="${not empty userList}">

		<table align="center" border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Phone</th>

			</tr>
			<c:forEach var="listValue" items="${userList}">
				<tr>
					<td>${listValue.firstname}</td>
					<td>${listValue.lastname}</td>
					<td>${listValue.email}</td>
					<td>${listValue.address}</td>
					<td>${listValue.phone}</td>
				</tr>
			</c:forEach>



		</table>
	</c:if>

	<h3 align="center">
		<a href="register">Register New User</a>
	</h3>
</body>
</html>