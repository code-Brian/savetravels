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
		<title>Expense | Update</title>
	</head>
	<body>
		<div class="container bg-light mt-3 rounded p-3">
			<h1 class="text-primary">Save Travels</h1>
			<div class="container w-25">
				<h2 class="text-primary">Edit an Expense</h2>
				<form:form class="form" action="/expense/${expense.id}/update" method="POST" modelAttribute="expense">
					<input type="hidden" name="_method" value="PUT"/>
					<div class="">
						<form:label class="form-label" path="name">Expense Name</form:label>
						<form:input class="form-control form-control-sm" path="name" value="${expense.name}"/>
						<form:errors path="name"/>
					</div>
					<div>
						<form:label class="form-label" path="vendor">Vendor</form:label>
						<form:input class="form-control form-control-sm" path="vendor" value="${expense.vendor}"/>
						<form:errors path="vendor"/>
					</div>
					<div>
						<form:label class="form-label" path="amount">Amount</form:label>
						<form:input class="form-control form-control-sm" path="amount" value="${expense.amount}"/>
						<form:errors path="amount"/>
					</div>
					<div>
						<form:label class="form-label" path="description">Description</form:label>
						<form:textarea class="form-control form-control-sm" path="description" value="${expense.description}"/>
						<form:errors path="description"/>
					</div>
					<button class="btn btn-sm btn-primary p-1 my-3">Save Expense</button>
				</form:form>
				<a class="btn btn-success p-3" href="/">Home</a>
			</div>
		</div>
	</body>
</html>