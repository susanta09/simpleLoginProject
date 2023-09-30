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
<h1>Login Form</h1>
<div>
<div>
   <h4 style="color: red;">${msg} </h4>
</div>
<form:form action="login" modelAttribute="log" method="post">
		<table>
			<tr>
				<td><form:label path="name">Enter The name:</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Enter The Password:</form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form:form>
	</div>
	</div>
	<div>
	<a href="/reg">Sing up</a>
	</div>
</body>
</html>