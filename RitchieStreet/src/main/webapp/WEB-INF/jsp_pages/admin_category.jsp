<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" type="image/png"  href="<c:url value="/resources/img/logo1.png"/>" sizes="16x16">
  
<title>RitchieStreet| Admin_category  </title>

  
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
<body  ng-app="categoryTable" ng-controller="CategoryController">
  
 
 
 <%@ include file="header.jsp"%>



<!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="<c:url value="/resources/img/admin.jpg"/>" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Admin Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home  </a></li>                   
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
	<!-- spring form -->
	<h4>Edit Category</h4>
	<form:form action="addcategory" method="get" commandName="categoryModel">
		
					
						<label for="">category Id:</label>
						<form:input type="text"
								value="${values.getCategoryId() }" path="categoryId"    readonly="true" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;" />					
						<label for="">category Name:</label>
						<form:input type="text"
								value="${values.getCategoryName()}" path="categoryName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
							<button class="aa-browse-btn" type="submit">Edit Category</button>
		</form:form>
				</c:when>
				<c:otherwise>
					<h4>Add Category</h4>
	<c:url var="action" value="/addcategory"></c:url>
	<form:form action="${action}" method="get" commandName="categoryModel">
	
			
						<label for="">category Id:</label>
					<form:input type="text"
								placeholder="enter the category id" path="categoryId" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
					
						<label for="">category Name:</label>
						<form:input type="text"
								placeholder="enter the suplier name" path="categoryName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"  />
							<button class="aa-browse-btn" type="submit">Add Category</button>
		</form:form>
				
					</c:otherwise>
			</c:choose>

</div></div></div></div></div></div></div></section>
<!-- ---------------------------------------------DIsplay category list--------------------------------------------------------- -->

 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
			<div class="page-header"><h3><strong>Category List</strong></h3></div>
			<div style="position:relative;left:570px"><strong> Search Categories:&nbsp;&nbsp;&nbsp;</strong> 
  			<input type="text"  placeholder="Search here Categories " ng-model="searchText" 
  			   style=" height: 40px;
  width: 35%;padding:10px" class="aa-search-box"/></div> <br>
		   <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
				<th>Category Id</th>
				<th>CategoryName</th>
				<th colspan="2">Options</th>
			</tr></thead>
			<tbody>
<%-- 			<c:forEach var="listValue" items="${list}"> --%>
			
				  <tr  ng-repeat="listValue in Category|filter:searchText">
					<td>{{listValue.categoryId}}</td>
					<td>{{listValue.categoryName}}</td>
					<td style="border-right:white"><form action="deletecategory"> <button class="aa-browse-btn" name="categoryId" type="submit" value={{listValue.categoryId}}>Delete</button></form></td>
					<td><form action="editcategory"><button class="aa-browse-btn" name="categoryId" type="submit" value={{listValue.categoryId}}>Edit</button></form></td>
					</tr>
<%-- 					</c:forEach> --%>
					    </tbody>
                  </table>
                </div>
</div></div></div></div></div></section>


 <%@ include file="footer.jsp"%>
 
 <script>
  var category = ${categoryList}; 
  angular.module('categoryTable',[]).controller('CategoryController', function($scope)  
   {
          $scope.Category=category;  
                  
    });
 </script> 
 
 
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
  <script src="<c:url value="/resources/js/angular.min.js"/>"></script> 
 
 </body>
</html>