<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <style><%@include file="./css/reglog.css" %></style>
     <h1 align="center">Update the User</h1>
  <center>
  <div class="form-control" style="width: 30%;margin-top:6%;height:75%;color: cyan">
  
    <h1>User Details</h1><br>
    <h2>ID: ${id}</h2><br>
    <h2>Username: ${name}</h2><br>
    <h2>Email: ${email}</h2><br>
    <h2>Username: ${phone}</h2><br>
    <h2>Password: ${pass}</h2><br><br>
    </div>
    <div class="formBoxes" align="center">
    <br>
    <form:form action="/update1" method="get">
    <%--
<div>
  <h1>Update Details</h1>
  <br>
  <div>
    <label>User Name </label>
    <form:input type="text" path="username"></form:input>
  </div>
  <br>
  <div>
    <label>Password </label>
    <form:input type="password" path="password"></form:input>
  </div>
  <br>
  <div>
    <label>Email </label>
    <form:input type="email" path="email"></form:input>
  </div>
  <br>
  <div>
    <label>Phoneno </label>
    <form:input  type="text" path="phoneno"></form:input>
  </div>
</div>
<br>--%>
<div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Username" path="username"></form:input>
    <label for="floatingInput">User Name</label>
  </div>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" path="email"></form:input>
    <label for="floatingInput">Email address</label>
  </div>
  <br>
  <br>

  <div class="form-floating mb-3">
    <form:input type="number" class="form-control" id="floatingInput" placeholder="123456789" path="phoneno"></form:input>
    <label for="floatingInput">Mobile Number</label>
  </div>
    <br>
    <br>
 
  <div class="form-floating">
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password" path="password"></form:input>
    <label for="floatingPassword">Password</label>
  </div>
  <br>
<div>
  <button class="btn btn-lg btn-primary" type="submit">Update</button>
</div>
</form:form>
</div>
</center>