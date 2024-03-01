<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--      <title>Employee INFO</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--      <h2> Employee INFO</h2>--%>
<%--      <br>--%>
<%--      <form:form action="saveEmployee" modelAttribute="employee">--%>

<%--            <form:hidden path="id"/>--%>

<%--            Name: <form:input path="name"/> <br><br>--%>
<%--            Surname: <form:input path="surname"/> <br><br>--%>
<%--            Department: <form:input path="department"/> <br><br>--%>
<%--            Salary: <form:input path="salary"/> <br><br>--%>
<%--            <input type="submit" value="OK">--%>
<%--      </form:form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>Employee INFO</title>
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

          form {
              width: 50%;
              margin: 20px auto;
              background-color: #fff;
              padding: 20px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              border-radius: 8px;
          }

          label {
              display: block;
              margin-bottom: 10px;
          }

          input[type="text"], input[type="submit"] {
              width: 100%;
              padding: 10px;
              margin-bottom: 20px;
              border: 1px solid #ccc;
              border-radius: 4px;
              box-sizing: border-box;
          }

          input[type="submit"] {
              background-color: #4CAF50;
              color: white;
              border: none;
              cursor: pointer;
          }

          input[type="submit"]:hover {
              background-color: #45a049;
          }
      </style>
</head>
<body>
<h2>Employee INFO</h2>
<form:form action="saveEmployee" modelAttribute="employee">
      <form:hidden path="id"/>
      <label for="name">Name:</label>
      <form:input path="name" id="name"/><br><br>
      <label for="surname">Surname:</label>
      <form:input path="surname" id="surname"/><br><br>
      <label for="department">Department:</label>
      <form:input path="department" id="department"/><br><br>
      <label for="salary">Salary:</label>
      <form:input path="salary" id="salary"/><br><br>
      <input type="submit" value="OK">
</form:form>
</body>
</html>

