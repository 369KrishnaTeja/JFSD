<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <style type="text/css"><%@include file="./css/reglog.css" %></style>
  
  <center>
    <h1>User Queries</h1>
  <div>
  <table class="table table-hover" style="border-color: LightGray" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Username</th><th>Query</th><th>Status</th><th>Default Reply</th><th>Your Reply</th></tr>
  <c:forEach var="u" items="${h}"> 
    <tr>
    <td>${u.id}</td>
    <td>${u.username}</td>
    <td>${u.query}</td>
    <td>${u.status}</td>
    <td>${u.reply}</td>
    <td>
      <center>
    <form id="update3" action="/update3" method="get">
      <input type="hidden" name="username" id="username" value=${u.username}></input>
      <input  type="text" class="form-control" placeholder="Reply Here" name="reply" id="reply" path="reply"></input>
      <input class="btn btn btn-primary" type="submit" value="Reply"></input>
    </form>
  </center>
    </td>
    </tr>
  </c:forEach>
  </table>
  </div>
  <br>
  <a href="login2">Electricity Details</a>
  <a href="login1">User Details</a>
</center>