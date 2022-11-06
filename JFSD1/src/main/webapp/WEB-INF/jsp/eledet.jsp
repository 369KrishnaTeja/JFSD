<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form:form action="/eleput" method="post">
<div class="form-group" >
  <label class="form-label mt-4">Enter Details</label>
  <br>
  <h2>${r}</h2>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Enter Username" path="username"></form:input>
    <label for="floatingInput">Username</label>
  </div>
  <br>
  <br>
  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Eg-xxxxxxxxx" path="usn"></form:input>
    <label for="floatingInput">Unique Service Number</label>
  </div>
  <br>
  <br>

  <div class="form-floating mb-3">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Eg-xxxx xxxxx" path="sn"></form:input>
    <label for="floatingInput">Service Number</label>
  </div>
    <br>
    <br>
  
  <div class="form-floating">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Eg-xx:abcd" path="ero"></form:input>
    <label for="floatingPassword">ERO</label>
  </div>
  <br>
  <br>
  <div class="form-floating">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Enter Address" path="address"></form:input>
    <label for="floatingPassword">Address</label>
  </div>
  <br>
  <br>
  <div class="form-floating">
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Enter District" path="district"></form:input>
    <label for="floatingPassword">District</label>
  </div>
</div>
<br>
Already have an Unique Number!!! <a href="formd">Go to Electricity Calculation</a>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Submit</button>
</div>
</form:form>
</div>
</html>