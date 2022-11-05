<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form:form action="/newpass2" method="get">
<div class="form-group" >
  <label class="form-label mt-4">Reset Password</label>
  <br>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="password" class="form-control" id="floatingInput" placeholder="Enter Password" path="password"></form:input>
    <label for="floatingInput">Password</label>
  </div>
  <br>
  <br>
  <div class="form-floating">
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Renter Password" path="phoneno"></form:input>
    <label for="floatingPassword">Re-Enter Password</label>
  </div>
</div>
<br>
<h3>${l}</h3>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Submit</button>
</div>
</form:form>
</div>
</html>