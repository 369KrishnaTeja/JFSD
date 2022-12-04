<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head><ul>
  <li><a href="formd" href="#home">BillC</a></li>
  <li><a href="form">Register</a></li>
  <li><a href="about">Contact</a></li>
  <li><a href="home">Home</a></li>
</ul></head>
<center><h2>Enter Details To calculate Electricity</h2></center>
<br>
<center><h2>${r}</h2></center>
<body >
<div class="bg-img">
<form:form method="post" action="details">
<table>
  <tr>
    <td>Unique ID:</td>
    <td><form:input path="Uniqueid"   class="pit" ></form:input></td>
</tr>
    <tr>
        <td>Total Power:</td>
        <td><form:input path="TotalPower"   class="pit" ></form:input></td>
    </tr>
    <tr>
        <td>Total Hours:</td>
        <td><form:input path="hour"   class="pit" ></form:input></td>
    </tr>
    <tr>
        <td><input type="submit" value="Enter"/></td>
    </tr>
    Dont have an Unique Number!!! <a href="eledet1">Generate here</a>
</table>
</form:form>
</body>

  </div>
<style>
body{

  background-image: url("../../images/gan.jpeg");
    background-repeat: no-repeat;
    background-size: cover ;
}
container{
  width:400px;
  padding-right:100px;
  }
.bg-img {
  /* The image used */
  

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
h3{
font-family:Arial, Helvetica, sans-serif;}
form {
background-color:#d6d6d6;
border: 3px solid #f1f1f1;

height: 210px;
padding-left:5px;
margin-left: 900px;
margin-top: 200px;
  width: 410px;}
.pit {
  width: 150%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  height: 50px;
  background-color: #f44336;
}
span.psw {
  float: right;
  
  padding-top: 16px;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  margin-left: 9px;
  border: none;
  cursor: pointer;
  width: 200%;
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
}
.inputbox {
  background-color:#FFFFFF; 
  color: #333333;
  width:150px;
  border-width:1px;
  border-style:solid;
  border-color:#808080;
}

.inputbox:hover {
  border-width:1px;
  border-style:solid;
  border-color:#11A3EA;
}

.inputbox:focus {
  border-width:1px;
  border-style:solid;
  border-color:#11A3EA;
  color: #0F4987;
}

.submitButton {
  background-color: #ffffff;
  color: #000000;
  background: #ffffff;
  border: 1px solid #cccccc; 
  text-align: center;
  width: auto;
  padding: 2px 3px 2px 3px;
}
</style>