<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <center>
    <h1>User Details</h1><br>
    <h2>ID: ${id}</h2><br>
    <h2>Username: ${name}</h2><br>
    <h2>Email: ${email}</h2><br>
    <h2>Username: ${phone}</h2><br>
    <h2>Password: ${pass}</h2><br><br>
    <form:form action="/update1" method="get">
<div>
  <h1>Update Details</h1>
  <br>
  <div>
    <label>User Name </label>
    <form:input type="text" path="username"></form:input>
  </div>
  <br>
  <div>
    <label>Password </label>
    <form:input type="password" path="password"></form:input>
  </div>
  <br>
  <div>
    <label>Email </label>
    <form:input type="email" path="email"></form:input>
  </div>
  <br>
  <div>
    <label>Phoneno </label>
    <form:input type="text" path="phoneno"></form:input>
  </div>
</div>
<br>
<div>
  <button type="submit">Update</button>
</div>
</form:form>
</center>