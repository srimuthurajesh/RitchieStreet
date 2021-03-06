<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" type="image/png"  href="<c:url value="/resources/img/logo1.png"/>" sizes="16x16">
  
<title>RitchieStreet | Admin_product </title>

  
<!--       Font awesome   -->
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
<!--       Bootstrap   -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">   
<!--       SmartMenus jQuery Bootstrap Addon CSS   -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<!--       Product view slider   -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.simpleLens.css"/>">    
<!--       slick slider   -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slick.css"/>">
<!--       price picker slider   -->
    <link rel="stylesheet" type="text/css"   href="<c:url value="/resources/css/nouislider.css"/>">
<!--       Theme color   -->
    <link id="switcher"  rel="stylesheet" href="<c:url value="/resources/css/theme-color/lite-blue-theme.css"/>">

<!--       Main style sheet   -->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">    

<!--       Google Font   -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https:+//fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    





<!--     jQuery library   -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--     Include all compiled plugins (below), or include individual files as needed   -->
  <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>  
<!--     SmartMenus jQuery plugin   -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.js"/>"></script>
<!--     SmartMenus jQuery Bootstrap Addon   -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.js"/>"></script>  
<!--     Product view slider   -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleGallery.js"/>"></script>
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleLens.js"/>"></script>
<!--     slick slider   -->
  <script type="text/javascript" src="<c:url value="/resources/js/slick.js"/>"></script>
<!--     Price picker slider   -->
  <script type="text/javascript" src="<c:url value="/resources/js/nouislider.js"/>"></script>
 <script src="<c:url value="/resources/js/angular.min.js"/>"></script> 
 
    
</head>
<body  ng-app="productTable" ng-controller="ProductController">


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
  
  
  
  
  
	    
  
<section id="aa-myaccount" >
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-8">
                <div class="aa-myaccount-register">                 
 
<c:choose><c:when test="${ not empty values}">
	
	<h4>Edit Product</h4>
	<form:form action="addproduct" method="post" enctype="multipart/form-data" commandName="productModel">
					
						<label for="" style="width:51%">Product Id: </label> <label for="">Product Name:</label><br>
						<form:input type="text"
 					value="${values.getProductId() }" path="productId"   readonly="true" style="border: 1px solid #ccc; 
   font-size: 16px;
   height: 40px;
   margin-bottom: 15px; 
   padding: 10px; 
   width: 47%;"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
						
						<form:input type="text"
  								value="${values.getProductName()}" path="productName" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 50%;" /><br>  
  						<label for="">Product Description:</label><br>  
						<form:input type="text"
  								value="${values.getProductDescription()}" path="productDescription" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 100%;"/>  
						<label for="">Product Price:</label>
  						<form:input type="text"  
  								value="${values.getProductPrice()}" path="productPrice" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 100%;"/>  
					
						<label for="" style="width:49%">Category Name</label><label for="">Supplier Name</label>  
  			
						<form:select path="CategoryModel.categoryName" items="${categorylist}"  itemValue="categoryName" itemLabel="categoryName" style="border: 1px solid #ccc;
      font-size: 16px;    
      height: 40px;    
      margin-bottom: 15px;    
      padding: 10px;    
      width: 48%;" />    &nbsp;&nbsp;&nbsp;&nbsp;
    					<form:select path="SupplierModel.supplierName" items="${supplierlist}" itemValue="supplierName" itemLabel="supplierName" style="border: 1px solid #ccc;    
      font-size: 16px;    
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 49%;" />  
					
   						<label for="">image:</label>   
   						 <form:input type="file"  path="image" style="border: 1px solid #ccc;
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 100%;"/>  
   
   								<button class="aa-browse-btn" type="submit">Save Changes</button>  
  		</form:form>  
		
		
  				</c:when>  
  				<c:otherwise>  
	<h4>Add Product</h4>
	<form:form action="addproduct" method="post"  enctype="multipart/form-data" commandName="productModel">
	
						<label for="" style="width:49%">Product Id:</label> <label for="">Product Name:</label><br>
						<form:input type="text"
								placeholder="Enter the ProductId" path="productId" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 48%;"/>&nbsp;&nbsp;&nbsp;
                
					
						
						<form:input type="text"
								placeholder="Enter the ProductName"  path="productName" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 50%;"/>
					<label for="">Product Description:</label>
						<form:input type="text"
								placeholder="Enter the ProductDescription"  path="productDescription" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"/>
								
					
  				<label for="" style="width:49%">Category Name</label><label for="">Supplier Name</label>  
  						<form:select path="categoryId" items="${categorylist}" itemValue="categoryId" itemLabel="categoryName"  style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 48%;"/>&nbsp;&nbsp;&nbsp;  
				
				
  						<form:select path="supplierId" items="${supplierlist}" itemValue="supplierId" itemLabel="supplierName"  style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 50%;" />  



