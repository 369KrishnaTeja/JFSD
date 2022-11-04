<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
body {
background-image:url("../../images/bgPic.gif");
background-repeat:no-repeat;
background-size:cover;
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  color:white;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 10%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1 align="center">About Us Page</h1>
 <h2 align="center" style="font-family:fantasy>Some text about who we are and what we do.</h2>
  <h2 align="center" style="font-family:fantasy" >We are the team of 'E3' Easy Electricity for Everyone</h2>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="../../images/jk.jpg" alt="Jayanths Image" style="width:100%">
      <div class="container">
        <h2>Jayanth Krishna</h2>
        <p class="title">Art Director</p>
        <p>People value <b>RESULT</b> over <b>HARDWORK</b></p>
        <p>grandhijayanth637@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="../../images/kt.jpg" alt="Krishnas Image" style="width:100%">
      <div class="container">
        <h2>Krishna Teja</h2>
        <p class="title">CEO & Founder</p>
        <p>An enthusiast to learn new things and a fast learner who tries to lead team from the front</p>
        <p>krishnatejakt369@gmail.com</p>
        <p><button class="button">Contact</button></p>
        
      </div>
    </div>
  </div>
  
  
  <div class="column">
    <div class="card">
      <img src="../../images/gnsh.jpg" alt="Ganeshs Image" style="width:100%">
      <div class="container">
        <h2>Sai Ganesh</h2>
        <p class="title">Designer</p>
        <p>Some text that describes me .</p>
        <p>mail@example.com</p>
        <p><button class="button">Contact</button></p>
        
      </div>
    </div>
  </div>
</div>