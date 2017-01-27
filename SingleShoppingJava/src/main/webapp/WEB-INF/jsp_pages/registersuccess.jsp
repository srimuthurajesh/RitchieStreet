<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RajeshShopping</title>
</head>
<body>
<h2>Your are successfully registered,   Rock on  </h2>
<br>

<table style="width:35%; ">

<tr> 
<td>  Your name is  </td>    <td>: ${userModel.username}</td> 
</tr>

<tr>
<td>Your Email-id is </td> <td>: ${userModel.emailid}</td>
</tr>

<tr>
<td>Your password is </td> <td>: ${userModel.password}</td>
</tr>

<tr>
<td>Your Mobile number is </td> <td>: ${userModel.mobile}</td>
</tr>

<tr>
<td>Your DOB is </td> <td>: ${userModel.dob}</td>
</tr>

<tr>
<td>Your Address is </td> <td><br><br>${userModel.streetname}<br> ${userModel.cityname}<br> ${userModel.pincode}</td>
</tr>

</table><br><br><br><br>
<a href="login">Log out</a>


</body>
</html>