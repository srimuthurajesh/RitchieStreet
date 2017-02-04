<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RitchieStreet|Admin </title>

  
    <!-- Font awesome -->
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.simpleLens.css"/>">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slick.css"/>">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css"   href="<c:url value="/resources/css/nouislider.css"/>">
    <!-- Theme color -->
    <link id="switcher"  rel="stylesheet" href="<c:url value="/resources/css/theme-color/lite-blue-theme.css"/>">

    <!-- Main style sheet -->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https:+//fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    





  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.js"/>"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.js"/>"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleGallery.js"/>"></script>
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleLens.js"/>"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/slick.js"/>"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/nouislider.js"/>"></script>
 
    
</head>
<body>

 
 <%@ include file="header.jsp"%>
  
 

	<h5>Add Supplier page ADMIN</h5>

<c:choose><c:when test="${ not empty values}">
	<table>
	<!-- spring form -->
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplierModel">
		
					<tr>
						<td>supplier Id:</td>
						<td><form:input type="text"
								value="${values.getSupplierId() }" path="supplierId"  disabled="true" readonly="true" /></td>
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

 <%@ include file="footer.jsp"%>
 
 
 </body>
</html>