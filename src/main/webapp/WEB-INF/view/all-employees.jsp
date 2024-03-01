<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>All Employees</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h2> All Employees </h2>--%>
<%--<br>--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <th>Name</th>--%>
<%--        <th>Surname</th>--%>
<%--        <th>Department</th>--%>
<%--        <th>Salary </th>--%>
<%--        <th>Operations</th>--%>
<%--    </tr>--%>

<%--    <c:forEach var="emp" items="${allEmps}">--%>

<%--        <c:url var = "updateButton" value= "/updateInfo">--%>
<%--            <c:param name="empId" value="${emp.id}"/>--%>
<%--        </c:url>--%>

<%--        <c:url var = "deleteButton" value= "/deleteEmployee">--%>
<%--            <c:param name="empId" value="${emp.id}"/>--%>
<%--        </c:url>--%>
<%--        <tr>--%>
<%--            <td>${emp.name}</td>--%>
<%--            <td>${emp.surname}</td>--%>
<%--            <td>${emp.department}</td>--%>
<%--            <td>${emp.salary}</td>--%>
<%--            <td>--%>
<%--                <input type="button" value="Update"--%>
<%--                onclick="window.location.href = '${updateButton}'"/>--%>

<%--                <input type="button" value="Delete"--%>
<%--                       onclick="window.location.href = '${deleteButton}'"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>

<%--</table>--%>
<%--<br>--%>
<%--<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee' "/>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #666;
            text-transform: uppercase;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        .button-delete {
            background-color: #f44336;
        }
    </style>
</head>
<body>

<h2>All Employees</h2>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input class="button" type="button" value="Update" onclick="window.location.href='${updateButton}'"/>
                <input class="button button-delete" type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>

<div class="button-container">
    <input class="button" type="button" value="Add" onclick="window.location.href='addNewEmployee'"/>
</div>

</body>
</html>
