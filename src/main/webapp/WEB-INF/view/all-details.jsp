<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
      <title>All Details</title>
</head>
<body>

<h2> All Details </h2>
<br>
<table>
      <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>City</th>
            <th>Phone Number </th>
            <th>E-Mail</th>
            <th>BirthDay</th>
            <th>HiredDay</th>
      </tr>

      <c:forEach var="detail" items="${allDetails}">
            <tr>
                  <td>${detail.employee.name}</td>
                  <td>${detail.employee.surname}</td>
                  <td>${detail.city}</td>
                  <td>${detail.phone}</td>
                  <td>${detail.EMail}</td>
                  <td>${detail.birthDay}</td>
                  <td>${detail.hiredDay}</td>
            </tr>
      </c:forEach>



</table>
<br>
<input type="button" value="To list" onclick="window.location.href = '/' "/>
</body>
</html>