<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <h2>Enter Query Here</h2>
    <p>Note : Wait until you get reply for your current query if you submit another query previous one will not be answered</p>
    <br>
    <form:form method="get" action="/getquery">
      <form:input style="height:100px" type="text" path="query"></form:input>
      <button type="submit">Submit Query</button>
    </form:form>
  <br>
  <p>${h.username}${h.query}</p>
  <p>${h.reply}</p>
  <br>
  <a href="home">Return Home</a>
</center>