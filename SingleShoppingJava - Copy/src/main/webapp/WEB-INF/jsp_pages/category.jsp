<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RajeshShopping</title>
</head>
<body>
	<h2>
		<a href="index" style="text-decoration: none; color: black;">Welcome
			RajeshShopping</a>
	</h2>
	<h5>Add category page ADMIN</h5>


<c:choose><c:when test="${ not empty values}">
	<table>
	<!-- spring form -->
	<c:url var="action" value="/addcategory"></c:url>
	<form:form action="${action}" method="get" commandName="categoryModel">
		
					<tr>
						<td>category Id:</td>
						<td><form:input type="text"
								value="${values.getCategoryId() }" path="categoryId" /></td>
					</tr>
					<tr>
						<td>category Name:</td>
						<td><form:input type="text"
								value="${values.getCategoryName()}" path="categoryName" /></td>
					<tr><td>			<input type="submit" value="Edit category"/></td></tr>
		</form:form></table>
				</c:when>
				<c:otherwise><table>
	<c:url var="action" value="/addcategory"></c:url>
	<form:form action="${action}" method="get" commandName="categoryModel">
	
			<tr>
						<td>category Id:</td>
						<td><form:input type="text"
								placeholder="enter the category id" path="categoryId" /></td>
					</tr>
					<tr>
						<td>category Name:</td>
						<td><form:input type="text"
								placeholder="enter the suplier name" path="categoryName" /></td>
				<tr><td>			<input type="submit" value="Add category"></td></tr>
		</form:form>
				</table>
					</c:otherwise>
			</c:choose>
<br>
	<br>
	<br>

<!-- ---------------------------------------------DIsplay category list--------------------------------------------------------- -->
	<strong>Category List</strong>
	<c:if test="${not empty list}">

		<table style="border: 1px solid black;">
			<tr>
				<th>Category Id</th>
				<th>CategoryName</th>
				<th>Options</th>
			</tr>
			<c:forEach var="listValue" items="${list}">
				<tr>
					<td>${listValue.categoryId}</td>
					<td>${listValue.categoryName}</td>
					<td><form action="deletecategory">
							<button name="categoryId" type="submit"
								value=${listValue.categoryId}>Delete</button>
						</form></td>
					<td><form action="editcategory">
							<button name="categoryId" type="submit"
								value=${listValue.categoryId} >Edit</button>
						</form></td>
				</tr>
			</c:forEach>
		</table>

	</c:if>
	<br>
	<br>
	<br>
	<br> Admin page:
	<a href="admin">click here</a>
	<br>
	<a href="index">Index</a>
</body>
</html>
