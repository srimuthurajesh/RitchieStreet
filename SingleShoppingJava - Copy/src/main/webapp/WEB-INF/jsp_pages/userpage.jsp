
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

 
 <br><br><br><br>
 <div class="container">
	<div class="row">
		<h2 class="page-header">User Profile</h2>
        <div class="col-md-4">
        <h2>${msg}</h2>
          <div class="col-md-10 col-lg-10 " align="center"> 
<!--         <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" style="height:270px;width:100% "class="img-circle img-responsive">  -->
        </div>
            
        </div>
        <div class="col-md-12">
        <h3>${userDetails.firstname }&nbsp;&nbsp;${userDetails.lastname }</h3>
                <div class=" col-md-9 col-lg-9 ">
                                <table class="table table-user-information" >
                                    <tbody><col width="200">
  <col width="200">
  
                                    <tr>
                                            <td><span class="glyphicon glyphicon-asterisk text-primary"></span>&nbsp;&nbsp;Username </td>
                                            <td>:&nbsp;&nbsp; ${userDetails.username }</td>
                                     </tr>  
                                        <tr>
                                            <td> <span class="glyphicon glyphicon-phone text-primary"></span>&nbsp;&nbsp;Mobile </td>
                                            <td>:&nbsp;&nbsp; ${userDetails.mobile }</td>
                                        </tr>
                                        
                                        <tr>
                                            <td> <span class="glyphicon glyphicon-envelope text-primary"></span>&nbsp;&nbsp;Email Id </td>
                                            <td>:&nbsp;&nbsp; ${userDetails.emailid }</td>
                                        </tr>

                                        <tr>
                                            <tr>
                                                <td><span class="glyphicon glyphicon-tag text-primary"></span>&nbsp;&nbsp;Address 1</td>
                                                <td>:&nbsp;&nbsp; ${userDetails.address }</td>
                                            </tr>
                                            <tr>
                                                <td><span class="glyphicon glyphicon-tags text-primary"></span>&nbsp;&nbsp;Address 2</td>
                                                <td>:&nbsp;&nbsp; ${userDetails.streetname }</td>
                                            </tr>
                                            <tr>
                                                <td><span class="glyphicon glyphicon-home text-primary"></span>&nbsp;&nbsp;City :</td>
                                                <td>: &nbsp;&nbsp;${userDetails.cityname }</a></td>
                                            </tr>
                                            <tr>
                                            <td><span class="glyphicon glyphicon-send text-primary"></span>&nbsp;&nbsp;Pincode :</td>
                                            <td>:&nbsp;&nbsp; ${userDetails.pincode }
                                            </td></tr>

                                        

                                    </tbody>
                                </table>
     <a href="register"><button href="loginpage"class="aa-browse-btn">Login here</button></a>   </div>
	</div>
</div>
 
 </div>
 <br><br><br>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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





 