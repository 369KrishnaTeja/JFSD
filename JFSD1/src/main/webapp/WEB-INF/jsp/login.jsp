<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form:form action="/login1" method="post">
<div class="form-group" >
  <label class="form-label mt-4">Login</label>
  <br>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Username" path="Username"></form:input>
    <label for="floatingInput">User Name</label>
  </div>
  <br>
  <br>
  <div class="form-floating">
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password" path="Password"></form:input>
    <label for="floatingPassword">Password</label>
  </div>
</div>
<br>
Dont have an account!!! <a href="form">Register Here</a>
<br>
Forgot Password <a href="forgotmail1">Enter Mail Here</a>
<br>
<h3>${l}</h3>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">SignIn</button>
</div>
</form:form>
</div>
</html>