<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body style=" background-image: url('food.jpg'); background-repeat: no-repeat; background-size: cover; position: relative;">

<nav class="navbar navbar-expand-lg navbar-light" style="margin-top: 20px; margin-left: 20px; margin-right: 20px; border-radius: 20px; background-color: #e3f2fd;">
  <a class="navbar-brand" href="#">
    <img src="arya-trading-logo.png" width="90" height="30" class="d-inline-block align-top" alt="">
     Solutions
  </a>
  <div class="collapse navbar-collapse" style="margin-right: 30px;" id="navbarTogglerDemo03">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.jsp">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="SignUp.jsp">Sign up</a>
      </li>
      </ul>
</nav>

<center>
<div class="w-50" style="margin-top: 150px; background: rgba(0, 0, 0, 0.5);  padding: 50px; margin-left: 80px; margin-right: 80px;">
<div class=".justify-content-center">
<center><h1 style="color: white; border-bottom-style:double;" >Login Here</h1></center>
<br>
<form class="form" style=" text-align: center; color:white;" action="login">
  <div class="form-group">
    <label for="exampleFormControlInput1" style="font-size: 20px;">Username</label>
    <input type="text" required="required" class="form-control" id="exampleFormControlInput1" placeholder="Shekhar_Arya" name="username">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1" style="font-size: 20px;">Password</label>
    <input type="text" required="required" class="form-control" id="exampleFormControlSelect1" placeholder="Xyz@abc" name="password"> 
  </div>
  <div class="form-group">
  <button class="btn btn-outline-success col-md-6" type="submit" style="color: white; border-width: 3px; text-align: center;">Sign In</button>
	</div>
</form>
</div>
</div>
</center>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<footer class="bg-dark text-center text-white" style=" margin-top: 260px; bottom: 0; width: 100%;">
  <div class="row">
    <div class="col">
    <div class="form-group col-md-6" style="margin-left: 70px; text-align: center;">
    
    <h4 style="border-bottom-style: groove;">Contact Us..</h4><br>
    
    <div>
    <h5>Email : xyzABC123@gmail.com</h5><br>
    <h5>Phone Number : 123456790 </h5><br>
    <h5>Address : </h5>
    <h5>SOCET Gota,<br> Ahmedabad,<br> Gujarat,<br> India - 380024</h5>
    </div> <br><br><br>
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    </div>
    </div>
    <div class="col">
          <div class="form-group col-md-6" style="margin-left: 70px; text-align: center; border-bottom-style: groove; margin-top: ">
    <h3>Join With Us</h3>
    </div>
	<form action="joinus" class="form" style="margin-left: 100px; text-align: center;">
  <div class="form-group col-md-6">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="text" name="email" required="required" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="form-group col-md-6">
    <label for="exampleFormControlInput1">Phone Number</label>
    <input type="text" name="phonenumber" required="required" class="form-control" id="exampleFormControlInput1" placeholder="1234567890">
  </div>
    <div class="form-group col-md-6">
    <label for="exampleFormControlInput1">Adhar Card</label>
    <input type="text" name="adharnumber" required="required" class="form-control" id="exampleFormControlInput1" placeholder="111 2222 3333">
  </div>
  <div class="form-group col-md-6">
    <label for="exampleFormControlTextarea1">Address</label>
    <textarea class="form-control" required="required" name="address" id="exampleFormControlTextarea1" rows="3" placeholder="write address here"></textarea>
  </div>
  <div class="form-group col-md-6">
  <button class="btn btn-outline-success col-md-6" type="submit" style="color: white; border-width: 3px; text-align: center;">Submit</button>
	</div>
</form>
    </div>
  </div>
</footer>
</body>
</html>