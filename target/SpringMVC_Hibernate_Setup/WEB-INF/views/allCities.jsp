<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Cities</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body style="text-align: center; margin: auto">

	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/addCity">Add City</a>
	<br>
	<h3>List of all cities</h3>
	${message}
	<br>
	<br>
	<table cellpadding="0" cellspacing="0" width=50%
		style="text-align: center; margin: auto">
		<thead>
			<tr>
				<th>id</th>
				<th>description</th>
				<th>state id</th>
				<th>edit</th>
				<th>delete</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="city" items="${cityList}">
				<tr>
					<td>${city.city_id}</td>
					<td>${city.description}</td>
					<td>${city.state_id}</td>
					<td><a href="${pageContext.request.contextPath}/editCity/${city.city_id}">Edit</a></td>

					<td><a href="${pageContext.request.contextPath}/deleteCity/${city.city_id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<br>
	<hr>

</body>
</html>