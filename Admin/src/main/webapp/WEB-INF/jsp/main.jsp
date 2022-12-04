<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="form-control" style="width: 60%;margin-left:20%;margin-top:6%;height:75%;color: cyan">
<div class="formBoxes" align="center">
<form:form action="/login" method="get">
<div class="form-group">
  <br>
  <h2 style="color: cyan">Admin Login</h2>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Username" path="Username"></form:input>
    <label for="floatingInput">User Name</label>
  </div>
  <br>
  <br>
  <br>
  <div class="form-floating">
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password" path="Password"></form:input>
    <label for="floatingPassword">Password</label>
  </div>
</div>
<br>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Sign In</button>
</div>
</form:form>
</div>
</div>
</html>