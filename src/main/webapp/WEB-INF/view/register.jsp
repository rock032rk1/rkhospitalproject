<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="resource/img/favicon.png">

  <title>Register New USer</title>

  <!-- Bootstrap CSS -->
  <link href="resource/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="resource/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="resource/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="resource/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="resource/css/style.css" rel="stylesheet">
  <link href="resource/css/style-responsive.css" rel="stylesheet" />
  
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body class="login-img3-body">

     <script type="text/javascript">
         function validation(){
        	 var fname=$('#fname').val();
      	     var lname=$('#lname').val();
      	     var email=$('#email').val();
      	     var pass=$('#password').val();
      	     var conpass=$('#confirmPassword').val();
      	     
      	   var namechk=/^[A-Za-z. ]{3,30}$/;
      	   var emailchk=/^[A-Za-z0-9_.]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z.]{2,6}$/;
      	    
      	     
      	   if(fname==''){
      		   $('#fnamecheck').html('** First Name should not be blank.....');
    		   return false;
      	   }
      	  if(lname==''){
    		   $('#lnamecheck').html('** Last Name should not be blank.....');
  		   return false;
    	   }
      	   if(email==''){
      		   $('#emailcheck').html('** Email should not be blank.....');
      		   return false;
      	   }
      	   if(pass==''){
      		   $('#passcheck').html('** Password should not be blank');
      		   return false;
      	   }
      	   if(conpass==''){
      		   $('#conpasscheck').html('** Confirm Password should not be blank');
      		   return false;
      	   }
      	   
      	 //For Checking Name validation
  		 if(namechk.test(fname)){
               $('#fnamecheck').html('');
           }else{
          	  $('#fnamecheck').html('** Name should not be contain Digit Please fill Correct Name ');
                return false;
           }
      	 
  		//For Checking Email-ID Valdation
		 if(emailchk.test(email)){
             $('#emailcheck').html('');
         }else{
        	  $('#emailcheck').html('** Email ID is invalid Please write correct Email ID');
              return false;
         }

         }
     </script>
     
  <div class="container">

    <form class="login-form" action="users" method="post" onsubmit="return validation()">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        
       <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" id="fname" placeholder="Firstname" autofocus name="fname">
          <h5 id="fnamecheck" style="color: red"></h5>
        </div>
        
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" class="form-control" id="lname" placeholder="Lastname" autofocus name="lname">
          <h5 id="lnamecheck" style="color: red"></h5> 
        </div>
        
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="email" class="form-control" id="email" placeholder="Email" name="email" autofocus>
          <h5 id="emailcheck" style="color: red"></h5>
        </div>
        
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control"  placeholder="Password" id="password" name="password">
          <h5 id="passcheck" style="color: red"></h5>
        </div>
        
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" class="form-control" placeholder="Confirm Password" id="confirmPassword">
          <h5 id="conpasscheck" style="color: red"></h5>
        </div>        
        
        <label class="checkbox">
               <span><a href="login1"> Login Page</a></span>
                <span class="pull-right"> <a href="forgot-password"> Forgot Password?</a></span>
            </label>
        <button class="btn btn-primary btn-lg btn-block" type="submit">Register</button>
      </div>
    </form>
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </div>
  
    
    <!-- javascripts -->
  <script src="resource/js/jquery.js"></script>
  <script src="resource/js/bootstrap.min.js"></script>
  
  <script src="resource/js/register.js"></script>

</body>

</html>
