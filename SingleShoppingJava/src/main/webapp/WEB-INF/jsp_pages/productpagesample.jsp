<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

		<form:form action="addproduct" method="get" commandName="productModel" enctype="multipart/form-data">
		<table>
		<tr>	
			<td>Product ID</td><td> <form:input path="productId"/></td></tr>
		
		<tr>	
			<td>Product ID</td><td> <form:input path="productName"/></td></tr>
		<tr>	
			<td>Product ID</td><td> <form:input path="productDescription"/></td></tr>
		<tr>	
			<td>Product ID</td><td> <form:input path="productPrice"/></td></tr>
		
			<tr><td>
			Image </td> <td><form:input type="file" path="image"/></td></tr>
			<tr><td>
			<input type="submit" value="SUBMIT"/></td></tr>
		</table>
		</form:form>


<body>

</body>
</html>