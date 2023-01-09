<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/app.js"></script>
		<title><c:out value="${expense.name}"/> | View</title>
	</head>
	<body>
		<div class="container bg-light p-3 mt-3 rounded">
			<h1>Name | <c:out value="${expense.name}"/></h1>
			<p> Vendor | <c:out value="${expense.vendor}"/></p>
			<p>Amount | <fmt:formatNumber value="${expense.amount}" type="currency"/>
			<p>Description | <c:out value="${expense.description}"/></p>
			<a class="btn btn-success p-1" href="/">Home</a>
		</div>
	</body>
</html>