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
<body>
<%
if(session.getAttribute("Auth")==null)
{
	response.sendRedirect("Login.jsp");
}
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-top: 20px; margin-left: 20px; margin-right: 20px; border-radius: 20px;">
  <a class="navbar-brand" href="#">
    <img src="arya-trading-logo.png" width="90" height="30" class="d-inline-block align-top" alt="">
     Solutions
  </a>
  <div class="collapse navbar-collapse" style="margin-right: 30px;" id="navbarTogglerDemo03">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="Store.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="orderhistory">My Order</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout">logOut</a>
      </li>
      </ul>
</nav>
<br>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-interval="4000" data-pause=false">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="bg1.jpg" alt="First slide" style="height: 700px; position: relative; border-radius: 30px;">
    	<center><div class="carousel-caption" style="top: 50%; transform: translateY(-50%);">
    			<h1> Welcome to Our Website</h1></center>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="bg1.jpg" alt="Second slide" style="height: 700px; border-radius: 30px;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="bg1.jpg" alt="Third slide" style="height: 700px; border-radius: 30px;">
    </div>
  </div>
</div>
<br>
<br>
<div style="background-color: olive; padding-top: 20px; padding-bottom: 20px;">
<center><h1>Our Menu</h1></center>
</div>
<br>
<div style="background-image: url('chop.jpg'); background-repeat: no-repeat; background-size: cover; padding-top: 10px; padding-bottom: 20px;" >
<form action="buy" style="margin-top: 30px;">
<div class="container" >
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="nachos.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">NACHOS</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="nachos" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div> 
	</div>
	</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="masala-khakhra.png" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
  <h6 class="card-title" style="float: left; margin-right: 150px;">MASALA KHAKHRA</h6>
  <h6 class="card-title">Price  :  40rs per 250 gram</h6>
  <div class="input-group">
  <input type="number" name="khakhra" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>
    </div>
</div>
    </div>
  </div>
  </div><br>

<div class="container">
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="Poha-Chivda.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">POHA CHIVDA</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="poha" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="gathiya.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">GATHIYA</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="gathiya" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
  </div></div><br>

<div class="container">
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="bhakharvadi.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">BHAKHARVADI</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="bhakharvadi" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="chana-dal.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">CHANA DAL</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="chanadal" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
  </div></div><br>

<div class="container">
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="longMasalaWafer.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 100px;">BANANA MASALA WAFER</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="bananawafer" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="longPotatoMasalaWafer.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 100px;">POTATO MASALA WAFER</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="potatowafer" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
  </div></div><br>
  
  <div class="container">
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="methi-puri.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">METHI PURI</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="methipuri" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="mungDal.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">MUNG DAL</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="mungdal" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
  </div></div><br>
  
  <div class="container">
  <div class="row">
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="mango-pickle.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">MANGO PICKLE</h6>
		<h6 class="card-title" style="">Price  :  110rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="pickle" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
    <div class="col d-flex justify-content-center">
      <div class="card text-white bg-success mb-3" style="width: 28rem;">
  <img class="card-img-top" src="masala-poori.jpg" alt="Card image cap" style="height: 300px;">
  <div class="card-body">
		<h6 class="card-title" style="float: left; margin-right: 150px;">MASALA PURI</h6>
		<h6 class="card-title" style="">Price  :  40rs per 250 gram</h6> 
		  <div class="input-group">
  <input type="number" name="masalapuri" min="0" value="0" style="text-align: center; border-top-left-radius: 10px; border-bottom-left-radius: 10px;" class="form-control">
  <div class="input-group-append">
    <span class="input-group-text" style=" border-top-right-radius: 10px; border-bottom-right-radius: 10px;">Grams</span>
  </div>
</div>  </div>
</div>
    </div>
  </div>
  </div><br><br>
  <center>
  <input type="submit" class="btn btn-info btn-lg btn-block" style="border-radius: 100px; width: 50%;">Submit</button>
	</center>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<br>
<center><h2 style="background-color: olive; padding-bottom: 10px; padding-top: 10px;">End Of Menu</h2></center>

<footer class="bg-dark text-center text-white" style=" margin-top: 30px; bottom: 0; width: 100%;">
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
    <input type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="form-group col-md-6">
    <label for="exampleFormControlInput1">Phone Number</label>
    <input type="text" name="phonenumber" class="form-control" id="exampleFormControlInput1" placeholder="1234567890">
  </div>
    <div class="form-group col-md-6">
    <label for="exampleFormControlInput1">Adhar Card</label>
    <input type="text" name="adharnumber" class="form-control" id="exampleFormControlInput1" placeholder="111 2222 3333">
  </div>
  <div class="form-group col-md-6">
    <label for="exampleFormControlTextarea1">Address</label>
    <textarea class="form-control" name="address" id="exampleFormControlTextarea1" rows="3" placeholder="write address here"></textarea>
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