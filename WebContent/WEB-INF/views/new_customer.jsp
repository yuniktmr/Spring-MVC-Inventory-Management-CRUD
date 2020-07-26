<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<title>New Customer</title>
</head>
<body>
<div align = "left">
	<h2>New Customer</h2>
	<form:form action="save" method = "post" modelAttribute = "customer" class="form-inline my-2 my-lg-0">
		<table border = "0" cellpadding = "5" class = "table table-dark">
			<tr>
				<td>Name:</td>
				<td><form:input path = "name"/></td>
			
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><form:input path = "email"/></td>
			
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path = "address"/></td>
			
			</tr>
			<tr>
				<td colspan="2"><input type = "submit" value = "Save"/></td>
			</tr>
		</table>
	</form:form>
</div>

</body>
</html>