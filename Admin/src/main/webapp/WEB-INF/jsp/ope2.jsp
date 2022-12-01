<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <h1>User Queries</h1>
  <div>
  <table class="table" border="2" width="70%" cellpadding="2">
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
      <input type="text" name="reply" id="reply" path="reply"></input>
      <input type="submit" value="Reply"></input>
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