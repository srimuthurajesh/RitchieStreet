<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

		<form action="addproduct" method="get"  enctype="multipart/form-data">
		<table>
		<tr>	
			<td>Product ID</td><td> <input name="productId"></td></tr>
		
		<tr>	
			<td>Product ID</td><td> <input name="productName"></td></tr>
		<tr>	
			<td>Product ID</td><td> <input name="productDescription"></td></tr>
		<tr>	
			<td>Product ID</td><td> <input name="productPrice"></td></tr>
		
			<tr><td>
			Image </td> <td><input type="file" name="image"></td></tr>
			<tr><td>
			<input type="submit" value="SUBMIT"/></td></tr>
		</table>
		</form>


<body>

</body>
</html>