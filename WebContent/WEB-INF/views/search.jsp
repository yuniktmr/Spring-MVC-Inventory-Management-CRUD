<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><h1>Search Result</h1></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="new">Create Customer <span class="sr-only">(current)</span></a>
      </li>
      
      
	      
      
    </ul>
    <form class="form-inline my-2 my-lg-0" method = "get" action = "search">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name = "keyword">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
	<table class= "table table-dark">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>E-mail</th>
		<th>Address</th>
		<th>Action</th>
	</tr>
	<c:forEach items = "${result}" var="customer">
		<tr>
		<td>${customer.id}</td>
		<td>${customer.name}</td>
		<td>${customer.email}</td>
		<td>${customer.address}</td> 
		<td>
			<a href = "edit?id=${customer.id}">Edit</a>
		
		&nbsp;&nbsp;&nbsp;
			<a href = "delete?id=${customer.id}">Delete</a>
		</td>
		</tr>
	</c:forEach>
	</table>
</div>

</body>
</html>