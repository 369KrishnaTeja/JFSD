<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<centre><h2>Register</h2></centre>
<form:form method="post" action="insert">
<table>
    <tr>
        <td>Username:</td>
        <td><input name="Username"/></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><input name="Email" type="email"/></td>
    </tr>
    <tr>
        <td>Phone No:</td>
        <td><input name="Phoneno"/></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><input name="Password" type="password"/></td>
    </tr>
    <tr>
        <td><input type="submit" value="Register"/></td>
    </tr>
</table>
</form:form>