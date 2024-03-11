<%--// Страница с FrontEnd-ом \\--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>All Details</title>
      <style>
          body {
              font-family: Arial, sans-serif;
              margin: 0;
              padding: 0;
              background-color: #f7f7f7;
          }
          .container {
              max-width: 800px;
              margin: 20px auto;
              padding: 20px;
              background-color: #fff;
              border-radius: 8px;
              box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
          }
          h2 {
              margin-top: 0;
          }
          table {
              width: 100%;
              border-collapse: collapse;
              margin-top: 20px;
          }
          th, td {
              padding: 10px;
              border-bottom: 1px solid #ddd;
              text-align: left;
          }
          th {
              background-color: #f2f2f2;
          }
          tr:hover {
              background-color: #f9f9f9;
          }
          input[type="button"] {
              padding: 10px 20px;
              background-color: #007bff;
              color: #fff;
              border: none;
              border-radius: 5px;
              cursor: pointer;
          }
          input[type="button"]:hover {
              background-color: #0056b3;
          }
      </style>
</head>
<body>

<div class="container">
      <h2>All Details</h2>
      <table>
            <thead>
            <tr>
                  <th>Name</th>
                  <th>Surname</th>
                  <th>City</th>
                  <th>Phone Number</th>
                  <th>E-Mail</th>
                  <th>BirthDay</th>
                  <th>HiredDay</th>
            </tr>
            </thead>
            <tbody>
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
            </tbody>
      </table>
      <br>
      <input type="button" value="To list" onclick="window.location.href='/'"/>
</div>

</body>
</html>



<%--// Страница без FrontEnd-а \\--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--      <title>All Details</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h2> All Details </h2>--%>
<%--<br>--%>
<%--<table>--%>
<%--      <tr>--%>
<%--            <th>Name</th>--%>
<%--            <th>Surname</th>--%>
<%--            <th>City</th>--%>
<%--            <th>Phone Number </th>--%>
<%--            <th>E-Mail</th>--%>
<%--            <th>BirthDay</th>--%>
<%--            <th>HiredDay</th>--%>
<%--      </tr>--%>

<%--      <c:forEach var="detail" items="${allDetails}">--%>
<%--            <tr>--%>
<%--                  <td>${detail.employee.name}</td>--%>
<%--                  <td>${detail.employee.surname}</td>--%>
<%--                  <td>${detail.city}</td>--%>
<%--                  <td>${detail.phone}</td>--%>
<%--                  <td>${detail.EMail}</td>--%>
<%--                  <td>${detail.birthDay}</td>--%>
<%--                  <td>${detail.hiredDay}</td>--%>
<%--            </tr>--%>
<%--      </c:forEach>--%>



<%--</table>--%>
<%--<br>--%>
<%--<input type="button" value="To list" onclick="window.location.href = '/' "/>--%>
<%--</body>--%>
<%--</html>--%>