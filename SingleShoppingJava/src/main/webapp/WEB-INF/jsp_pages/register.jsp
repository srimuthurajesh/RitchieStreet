<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>RajeshShopping </title>

  
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
 
 
 <!-- ------------------------password strength password matching-------------------------------- -->
 
<script>
$(document).ready(function() {
	$('#password').keyup(function() {
	$('#result').html(checkStrength($('#password').val()))
	})
	function checkStrength(password) {
	var strength = 0
	if (password.length < 6) {
	$('#result').removeClass()
	$('#result').addClass('short')
	return 'Too short'
	}
	if (password.length > 7) strength += 1
	// If password contains both lower and uppercase characters, increase strength value.
	if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) strength += 1
	// If it has numbers and characters, increase strength value.
	if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) strength += 1
	// If it has one special character, increase strength value.
	if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
	// If it has two special characters, increase strength value.
	if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1
	// Calculated strength value, we can return messages
	// If value is less than 2
	if (strength < 2) {
	$('#result').removeClass()
	$('#result').addClass('weak')
	return 'Weak'
	} else if (strength == 2) {
	$('#result').removeClass()
	$('#result').addClass('good')
	return 'Good'
	} else {
	$('#result').removeClass()
	$('#result').addClass('strong')
	return 'Strong'
	}
	}
	});
</script>

<!-- ------------------------username strenght validating-------------------------------- -->

<script>
$(document).ready(function() {
	$('#username').keyup(function() {
	$('#resultusername').html(checkStrength($('#username').val()))
	})
	function checkStrength(username) {
	
	if (username.length <= 3) {
	$('#resultusername').removeClass()
	$('#resultusername').addClass('weak')
	return 'Enter atleast 4 Characters'
	}

	if (username.length >=4) {
	$('#resultusername').removeClass()
	$('#resultusername').addClass('short')
	return ''
	}}
	});
</script>

<!-- ------------------------password and confirm password matching-------------------------------- -->

<script>
$(document).ready(function() {
	$('#confirmpassword').keyup(function() {
	$('#resultconfirmpassword').html(check($().val()))
	})
	function check() {
		var a = document.getElementById("password").value;
        var b = document.getElementById("confirmpassword").value;
	if (a==b) {
	$('#resultconfirmpassword').removeClass()
	$('#resultconfirmpassword').addClass('short')
	return ''
	}

	if (a!=b) {
	$('#resultconfirmpassword').removeClass()
	$('#resultconfirmpassword').addClass('short')
	return 'Password doesnt match'
	}}
	});
	
</script>



<!-- ------------------------email validation-------------------------------- -->

<script>
 $(document).ready(function() {
 	$('#emailid').keyup(function() {
 	$('#resultemail').html(check($().val()))
 	})
 	function check() {
 		var a = document.getElementById("emailid").value;
 		var regExpEmail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
 	if (regExpMail.test(emailid) == false) {
 	$('#resultemail').removeClass()
 	$('#resultemail').addClass('short')
 	return 'Enter valid email address'
 	}

 	if (regExpMail.test(emailid) == true) {
 		$('#resultemail').removeClass()
 		$('#resultemail').addClass('short')
 		return ''
 		}
 }
 	});
	
 </script> 


<!-- ------------------------mobile strenght validating-------------------------------- -->

<script>
$(document).ready(function() {
	$('#mobile').keyup(function() {
	$('#resultmobile').html(checkStrength($('#mobile').val()))
	})
	function checkStrength(mobile) {
	
	if (mobile.length != 10) {
	$('#resultmobile').removeClass()
	$('#resultmobile').addClass('weak')
	return 'Enter valid mobile number'
	}

	if (mobile.length ==10) {
	$('#resultmobile').removeClass()
	$('#resultmobile').addClass('short')
	return ''
	}}
	});
</script>




<style type = "text/css">
 .short{
font-weight:bold;
color:#FF0000;
font-size:smaller;
}
 .weak{
font-weight:bold;
color:orange;
font-size:smaller;
}
 .good{
font-weight:bold;
color:#2D98F3;
font-size:smaller;
}
 .strong{
font-weight:bold;
color: limegreen;
font-size:smaller;
}
</style>

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
                 <h4>Register</h4>
                 <form:form  class="aa-login-form" commandName="userModel"><!-- action="registersuccess" -->
                    <label for="">Enter Your Name</label><br>
                    <form:input type="text" placeholder="First Name" path="firstname" style="width:48%;"/>&nbsp;&nbsp;&nbsp;&nbsp;
                    <form:input type="text" placeholder="Last Name" path="lastname" style="width:48%;"/><br>
 
                    
                    <label for="">Choose Your Username<span>*</span></label>
                    <form:input type="text" id="username" placeholder="Username" path="username" required="true"/><span id="resultusername"></span><br>
                    
                    <label for="">Create Your Password<span>*</span></label>
                    <form:input id="password" type="password" placeholder="Password" path="password" required="true" /><span id="result"></span><br>
                    
                    
                    <label for="">Confirm Password</label>
                    <input type="password" id="confirmpassword" placeholder="confirm Password"><span id="resultconfirmpassword"></span><br>
                    
                  
                    
                    <label for="">Email<span>*</span></label>
                    <form:input type="email" placeholder="Email Address" id="emailid" path="emailid" required="true" style="border: 1px solid #ccc;
  font-size: 16px;
  height: 40px;
  margin-bottom: 15px;
  padding: 10px;
  width: 100%;"/><span id="resultemail"></span><br>
                    
                    <label for="">Mobile No.</label>
<%--                     <form:input type="text" id="mobile" placeholder="Mobile" path="mobile"  pattern="[7|8|9]{10}"/> <span id="resultmobile"></span><br> --%>
                    
                    <label for="">Flat / House No. / Floor / Building </label>
                    <form:input type="text" placeholder="Address 1" path="address" />
                    
                    <label for="">Colony / Street / Locality </label>
                    <form:input type="text" placeholder="Address 2" path="streetname" />
                    
                    <label for="" style="width:52%;">Town/City</label><label for="">Pin-Code</label>  <br>
                    <form:input type="text" placeholder="City" path="cityname" style="width:47%;"/>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <form:input type="text" placeholder="Pincode" path="pincode" style="width:47%;" pattern="[6]{6}" /><br>
                    
                    
                    <button type="submit"  name="_eventId_hui" class="aa-browse-btn">Register</button>                      
                  </form:form>
                  <br><br><br>
                  <span style="font-size:14px">* Fields mandatory</span> 
                </div>
              </div>
             
              <div class="col-md-1">
             <br><br> <strong>(or)</strong></div>
              <div class="col-md-5">
                <div class="aa-myaccount-login">
                <h4>Login</h4>
                  <form class="aa-login-form" action="loginresult" method="post">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Enter your Username" name="username">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Enter Your Password" name="password">
<!-- <input type="submit" value="login"> -->
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
          
          </form>
          <input name="_eventId_register" type="submit" value="Edit" /> 
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
 

<%@ include file="footer.jsp"%>
 
  
 
 
 
 
  
 
 
 
</body>
</html>
