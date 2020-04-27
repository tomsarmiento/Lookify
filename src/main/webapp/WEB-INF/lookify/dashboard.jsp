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
<title>Lookify!</title>
</head>
<body>
	<div class="container container-fluid sp-4" style="margin-top: 20px;">
		<a href="/songs/new" style="margin-left: 2%;">Add New</a> <a
			href="/search/topten" style="margin-left: 5%;">Top songs</a>
		<form action="/search" method="post"
			style="display: inline-block; margin: 0 0 2% 45%;">
			<p class="form-inline">
				<input type="text" name="artist" class="form-control" />
				<input type="submit" value="Search Artist" class="btn btn-outline-secondary" />
			<p>
		</form>
		<table class="table table-hover">
			<tr>
				<th>Title</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="song" items="${songs}">
				<tr>
					<td><a href="songs/${song.id}"><c:out
								value="${song.title}" /></a></td>
					<td><c:out value="${song.rating}" /></td>
					<td><form:form action="/songs/{song.id}" method="delete">
							<input type="submit" value="Delete" class="btn btn-link">
						</form:form></td>
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