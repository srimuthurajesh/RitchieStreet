<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RitchieStreet|Admin_supplier </title>

  
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
    


 
    
</head>
<body>

 
 <%@ include file="header.jsp"%>
  
 
<!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="<c:url value="/resources/img/admin.jpg"/>" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Admin Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home / </a></li>                   
          <li class="active">${page_name}</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
  

<section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-8">
                <div class="aa-myaccount-register">                 


<c:choose><c:when test="${ not empty values}">
<h4>Edit Supplier</h4>
	
	<!-- spring form -->
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplierModel">
	
		<label for="">supplier Id:</label>
						<form:input type="text"
								value="${values.getSupplierId()}" path="supplierId"    readonly="true" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />					
					

		<label for="">supplier Name:</label>
						<form:input type="text"
								value="${values.getSupplierName()}" path="supplierName"   style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />	
  

		<label for="">supplier Details:</label>
						<form:input type="text"
								value="${values.getSupplierDetails()}" path="supplierDetails"   style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />	
  				
						
						<button class="aa-browse-btn" type="submit">Edit Supplier</button>
		</form:form>
				</c:when>
				<c:otherwise>
				
	<c:url var="action" value="/addsupplier"></c:url>
	<form:form action="${action}" method="get" commandName="supplierModel">
	<h4>Add Supplier</h4>
		<label for="">Supplier Id:</label>
					<form:input type="text"
								placeholder="enter the supplier id" path="supplierId" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
  
		<label for="">Supplier Name:</label>
					<form:input type="text"
								placeholder="enter the supplier Name" path="supplierName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
		<label for="">Supplier Details:</label>
					<form:input type="text"
								placeholder="enter the supplier Details" path="supplierDetails" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
			<button class="aa-browse-btn" type="submit">Add Supplier</button>
		</form:form>
				
					</c:otherwise>
			</c:choose>

</div></div></div></div></div></div></div></section>

<!-- ---------------------------------------------DIsplay Supplier list--------------------------------------------------------- -->

 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
			<div class="page-header"><h3><strong>Supplier List</strong></h3></div>
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
				<th>Supplier Id</th>
				<th>Supplier Name</th>
				<th>Supplier Details</th>
				<th colspan="2">Options</th>
			</tr></thead>
			<tbody>
	<c:forEach var="listValue" items="${list}">
			


<tr>
					<td>${listValue.supplierId}</td>
					<td>${listValue.supplierName}</td>
					<td>${listValue.supplierDetails}</td>
					<td style="border-right:white"><form action="deletesupplier"> <button class="aa-browse-btn" name="supplierId" type="submit" value=${listValue.supplierId}>Delete</button></form></td>
					<td><form action="editsupplier"><button class="aa-browse-btn" name="supplierId" type="submit" value=${listValue.supplierId}>Edit</button></form></td>
					</tr>
					</c:forEach>
					    </tbody>
                  </table>
                </div>
</div></div></div></div></div></section>



 <%@ include file="footer.jsp"%>
 



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
 
 </body>
</html>