<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <style><%@include file="./css/navBar.css" %></style>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<nav>
<div class="topnav">

  <a class="w3-bar-item w3-button" onclick="myFunction()" style="margin-top: 1%;"><i class="fa fa-bars"></i></a>
  <a class="active" href="/home"><button type="button" class="btn btn-primary">Home</button></a>
  <a href="/slabs"><button type="button" class="btn btn-primary">Features</button></a>
  <a href="/about"><button type="button" class="btn btn-primary">About Us</button></a>
  <a href="/formd"><button type="button" class="btn btn-primary">Calculate Bill</button></a>
  <a href="/query"><button type="button" class="btn btn-primary">Any Queries</button></a>
  <div class="dropdown" style="margin-top: 1%;max-width:20%">
  <button onclick="myFunction()" id="test" class="dropbtn">${un} </button>
  <div id="myDropdown" class="dropdown-content">
    <a href="/profile"><button type="button" class="btn btn-primary">Profile</button></a>
    <a href="/logout"><button type="button" class="btn btn-primary">Logout</button></a>
  </div>
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */

function myFunction() {
 
  document.getElementById("myDropdown").classList.toggle("show");

}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
  <!-- <style>.topnav a.active {
  background-color: #000000;
  color: white;
}</style> -->
</div>
</nav>
	</body>