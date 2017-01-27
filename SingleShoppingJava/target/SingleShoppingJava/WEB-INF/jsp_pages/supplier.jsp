<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h5>Add Supplier page ADMIN</h5>

<c:choose><c:when test="${ not empty values}">
	<table>
	<!-- spring form -->
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplierModel">
		
					<tr>
						<td>supplier Id:</td>
						<td><form:input type="text"
								value="${values.getSupplierId() }" path="supplierId" /></td>
					</tr>
					<tr>
						<td>supplier Name:</td>
						<td><form:input type="text"
								value="${values.getSupplierName()}" path="supplierName" /></td>
					<tr><td>supplier Details:</td>
						<td><form:input type="text"
								value="${values.getSupplierDetails()}" path="supplierDetails" />
						</td>
					</tr>
		<tr><td>			<input type="submit" value="Edit supplier"/></td></tr>
		</form:form></table>
				</c:when>
				<c:otherwise><table>
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplierModel">
	
			<tr>
						<td>supplier Id:</td>
						<td><form:input type="text"
								placeholder="enter the supplier id" path="supplierId" /></td>
					</tr>
					<tr>
						<td>supplier Name:</td>
						<td><form:input type="text"
								placeholder="enter the suplier name" path="supplierName" /></td>
					<tr><td>supplier details:</td>
						<td><form:input type="text"
placeholder="enter the supplierdetails" path="supplierDetails" />
						</td>
					</tr>
		<tr><td>			<input type="submit" value="Add supplier"></td></tr>
		</form:form>
				</table>
					</c:otherwise>
			</c:choose>
	<br>
	<br>
	<strong>Supplier List</strong>
	<c:if test="${not empty list}">

		<table style="border: 1px solid black;">
			<tr style="border: 1px solid black;">
				<th>Supplier Id</th>
				<th>Supplier Name</th>
				<th>Supplier Details</th>
				<th>Options</th>
			</tr>
			<c:forEach var="listValue" items="${list}">
				<tr>
					<td>${listValue.supplierId}</td>
					<td>${listValue.supplierName}</td>
					<td>${listValue.supplierDetails}</td>
					<td><form action="deletesupplier">
							<button name="supplierId" type="submit"
								value=${listValue.supplierId}>Delete</button>
						</form></td>
					<td><form action="editsupplier">
							<button name="supplierId" type="submit"
								value=${listValue.supplierId} >Edit</button>
						</form></td>
				</tr>
			</c:forEach>
		</table>

	</c:if>

	<br>
	<br>
	<br> Admin page:
	<a href="admin">click here</a>
	<br>
	<a href="index">Index</a>
</body>
</html>