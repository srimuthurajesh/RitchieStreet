<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RajeshShopping </title>
</head>
<body>
<h2><a href="index" style="text-decoration: none;color:black;">Welcome RajeshShopping</a></h2>
<h5>Register yourself and join with us</h5>


<%-- <c:url var="action" value="registersuccess" ></c:url> --%>
<form:form action="registersuccess" method="post" commandName="userModel">
<table>
<tr>  <td>Your sweet name: </td><td><form:input type="text" title="id should have max 15 min 3 char" path="username" pattern="[A-Za-z]{3,15}" required="true" autocomplete="on" /></td></tr>

<tr> <td>Email-id: </td><td><form:input type="email" path="emailid"/></td></tr>

<tr> <td>Password: </td><td><form:input type="password" pattern="{5,}[a-z0-9]" path="password" required="true"/></td></tr>

<tr> <td>Confirm Password:</td><td><input type="password" /></td></tr>
<!-- <script src="http://www.w3schools.com/js/myScript1.js" type='text/javascript'> -->
<!-- //     function check(input) { -->
<!-- //         if (input.value != document.getElementById('password').value) { -->
<!-- //            alert("Password Must be Matching."); -->
<!-- //         } else { -->
<!-- //             // input is valid -- reset the error message -->
<!-- //             input.setCustomValidity(''); -->
<!-- //         } -->
<!-- //     } -->
<!-- </script> -->

<tr> <td>DOB: </td><td><form:input type="text" path="dob"/></td></tr>
<tr> <td>Mobile-No: </td><td><form:input type="text" path="mobile" /></td></tr>
<tr> <td>Address: </td></tr>
<tr> <td>Street name: </td><td><form:input type="text" path="streetname" /></td>
 <td>City: </td><td><form:input type="text" path="cityname" /></td>
 <td>pin-code: </td><td><form:input type="text" path="pincode" /></td></tr>
</table>
<input type="submit" value="fun begins here" >
</form:form>

</body>
</html>
