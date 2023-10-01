<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<h1>Registration Form</h1>
    <h4 style="color: green;">${msg} </h4>
	<form:form action="save" modelAttribute="user" method="post">
		<table>
			<tr>
				<td><form:label path="name">Enter The name:</form:label></td>
				<td><form:input path="name" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="gender">Enter The Gender:</form:label></td>
				<td><form:input path="gender" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="dob">Enter The DOB:</form:label></td>
				<td><form:input path="dob" required="required" placeholder="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td><form:label path="password">Enter The Password:</form:label></td>
				<td><form:input path="password" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="state">Enter The State:</form:label></td>
				<td><form:input path="state" required="required"/></td>
			</tr>
			<tr>
				<td><form:label path="city">Enter The City:</form:label></td>
				<td><form:input path="city" required="required"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form:form>
	</div>
	<div>
	<a href="/">Go Login</a>
	</div>
</body>
</html>