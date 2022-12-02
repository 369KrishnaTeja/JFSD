<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <h1>Slab Details List</h1>
    <br>
    <br>
    <form:form method="get" action="/getslab">
      <form:input type="text" path="units"></form:input>
      <button type="submit">Know your Slab</button>
    </form:form>
  <table class="table" border="2" width="70%" cellpadding="2">
  <tr><th>Slab ID</th><th>Slab Name</th><th>Min unit</th><th>Max unit</th><th>Cost per slab</th></tr>
  <c:forEach var="u" items="${h}"> 
    <tr>
    <td>${u.id}</td>
    <td>${u.slabno}</td>
    <td>${u.minunit}</td>
    <td>${u.maxunit}</td>
    <td>${u.costperunit}</td>
    </tr>
  </c:forEach>
  </table>
  <br>
  <p>${hhh}</p>
  <br>
</center>