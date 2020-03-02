<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
</head>
<body>
      <div class="container">
        <div class="row">
          <div class="col-md-3"></div>
          <div class="col-md-6">
             <form action="save" method="post" enctype="multipart/form-data">
             
             <div class="form-group">
              <label for="fname">First Name</label>
              <input type="text" class="form-control" id="fname" name="fname" placeholder="Enter First Name">
             </div>
             
             <div class="form-group">
              <label for="lname">Last Name</label>
              <input type="text" class="form-control" id="lname" name="lname" placeholder="Enter Last Name">
             </div>
             
             <div class="form-group">
              <label for="gender">Gender</label>
              <select name="gender">
                <option>Select</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
              </select>
             </div>
             
             <div class="form-group">
              <label for="dob">Date Of Birth</label>
              <input type="date" class="form-control" id="dob" name="dob">
             </div>
             
             <div class="form-group">
              <label for="mobile">Mobile</label>
              <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile">
             </div> 
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email-Id</label>
    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
         
            <div class="form-group">
              <label for="address">Address</label>
              <textarea rows="2" cols="20" name="address"></textarea>
             </div>
             
             <div class="form-group">
              <label for="city">City</label>
              <input type="text" class="form-control" id="city" name="city" placeholder="Enter City">
             </div>
             
             <div class="form-group">
              <label for="state">State</label>
                <select name="state">
                <option>Select</option>
                <option value="Maharashtra">Maharashtra</option>
                <option value="Delhi">Delhi</option>
              </select>
             </div>
             
              
             <div class="form-group">
              <label for="education">Education</label>
              <input type="text" class="form-control" id="education" name="education" placeholder="Enter Education">
             </div>
             
              
             <div class="form-group">
              <label for="profession">Profession</label>
              <input type="text" class="form-control" id="profession" name="profession" placeholder="Enter Profession">
             </div>
            
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
  </div>
  
   <!--  <div class="form-group">
              <label for="file">Select File</label>
              <input type="file" class="form-control" id="file" name="file" placeholder="Select File">
             </div> -->
             
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