<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <style type="text/css"><%@include file="./css/reglog.css" %></style>
 -  <div align="center">
  
    <h1>Users List</h1>
  <div>
  <table class="table table-hover" style="border-color: LightGray" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Username</th><th>Email</th><th>Phone No</th><th>Verification Status</th><th>Options</th></tr>
  <c:forEach var="u" items="${h}"> 
    <tr>
    <td>${u.id}</td>
    <td>${u.username}</td>
    <td>${u.email}</td>
    <td>${u.phoneno}</td>
    <td>${u.verify}</td>
    <td>
      <center>
    <form id="delete" action="/delete" method="get">
      <input type="hidden" name="id" id="id" value=${u.id}></input>
      <input class="btn btn btn-primary" type="submit" value="Delete"></input>
    </form>
    <form id="update" action="/update" method="get">
      <input type="hidden" name="id" id="id" value=${u.id}></input>
      <input class="btn btn btn-primary" type="submit" value="Update"></input>
    </form>
  </center>
    </td>
    </tr>
  </c:forEach>
  </table>
  <br>
  <a href="login2">Electricity Details</a>
  <a href="login3">Queries</a>
  </div>
</div>