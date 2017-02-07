
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>RitchieStreet| Home</title>
    
    <!-- Font awesome -->
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="<c:url value="/resources/css/jquery.smartmenus.bootstrap.css"/>" rel="stylesheet">
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
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   </head>
  <body> 
  
  

 <%@ include file="header.jsp"%>


  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Cart Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>                   
          <li class="active">Cart</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        
                        <th>Product Display</th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
						<th>Remove</th>
					  </tr>
                    </thead>
                    <tbody >
                    <c:forEach var="cartList" items="${cartList}">
                               <tr>			
                        <td><a href="#"><img src="<c:url value="/resources/product/${cartList.productModel.productId }.png"/>" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">${cartList.productModel.productName}</a></td>
                        <td><i class="fa fa-inr" ></i> ${cartList.productModel.productPrice} /-</td>
                        <td><input class="aa-cart-quantity" id="quantity" type="number" value="1"></td>
                        <td>$cartList.producttotalprice</td>
						<td><a chref="removeorder?orderId=${cartList.orderId}&username=${cartList.user.username}">Remove</a></td>
			 </tr>
	
				     
				      
                		</c:forEach>
                      
                      </tbody>
                  </table>
                </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Cart Totals</h4>
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>Grand Total</th>
                     <td><strong id="total"><span id="sum">0.00</span></strong></td>
                   </tr>
                 </tbody>
               </table>
               <a href="checkout?username=${User}" class="aa-cart-view-btn">Proceed to Checkout</a>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
 
 
 
  
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
  
  <!-- Custom js -->
  <script src="<c:url value="/resources/js/custom.js"/>"></script> 
<script src="<c:url value="/resources/angular.min.js"/>"></script> 
	
	
	
  </body>
</html>





 
