<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/css/style.css">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 --> 
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 
</head>
<body>
    <script type="text/javascript">
      function validation(){
    	  var email=$('#email').val();
    	  var pass=$('#password').val();
    	  
    	 // alert(email);
    	  if(email==''){
    		  $('#emailcheck').html('**Email id should not be empty');
    		  return false;
    	  }
    	  if(pass==''){
    		  $('#passcheck').html('**Password should not be empty');
    		  return false;
    	  }
      }
    </script>
    
   <%--  <div class="container-fluid top-bar">
      <div class="row">
       <div class="col-md-6">
         <p class="text-left" style="color: white;">Mail ID-<span class="glyphicon glyphicon-envelope"></span>rakesh08@gmail.com</p>
       </div>
        <div class="col-md-6">
		  <p class="text-right" style="color: white;">Contact Us-<span class="glyphicon glyphicon-phone"></span>+91- 9890162545</p>
	    </div>
      </div>
    </div>
    <div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/resource/img/logo-color-3.png" width="110px" class="img-responsive">
			</div>
			<div class="col-md-6 my-menu"></div>
			
			 <div class="col-md-2">
				 <ul class="nav nav-tabs">
                  <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Login</a>
                    <div class="dropdown-menu">
                     <a class="dropdown-item" href="#">Admin</a>
                     <a class="dropdown-item" href="loginemp">Doctors</a>
                     <a class="dropdown-item" href="loginstudent">Recepnist</a>
                     <a class="dropdown-item" href="loginstudent">Lab-Assistant</a>
                    </div>
                 </li>
                 <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Sign Up</a>
                   <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Admin</a>
                    <a class="dropdown-item" href="#">Doctors</a>
                    <a class="dropdown-item" href="#">Recepnist</a>
                    <a class="dropdown-item" href="#">Lab-Assistant</a>
                   </div>
                 </li>
                </ul>		
			</div>
		</div>
	</div>    --%>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand logo" href="#" style="color: purple">RK <span class="lite" style="color: gray">Hospital</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Gallary</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Sign-Up
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Admin</a>
          <a class="dropdown-item" href="#">Doctor</a>
          <a class="dropdown-item" href="#">Recepnist</a>
          <a class="dropdown-item" href="#">Lab-Assistant</a>
        </div> 
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Sign-In
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Admin</a>
          <a class="dropdown-item" href="#">Doctor</a>
          <a class="dropdown-item" href="#">Recepnist</a>
          <a class="dropdown-item" href="#">Lab-Assistant</a>
        </div> 
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

   <br><br><br>
	<!-- Header End -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-md-3"></div>
	    <div class="col-md-6">
	     <h3 style="background: graytext;color: red;text-align: center;">Admin Login</h3>
	     
	         <h5 style="color: red">${msg }</h5>
          <form action="admin" method="post" onsubmit="return validation()">
          
           <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            <h5 style="color: red">${email }</h5>
            <h5 id="emailcheck" style="color: red"></h5>
          </div>
          
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            <h5 style="color: red">${pass }</h5>
            <h5 id="passcheck" style="color: red"></h5>
          </div>
          
          <div class="form-check">
             <input type="checkbox" class="form-check-input" id="exampleCheck1">
             <label class="form-check-label" for="exampleCheck1">Check me out</label>
           </div>
           <button type="submit" class="btn btn-primary">Submit</button>
           
         </form> 
  
	    </div>
	    <div class="col-md-3"></div>
	  </div>
	</div>
</body>
</html>