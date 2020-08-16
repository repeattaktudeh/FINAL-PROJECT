<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Student's Kitchen</title>
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

<!-- Page content -->
<div class="w3-content" style="max-width:1100px"> 
</div>

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="about.jpg" class="w3-round w3-image w3-opacity-min" alt="Annur Cuisine" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">About Student's Kitchen</h1><br>
      <h5 class="w3-center">Since 2020</h5>
      <p class="w3-center">The restaurant was founded by 4 students.</p>
    </div>
  </div>

  <hr>
  
    <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>

      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>

      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>

      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>

      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>
    </div>

    <div class="w3-col l6 w3-padding-large">
      <img src="menu.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
    </div>
  </div>

  <hr>
  
<div class="w3-container w3-padding-64" id="contact">
<form method="post" action="Output.jsp">

<h2>Book A Table With Us!</h2>
<h3>Please enter your details above:</h3>
<br>
Name :
<input class="w3-input w3-padding-16" type="text" name="name">
<br>
Mobile Number :
<input class="w3-input w3-padding-16" type="number" name="noHp">
<br>
Email :
<input class="w3-input w3-padding-16" type="text" name="email">
<br>
Date :
<input class="w3-input w3-padding-16" type="datetime-local" name="date">
<br>
Time :
<input class="w3-input w3-padding-16" type="number" name="time">
<br>
Number of Pax :
<input class="w3-input w3-padding-16" type="number" name="noPax">
<br>

<input class="w3-input w3-padding-16" type="submit" value="Complete">

</form>
</div>
</body>
</html>
