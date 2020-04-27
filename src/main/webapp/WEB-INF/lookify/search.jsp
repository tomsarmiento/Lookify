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
<title>Search</title>
</head>
<body>
	<div class="container container-fluid sp-3" style="margin-top: 20px;">
		<h4 style="display:inline-block;">
			Songs by artist:
			<c:out value="${artist}"></c:out>
		</h4>
		<form action="/search" method="post"
			style="display: inline-block; margin: 0 4% 2% 34%;">
			<p class="form-inline">
				<input type="text" name="artist" class="form-control" /> <input
					type="submit" value="New Search"
					class="btn btn-outline-secondary" />
			<p>
		</form>
		<a href="/dashboard">Dashboard</a>
		<table class="table table-hover">
			<tr>
				<th>Title</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="song" items="${songs}">
				<tr>
					<th><a href="songs/${song.id}"><c:out
								value="${song.title}" /></a></th>
					<th><c:out value="${song.rating}" /></th>
					<th><form:form action="/songs/{song.id}" method="delete">
							<input type="submit" value="Delete" class="btn btn-link">
						</form:form></th>
				</tr>
			</c:forEach>
		</table>
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