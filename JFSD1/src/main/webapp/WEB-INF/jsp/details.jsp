<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<centre><h2>Enter Details To calculate Electricity</h2></centre>
<form:form method="post" action="details">
<table>
    <tr>
        <td>Total Power:</td>
        <td><form:input path="TotalPower"></form:input></td>
    </tr>
    <tr>
        <td>Total Hours:</td>
        <td><form:input path="hour"></form:input></td>
    </tr>
    <tr>
        <td><input type="submit" value="Enter"/></td>
    </tr>
</table>
</form:form>