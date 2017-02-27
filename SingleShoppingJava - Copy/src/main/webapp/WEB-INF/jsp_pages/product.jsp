<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 </head>
<body>

<h5>Add product page ADMIN</h5>

<c:choose><c:when test="${ not empty values}">
	<table>
	<!-- spring form -->
	<c:url var="action" value="/product"></c:url>
	<form:form action="${action}" method="get" commandName="productModel">
		
					<tr>
						<td>Product Id:</td>
						<td><form:input type="text"
								value="${values.getProductId() }" path="productId" /></td>
					</tr>
					<tr>
						<td>Product Name:</td>
						<td><form:input type="text"
								value="${values.getProductName()}" path="productName" /></td>
					<tr>
						<td>Product Description:</td>
						<td><form:input type="text"
								value="${values.getProductDescription()}" path="productDescription" /></td></tr>
				<tr>
						<td>Product Price:</td>
						<td><form:input type="text"
								value="${values.getProductPrice()}" path="productPrice" /></td>
					</tr>
					
				<tr>	<td>Category Id</td>
					<td>	<form:select path="categoryId" items="${categorylist}"  itemValue="categoryId" itemLabel="categoryId" style="width:100%" /></td></tr>
				<tr>	<td>Supplier Id</td>
					<td>	<form:select path="supplierId" items="${supplierlist}" itemValue="supplierId" itemLabel="supplierId" style="width:100%" /></td></tr>
					<tr><td>			<input type="submit" value="Edit Product"/></td></tr>
		</form:form></table>
				</c:when>
				<c:otherwise><table>
	<c:url var="action" value="/addproduct"></c:url>
	<form:form action="${action}" method="get" commandName="productModel">
<tr>
						<td>Product Id:</td>
						<td><form:input type="text"
								placeholder="Enter the ProductId" path="productId" /></td>
					</tr>
					<tr>
						<td>Product Name:</td>
						<td><form:input type="text"
								placeholder="Enter the ProductName"  path="productName" /></td>
					<tr>
						<td>Product Description:</td>
						<td><form:input type="text"
								placeholder="Enter the ProductDescription"  path="productDescription" /></td></tr>
								<tr>
						<td>Product Price:</td>
						<td><form:input type="text"
								placeholder="Enter the ProducPrice"  path="productPrice" /></td>
					</tr>
				
				<tr>	<td>Category Id</td>
					<td>	<form:select path="categoryId" items="${categorylist}" itemValue="categoryId" itemLabel="categoryId" style="width:100%" /></td></tr>
				<tr>	<td>Supplier Id</td>
					<td>	<form:select path="supplierId" items="${supplierlist}" itemValue="supplierId" itemLabel="supplierId" style="width:100%" /></td></tr>
					<tr><td>			<input type="submit" value="Add Product"/></td></tr>


			</form:form>	</table>
					</c:otherwise>
			</c:choose>








<br><br><br><br><br><br>

<c:if test="${not empty productlist}">
<strong>Product List</strong>
   
	<table style="border: 1px solid black;">	
	<tr>
	<th>product Id</th>
	<th>productName</th>
	<th>ProductDescription</th>
	<th>category Id</th>
	<th>Supplier Id</th>
	<th>Price</th>
	<th>Options</th>
	</tr>
			<c:forEach var="listValue" items="${productlist}">
			<tr>	
			<td>${listValue.productId}</td>
			<td>${listValue.productName}</td>
			<td>${listValue.productDescription}</td>
			<td>${listValue.categoryId}</td>
			<td>${listValue.supplierId}</td>
			<td>${listValue.productPrice}</td>
			<td><form action="deleteproduct"><button name="productId"  type="submit"  value=${listValue.productId}  >Delete</button></form></td>
			<td><form action="editproduct"><button name="productId" type="submit" value=${listValue.productId} >Edit</button></form></td>
			</tr>
			</c:forEach>
	</table>

	</c:if>

<br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>Admin page: <a href="admin">click here</a><br><a href="index">Index</a>
 /body>
</html>