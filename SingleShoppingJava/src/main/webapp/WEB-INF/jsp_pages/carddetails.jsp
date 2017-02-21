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
     </script>
     
     <script language="javascript" type="text/javascript">


function addHyphen() {
    var t = document.forms['cardform'].elements['cardnumber'];
      if (t.value.length > 0) {
        t.value = t.value.substring(0,4) + "-" +t.value.substring(4,8)+ "-"+ t.value.substring(8,12)+ "-"+t.value.substring(12,16);
      }
}

</script>
     
     
  </head>
  <body> 

  
  
  
  
  
  
  
  <%@ include file="header.jsp"%>
 
   <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
             
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>Enter Your Card Details</h4>
                 <form:form action="cardpaymentsuccess" class="aa-login-form" commandName="carddetailModel" id="cardform">
                     <label for="" style="width:48%">Card Type:</label><br>
                    <form:select path="cardType" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 100%;">
    
    <option value="visa">Visa</option>
    <option value="mastercard">MasterCard</option>
    <option value="american">American</option>
  </form:select>
    
                    <label for="">Card Number</label><br>
                    <form:input type="text" placeholder="Enter Card 16 digit Number" maxlength="16" id="cardnumber" onChange="addHyphen()" path="cardNumber" />
                    
                    <label for="" style="width:48%">Expiration Month</label>
                    <label for="" style="width:48%">Year</label><br>
                    <form:select path="expDate" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 49%;">
    
    <option value="01">Jan</option>
    <option value="02">Feb</option>
    <option value="03">Mar</option>
    <option value="04">Apr</option>
    <option value="05">May</option>
    <option value="06">Jun</option>
    <option value="07">Jul</option>
    <option value="08">Aug</option>
    <option value="09">Sep</option>
    <option value="10">Oct</option>
	 <option value="11">Nov</option>
    <option value="12">Dec</option>
  </form:select>
                    
                   <form:select path="expYear" style="border: 1px solid #ccc;  
    font-size: 16px;  
    height: 40px;  
    margin-bottom: 15px;  
    padding: 10px;  
    width: 50%;">
    <option value="2017">2017</option>
    <option value="2018">2018</option>
    <option value="2019">2019</option>
    <option value="2020">2020</option>
    <option value="2021">2021</option>
    <option value="2022">2022</option>
    <option value="2023">2023</option>
    <option value="2024">2024</option>
    <option value="2025">2025</option>
    <option value="2026">2026</option>
 <option value="2027">2027</option>
    <option value="2028">2028</option>
  </form:select>  <br>
                    
                    <label for="">CVV/CVC</label>
                    <form:input type="password"  placeholder="cvv" maxlength="3" path="cvv" value=""/>
             
                       
                    <label for="">Card Holder's Name:</label>
                    <form:input type="text"  placeholder="Name" path="cardholderName" />    
                  </form:form>  
<%--                     <a href="paymentsuccess?username=${User}"><button  class="aa-browse-btn">Make Payment</button></a>                     --%>
                     <a href="${flowExecutionUrl }&_eventId=submit"><button  class="aa-browse-btn">Make Payment</button></a>                    
                 
                  <br><br><br>
                  <span style="font-size:14px">* Fields mandatory</span> 
                </div>
              </div>
             
              </div>
              
              
              
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
<%--     <a href="${flowExecutionUrl }&_eventId=submit?username=${$User}">submit</a> --%>
<%--                   <a href="${flowExecutionUrl }&_eventId=back">back</a> --%>
               

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





 
  