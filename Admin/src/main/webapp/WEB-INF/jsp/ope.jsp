<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <h1>Users List</h1>
  <div>
  <table class="table" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Username</th><th>Email</th><th>Phone No</th><th>Options</th></tr>
  <c:forEach var="u" items="${h}"> 
    <tr>
    <td>${u.id}</td>
    <td>${u.username}</td>
    <td>${u.email}</td>
    <td>${u.phoneno}</td>
    <td>
      <center>
    <form id="delete" action="/delete" method="get">
      <input type="hidden" name="id" id="id" value=${u.id}></input>
      <input type="submit" value="Delete"></input>
    </form>
    <form id="update" action="/update" method="get">
      <input type="hidden" name="id" id="id" value=${u.id}></input>
      <input type="submit" value="Update"></input>
    </form>
  </center>
    </td>
    </tr>
  </c:forEach>
  </table>
  </div>
</center>