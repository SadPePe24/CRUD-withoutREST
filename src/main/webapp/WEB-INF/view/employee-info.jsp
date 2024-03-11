<%--// Страница с FrontEnd-ом \\--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>Add/Edit Employee</title>
      <style>
          .additional-info {
              display: none;
              position: absolute;
              background-color: #f9f9f9;
              border: 1px solid #ccc;
              padding: 10px;
              z-index: 1;
              width: 265px;
          }
          .toggle-btn {
              padding: 8px 16px;
              background-color: #007bff;
              color: #fff;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              margin-bottom: 10px;
          }
          .toggle-btn:hover {
              background-color: #0056b3;
          }
          .form-group {
              margin-bottom: 10px;
          }
          .form-group label {
              display: inline-block;
              width: 100px;
              font-weight: bold;
          }
          .form-group input[type="text"] {
              padding: 8px;
              width: 180px;
              border: 1px solid #ccc;
              border-radius: 4px;
              box-sizing: border-box;
          }
          .submit-btn {
              padding: 10px 20px;
              background-color: #28a745;
              color: #fff;
              border: none;
              border-radius: 4px;
              cursor: pointer;
          }
          .submit-btn:hover {
              background-color: #218838;
          }
          body {
              text-align: center;
          }
          .form-container {
              display: inline-block;
              text-align: left;
          }
      </style>
      <script>
          function toggleAdditionalInfo() {
              var additionalInfo = document.getElementById("additionalInfo");
              if (additionalInfo.style.display === "none") {
                  additionalInfo.style.display = "block";
              } else {
                  additionalInfo.style.display = "none";
              }
          }
      </script>
</head>
<body>

<div class="form-container">
      <h2>Add New Employee</h2>
      <form:form action="saveEmployee" modelAttribute="employee">
            <form:hidden path="id"/>
            <form:hidden path="detail.id"/>
            <div class="form-group">
                  <label for="name">Name:</label>
                  <form:input path="name" id="name"/>
            </div>
            <div class="form-group">
                  <label for="surname">Surname:</label>
                  <form:input path="surname" id="surname"/>
            </div>
            <div class="form-group">
                  <label for="department">Department:</label>
                  <form:input path="department" id="department"/>
            </div>
            <div class="form-group">
                  <label for="salary">Salary:</label>
                  <form:input path="salary" id="salary"/>
            </div>
            <button class="toggle-btn" type="button" onclick="toggleAdditionalInfo()">Additional Info</button>
            <div id="additionalInfo" class="additional-info">
                  <div class="form-group">
                        <label for="city">City:</label>
                        <form:input path="detail.city" id="city"/>
                  </div>
                  <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <form:input path="detail.phone" id="phone"/>
                  </div>
                  <div class="form-group">
                        <label for="email">Email:</label>
                        <form:input path="detail.EMail" id="email"/>
                  </div>
                  <div class="form-group">
                        <label for="birthDay">Birth Day:</label>
                        <form:input path="detail.birthDay" id="birthDay"/>
                  </div>
                  <div class="form-group">
                        <label for="hiredDay">Hired Day:</label>
                        <form:input path="detail.hiredDay" id="hiredDay"/>
                  </div>
            </div>
            <input class="submit-btn" type="submit" value="OK">
      </form:form>
</div>

</body>
</html>



<%--// Страница без FrontEnd-а \\--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--      <title>Add New Employee</title>--%>
<%--      <style>--%>
<%--          /* Стили для выезжающего меню */--%>
<%--          .additional-info {--%>
<%--              display: none;--%>
<%--              position: absolute;--%>
<%--              background-color: #f9f9f9;--%>
<%--              border: 1px solid #ccc;--%>
<%--              padding: 10px;--%>
<%--              z-index: 1;--%>
<%--          }--%>
<%--      </style>--%>
<%--      <script>--%>
<%--          // JavaScript для отображения и скрытия выезжающего меню--%>
<%--          function toggleAdditionalInfo() {--%>
<%--              var additionalInfo = document.getElementById("additionalInfo");--%>
<%--              if (additionalInfo.style.display === "none") {--%>
<%--                  additionalInfo.style.display = "block";--%>
<%--              } else {--%>
<%--                  additionalInfo.style.display = "none";--%>
<%--              }--%>
<%--          }--%>
<%--      </script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h2>Add New Employee</h2>--%>
<%--<form:form action="saveEmployee" modelAttribute="employee">--%>
<%--      <form:hidden path="id"/>--%>
<%--      <form:hidden path="detail.id"/>--%>
<%--      Name: <form:input path="name"/><br>--%>
<%--      Surname: <form:input path="surname"/><br>--%>
<%--      Department: <form:input path="department"/><br>--%>
<%--      Salary: <form:input path="salary"/><br>--%>
<%--      <!-- Кнопка для отображения/скрытия выезжающего меню -->--%>
<%--      <input type="button" value="Additional Info" onclick="toggleAdditionalInfo()">--%>
<%--      <!-- Выезжающее меню с дополнительной информацией -->--%>
<%--      <div id="additionalInfo" class="additional-info">--%>
<%--            City: <form:input path="detail.city"/><br>--%>
<%--            Phone Number: <form:input path="detail.phone"/><br>--%>
<%--            Email: <form:input path="detail.EMail"/><br>--%>
<%--            Birth Day: <form:input path="detail.birthDay"/><br>--%>
<%--            Hired Day: <form:input path="detail.hiredDay"/><br>--%>
<%--      </div>--%>
<%--      <!-- Кнопка для сохранения сотрудника -->--%>
<%--      <input type="submit" value="OK">--%>
<%--</form:form>--%>

<%--</body>--%>
<%--</html>--%>


