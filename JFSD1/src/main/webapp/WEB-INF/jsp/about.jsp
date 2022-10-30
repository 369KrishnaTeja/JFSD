<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<jsp:include page="navBar.jsp" />-->

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
 <%--  <h2 align="center" style="font-family:fantasy>Some text about who we are and what we do.</h2>
  <h2 align="center" style="font-family:fantasy >We are the team of 'E3' Easy Electricity for Everyone</h2>--%>
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
        <p>Some text that describes me .</p>
        <p>mail@example.com</p>
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

<%-- <center><h5 style="font-family:fantasy">BAG-(Bid And Gain)</h5></center>
<div class="card mb-3">
  <h3 class="card-header">About Us</h3>
  <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
    <rect width="100%" height="100%" fill="#868e96"></rect>
    <text x="30%" y="50%" fill="green" dy=".3em" >B</text>
    <text x="50%" y="50%" fill="#dee2e6" dy=".3em">A</text>
    <text x="70%" y="50%" fill="black" dy=".3em">G</text>
  </svg>
  <div class="card-body">
    <h2 class="card-text">Developing Team</h2>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Krishna Teja Kurapati <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Krishna Teja Kurapati</a>
</li>
    <li class="list-group-item">Koushik Lankalapalli  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Koushik Lankalapalli</button>
</li>
    <li class="list-group-item">Sai Ganesh Chintalapudi  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample3" aria-expanded="false" aria-controls="multiCollapseExample3">Sai Ganesh Chintalapudi</button>
</li>
  </ul>
 <!---- <p>
  <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Krishna Teja Kurapati</a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Koushik Lankalapalli</button>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample3" aria-expanded="false" aria-controls="multiCollapseExample3">Sai Ganesh Chintalapudi</button>
</p>--->
<!-- 
  <div class="acc">
<div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
            <center><img src="{% static 'kt.jpg' %}" alt="My image" style="height:200px"></center>
        I am  KLU Student and my register number is 2000031884 and as per the project from our university I am the Team Lead for the Project.I am a part in the Development which is Technical Work and Non Technical Work
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
      <div class="card card-body">
            <center><img src="{% static 'kl.jpg' %}" alt="My image" style="height:200px"></center>
        I am  KLU Student and my register number is 2000031840 and as per the project from our university I am a helping hand for the Project.I am a part in the Development which is  Non Technical Work
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample3">
      <div class="card card-body">
            <center><img src="{% static 'CHSG.jpg' %}" alt="My image" style="height:200px"></center>
        I am  KLU Student and my register number is 2000030199 and as per the project from our university I am a helping hand for the Project.I am a part in the Development which is Technical Work and Non Technical Work
      </div>
    </div>
  </div>
</div>
    </div>
  <br>
  <br>
  <br>
  <br>
</div>
<style>
  acc{

  }
</style>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br> --%>

</body>
</html>
