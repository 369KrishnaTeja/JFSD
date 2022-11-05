<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form:form action="/insert" method="post">
<div class="form-group" >
  <label class="form-label mt-4">Registration</label>
  <br>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Username" path="Username"></form:input>
    <label for="floatingInput">User Name</label>
  </div>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" path="Email"></form:input>
    <label for="floatingInput">Email address</label>
  </div>
  <br>
  <br>

  <div class="form-floating mb-3">
    <form:input type="number" class="form-control" id="floatingInput" placeholder="123456789" path="Phoneno"></form:input>
    <label for="floatingInput">Mobile Number</label>
  </div>
    <br>
    <br>
  
  <div class="form-floating">
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password" path="Password"></form:input>
    <label for="floatingPassword">Password</label>
  </div>
</div>
<br>
Already have an account!!! <a href="formlog">Login Here</a>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Sign Me Up</button>
</div>
</form:form>
</div>
</html>