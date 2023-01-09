<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/app.js"></script>
		<title>Save Travels</title>
	</head>
	<body>
		<div class="container bg-light">
			<h1 class="color-primary">Save Travels</h1>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Expense</th>
						<th>Vendor</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
					</tr>
				</tbody>
			</table>
			<h2 class="color-primary">Add an Expense:</h2>
			<form:form class="form" action="/expense/create" method="POST" modelAttribute="expense">
				<div>
					<form:label path="name">Expense Name</form:label>
					<form:input path="name"/>
					<form:errors path="name"/>
				</div>
				<div>
					<form:label path="vendor">Vendor</form:label>
					<form:input path="vendor"/>
					<form:errors path="vendor"/>
				</div>
				<div>
					<form:label path="amount">Amount</form:label>
					<form:input path="amount"/>
					<form:errors path="amount"/>
				</div>
				<div>
					<form:label path="description">Description</form:label>
					<form:textarea path="description"/>
					<form:errors path="description"/>
				</div>
				<button>Save Expense</button>
			</form:form>
		</div>
	</body>
</html>