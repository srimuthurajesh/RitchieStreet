<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome RajeshShopping</title>
</head>
<body>
<h2>Welcome RajeshShopping</h2>

<h4> Enter your username and password</h4>

<c:url var="action" value="/deletesuccess" ></c:url>
<form:form action="deletesuccess" method="post" commandName="userModel">
<table>
<tr>
<td>Username:</td> <td><form:input type="text" path="username"/></td></tr>
<tr><td>Password:</td> <td><form:input type="password" path="password"/></td></tr>
<tr><td><input type="submit" value="Confirm Delete ">
</td></tr></table>
</form:form><br>

<a href="index">back</a>
</body>
</html>