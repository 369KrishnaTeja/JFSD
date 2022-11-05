<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form:form action="/forgotdet1" method="get">
<div class="form-group" >
  <label class="form-label mt-4">Password Reset</label>
  <br>
  <br>
  <h2>${q}</h2>
  <br>
  <div class="form-floating mb-3">
    <form:input type="email" class="form-control" id="floatingInput" placeholder="Enter Registered Email" path="email"></form:input>
    <label for="floatingInput">Email</label>
  </div>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Submit</button>
</div>
</form:form>
</div>
</html>