<label for="" style="width:49%">Product Price:</label>   
						<form:input type="text"
								placeholder="Enter the ProducPrice"  value="" path="productPrice" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"/>
		
				
				


				<label for="">image:</label>
					 <form:input type="file"  path="image" style="border: 1px solid #ccc;
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 100%;"/>  

								<button class="aa-browse-btn" type="submit">Add Product</button>
					

			</form:form>	
					
  					</c:otherwise>  
  			</c:choose>  

</div></div></div></div></div></div></div></section>




 
<!--      Cart view section     -->
  			
  			<section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
			<div class="page-header"><h3><strong>Product List</strong></h3></div>
  			      
  			      
  			      
  			<div style="position:relative;left:570px"><strong> Search Products:&nbsp;&nbsp;&nbsp;</strong> 
  			<input type="text"  placeholder="Search here Products, Brands , names etc " ng-model="searchText" 
  			   style=" height: 40px;
  width: 35%;padding:10px" class="aa-search-box"/></div>  <br>
				 
                 <div class="table-responsive">  
                 
                    <table class="table">  
                      <thead>  
                        <tr>  
                          <th>Product Id</th>  
                          <th>Product Name</th>  
                          <th>Product Description</th>  
                          <th>Category Id</th>  
                          <th>Supplier Id</th>  
  						 <th>Product Price</th>  
  						 <th>Product Picture</th>  
  						 <th colspan="2" >Manage Products<th>  
                        </tr>  
                      </thead>  
                      <tbody>  
                  
<%--                       <c:forEach var="listValue" items="${productlist}">   --%>
                      
                        <tr  ng-repeat="listValue in Product|filter:searchText">  
  			<td>{{listValue.productId}}</td>  
                          <td><a class="aa-cart-title" href="#">{{listValue.productName}}</a></td>  
                         <td>{{listValue.productDescription}}</td>  
  			<td>{{listValue.categoryId}}</td>  
  			<td>{{listValue.supplierId}}</td>  
  			<td><i class="fa fa-inr"></i> {{listValue.productPrice}}</td>  
  			<td><a href="#"><img src="<c:url value="/resources/product/{{listValue.productId}}.png"/>" alt="{{listValue.productId}}"></a></td>  
  			<td style="border-right:white">  
  			<form action="deleteproduct"><button name="productId" class="aa-cart-view-btn"  type="submit"  value={{listValue.productId}} style="heigth:2px;">Delete</button></form></td>  
  			<td><form action="editproduct"><button name="productId" class="aa-cart-view-btn" type="submit" value={{listValue.productId}} style="heigth:1px">Edit</button></form></td>	  
  		</tr>		
<%--   			</c:forEach>		     --%>
			 
                        </tbody>  
                    </table>  
                  </div>  
             
             
  </div></div></div></div></div></section>  


		
 <%@ include file="footer.jsp"%>
 
 
 
 
<script>
  var prod = ${productList}; 
  angular.module('productTable',[]).controller('ProductController', function($scope)  
   {
          $scope.Product=prod;  
       
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   
              $scope.reverse = !$scope.reverse; 
          }
              
    });
</script>
 
 </body>
</html>