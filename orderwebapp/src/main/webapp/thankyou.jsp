<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

<h1 style="text-align: center; margin-top: 60px; color: olive;"> Your Order Will Arrive Soon.. </h1>
<h3 style="text-align: center; margin-top: 10px; color: olive;"> Thank you for Shopping With Us</h3>
<center><a href="Store.jsp"><button type="button" class="btn btn-dark btn-lg" style="margin-top: 30px;">Back to Home</button></a></center>	
</body>
</html>