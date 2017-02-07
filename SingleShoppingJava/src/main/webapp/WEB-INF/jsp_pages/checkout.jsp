
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="icon" type="image/png"  href="<c:url value="/resources/img/close-icon.png"/>" sizes="16x16">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
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


 <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form:form action="carddetails" commandName="addressModel" method="GET">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                    <!-- Billing Details -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                         <!--  <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"> -->
                            <strong class="title"><h4>Shipping Address</h4></strong>
                         <!-- </a> -->
                        </h4>
                      </div>
                      <div id="collapseThree" >
                        <div class="panel-body">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                 <form:input type="text" placeholder="Name" path="billingFirstname"/> 
                              </div>                             
                            </div>
                             </div> 
                          
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="email" placeholder="Email Address*" path="billingEmail"/>
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="tel" placeholder="Phone*" path="billingPhone" />
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <form:textarea cols="8" rows="3" path="billingAddress"/>Address*</textarea>
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:select path="billingCity">
                                  <option value="0">Select Your City</option>
                                  <option value="1">Chennai</option>
                                  <option value="2">Allahabad</option>
                                  <option value="3">Bangalore</option>
                                  <option value="4">Hyderabad</option>
                                  <option value="5">Mumbai</option>
                                  <option value="6">Goa</option>
                                  <option value="7">Kolkata</option>
                                  <option value="8">Cochin</option>
                                   </form:select>
                              </div>                             
                            </div>
<div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <form:input type="text" placeholder="Postcode / ZIP*" path="billingPincode"/>
                              </div>
                            </div>                            
                          </div>
                            
                       </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4><strong>Order Summary</strong></h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                        <tr>
                          <th>Product</th>
                          <th>Total</th>
                        </tr>
                      </thead>
                      <tbody>
                       
                        <c:forEach var="cartList" items="${cartList}">
                    <tr>
                          <td>${cartList.productModel.productName} <strong> x 
<%--                            ${cartList.quantity} --%>
                           </strong></td>
                          <td>${cartList.productModel.productPrice}</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                      <tfoot>
                         <tr>
                          <th>Total</th>
                          <td>$grandtotal</td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <h4><strong>Payment Method</strong></h4>
                  <div class="aa-payment-method">                    
                   <label for=""><form:radiobutton path="paymentOption" value="Cash on delivery" />Cash on Delivery</label>
                   <label for=""><form:radiobutton path="paymentOption" value="By Card" />Pay by Bank Card</label>
                  <br><br><br>  <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark">    
                    <input type="submit" value="Place Order" class="aa-browse-btn">                
                  </div>
                </div>
              </div>
            </div>
          </form:form>
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

  </body>
</html>





 
