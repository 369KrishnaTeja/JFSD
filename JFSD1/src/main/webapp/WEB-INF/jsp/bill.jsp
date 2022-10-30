<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="ISO-8859-1">
<title>Your Electricity Bill</title>
<script src=
"https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js">
	</script>
</head>
<body  >
<div >
      <fieldset  class="container" id="makepdf">
        <legend>Your Electricity Bill</legend>
      <div align="center" >
<h2>Username</h2>
<p>${us}</p>
<h2>Email</h2>
<p>${em}</p>
<h2>Phone Number</h2>
<p>${ph}</p>
<h2>Consumption Bill</h2>
<p>${cost}</p>
<br>
<br>

</div>
      </fieldset>
      <br>
      <br>
      <div align="center">
		<button id="button">Generate PDF</button>
</div>
</div>

<style>
body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    font-family: cursive;
  }

  label {
    line-height: 1.9rem;
  }

 fieldset {
   padding: 20px 40px;
 }
		.container {
			border-radius: 7px;
		}

		

		#button {
			background-color: #4caf50;
			border-radius: 5px;
			color: white;
		}

		h2 {
			text-align: center;
		}
	</style>
<script>
		var button = document.getElementById("button");
		var makepdf = document.getElementById("makepdf");

		button.addEventListener("click", function () {
			html2pdf().from(makepdf).save();
		});
	</script>
	
</body>

</html>