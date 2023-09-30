<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome ${name}</h1>
	<table style="border: 1 solid;">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Date Of Berth</th>
			<th>State</th>
			<th>City</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td><c:out value="${user.id}" /></td>
				<td><c:out value="${user.name}" /></td>
				<td><c:out value="${user.gender}" /></td>
				<td><c:out value="${user.dob}" /></td>
				<td><c:out value="${user.state}" /></td>
				<td><c:out value="${user.city}" /></td>
			</tr>
			</c:forEach>
	</table>
</body>
</html>