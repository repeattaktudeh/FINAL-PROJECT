<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
<body>
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button">Student's Kitchen</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">About</a>
       <a href="#menu" class="w3-bar-item w3-button">Menu</a>
      <a href="#contact" class="w3-bar-item w3-button">Reserve Table</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
  <img class="w3-image" src="shawarma.jpg" alt="Shawarma" width="1600" height="800">
  <div class="w3-display-bottomleft w3-padding-large w3-opacity">
    <h1 class="w3-xxlarge">Arab Cuisine</h1>
  </div>
</header>

<jsp:useBean id="Reservation" class="javabeans.Reservation" scope="page"/>

<jsp:setProperty name="Reservation" property="*" />

<h2>Your Booking Has Complete!</h2>
<br>

Name :
<jsp:getProperty name="Reservation" property="name"/>
<br>

Mobile Number :
<jsp:getProperty name="Reservation" property="noHp"/>
<br>

Email :
<jsp:getProperty name="Reservation" property="email"/>
<br>

Date :
<jsp:getProperty name="Reservation" property="date"/>
<br>

Time :
<jsp:getProperty name="Reservation" property="time"/>
<br>

Number of Pax :
<jsp:getProperty name="Reservation" property="noPax"/>
<br>


</body>
</html>
