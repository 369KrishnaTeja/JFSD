<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <script src=
"https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js">
	</script>
    <h1>Users Electricity Details List</h1>
    <br>
    <br>
    <form:form method="get" action="/getdis">
      <form:input type="text" path="district"></form:input>
      <button type="submit">Search</button>
    </form:form>
  <div id="makepdf">
  <table class="table" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Username</th><th>Unique Service No.</th><th>Service No.</th><th>ERO</th><th>Address</th><th>District</th><th>Unique ID</th><th>Payment Status</th><th>Operations</th></tr>
  <c:forEach var="u" items="${h}"> 
    <tr>
    <td>${u.id}</td>
    <td>${u.username}</td>
    <td>${u.usn}</td>
    <td>${u.sn}</td>
    <td>${u.ero}</td>
    <td>${u.address}</td>
    <td>${u.district}</td>
    <td>${u.otp}</td>
    <td>${u.status}</td>
    <td>
      <form action="intimate" method="get">
        <input type="hidden" name="username" id="username" value=${u.username}></input>
        <button type="submit">Intimate</button>
    </form>
    </td>
    </tr>
  </c:forEach>
  </table>
  <br>
  <button id="button">Generate PDF</button>
  <br>
  <form action="upload" method="post" enctype="multipart/form-data">
    <p>
        <input type="file" name="file" required />
    </p> 
    <p>
        <button type="submit">Upload to AWS</button>
    </p>
</form>
  <br>
  <a href="login1">User Details</a>
  <a href="login3">Queries</a>
  </div>
</center>

<script>
  var button = document.getElementById("button");
  var makepdf = document.getElementById("makepdf");

  button.addEventListener("click", function () {
    html2pdf().from(makepdf).save();
  });
</script>