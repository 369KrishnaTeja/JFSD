<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div align="center">
<form:form action="/login" method="get">
<div>
  <h2 >Admin Login</h2>
  <br>
  <br>
  <br>
  <div>
    <label>User Name </label>
    <form:input type="text" class="form-control" id="floatingInput" placeholder="Username" path="Username"></form:input>
  </div>
  <br>
  <br>
  <div>
    <label>Password </label>
    <form:input type="password" class="form-control" id="floatingPassword" placeholder="Password" path="Password"></form:input>
  </div>
</div>
<br>
<br>
<div>
  <button type="submit">SignIn</button>
</div>
</form:form>
</div>
</html>