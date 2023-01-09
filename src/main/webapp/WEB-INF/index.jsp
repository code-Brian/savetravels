<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<div class="container bg-light mt-3">
			<h1 class="text-primary">Save Travels</h1>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Expense</th>
						<th>Vendor</th>
						<th>Amount</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="expense" items="${allExpenses}">
						<tr>
							<td><c:out value="${expense.name}"/></td>
							<td><c:out value="${expense.vendor}"/></td>
							<td><fmt:formatNumber value="${expense.amount}" type="currency"/></td>
							<td>
								<a class="me-2" href="/expense/${expense.id}/update">Edit</a>
								<form style="display:inline;" action="/expense/${expense.id}/delete" method="POST">
									<input type="hidden" name="_method" value="DELETE"/>
									<button class="btn btn-danger btn-sm p-1">Delete</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="container w-25">
				<h2 class="text-primary">Add an Expense</h2>
				<form:form class="form" action="/expense/create" method="POST" modelAttribute="expense">
					<div class="">
						<form:label class="form-label" path="name">Expense Name</form:label>
						<form:input class="form-control form-control-sm" path="name"/>
						<form:errors path="name"/>
					</div>
					<div>
						<form:label class="form-label" path="vendor">Vendor</form:label>
						<form:input class="form-control form-control-sm" path="vendor"/>
						<form:errors path="vendor"/>
					</div>
					<div>
						<form:label class="form-label" path="amount">Amount</form:label>
						<form:input class="form-control form-control-sm" path="amount"/>
						<form:errors path="amount"/>
					</div>
					<div>
						<form:label class="form-label" path="description">Description</form:label>
						<form:textarea class="form-control form-control-sm" path="description"/>
						<form:errors path="description"/>
					</div>
					<button class="btn btn-sm btn-primary p-1 my-3">Save Expense</button>
				</form:form>
			</div>
		</div>
	</body>
</html>