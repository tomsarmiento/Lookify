<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Song</title>
</head>
<body>
	<div class="container container-fluid sp-3" style="margin-top:20px;">
		<a href="/dashboard" style="margin-left:87%;">Dashboard</a>
		<form:form action="/dashboard" method="post" modelAttribute="song" style="width:30%;">
			<p class="form-group">
				<form:label path="title">Title</form:label>
				<form:input path="title" class="form-control" />
				<form:errors path="title"/>
			</p>
			<p class="form-group">
				<form:label path="artist">Artist</form:label>
				<form:input path="artist" class="form-control"/>
				<form:errors path="artist" />
			</p>
			<p class="form-group">
				<form:label path="rating">Rating (1-10):</form:label>
				<form:input type="number" path="rating" class="form-control"/>
				<form:errors path="rating" />
			</p>
			<input type="submit" value="Add song" class="btn btn-outline-secondary"/>
		</form:form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>