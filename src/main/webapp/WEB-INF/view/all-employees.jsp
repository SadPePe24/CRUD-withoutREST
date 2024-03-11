<%--// Страница с FrontEnd-ом \\--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Employees</title>
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
        .btn {
            padding: 8px 16px;
            margin-right: 8px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .btn-danger {
            background-color: #dc3545;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .btn-container {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>All Employees</h2>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateUrl" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <c:url var="deleteUrl" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <button class="btn" onclick="window.location.href='${updateUrl}'">Update</button>
                    <button class="btn btn-danger" onclick="window.location.href='${deleteUrl}'">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="btn-container">
        <button class="btn" onclick="window.location.href='addNewEmployee'">Add</button>
        <button class="btn" onclick="window.location.href='/details'">To details</button>
    </div>
</div>

</body>
</html>



<%--// Страница без FrontEnd-а \\--%>
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
<%--<br><br>--%>
<%--<input type="button" value="To details" onclick="window.location.href = '/details' "/>--%>
<%--</body>--%>
<%--</html>--%>
