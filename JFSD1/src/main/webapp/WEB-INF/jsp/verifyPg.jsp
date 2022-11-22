<%@page language="java" contentType="text/html; charset=utf-8" %>
<style><%@include file="./css/reglog.css" %></style>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<meta charset="utf-8">
<div class="formBoxes" align="center">
<form action="/captcha" method="get">
<div class="form-group" >
  <label class="form-label mt-4">Captcha Verification</label>
  <br>
  <h2>${c}</h2>
  <br>

  <div class="form-floating mb-3">
    <input type="number" class="form-control" id="floatingInput" name="rval" path="rval">
    <label for="floatingInput">Verify Captcha</label>
  </div>
    <br>
    <br>
</div>
<br>
<br>
<div class="d-grid gap-2">
  <button class="btn btn-lg btn-primary" type="submit">Verify</button>
</div>
</form>
</div>
</html>