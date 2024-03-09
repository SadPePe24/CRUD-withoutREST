<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>Add New Employee</title>
      <style>
          /* Стили для выезжающего меню */
          .additional-info {
              display: none;
              position: absolute;
              background-color: #f9f9f9;
              border: 1px solid #ccc;
              padding: 10px;
              z-index: 1;
          }
      </style>
      <script>
          // JavaScript для отображения и скрытия выезжающего меню
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

<h2>Add New Employee</h2>
<form:form action="saveEmployee" modelAttribute="employee">
      <form:hidden path="id"/>
      <form:hidden path="detail.id"/>
      Name: <form:input path="name"/><br>
      Surname: <form:input path="surname"/><br>
      Department: <form:input path="department"/><br>
      Salary: <form:input path="salary"/><br>
      <!-- Кнопка для отображения/скрытия выезжающего меню -->
      <input type="button" value="Additional Info" onclick="toggleAdditionalInfo()">
      <!-- Выезжающее меню с дополнительной информацией -->
      <div id="additionalInfo" class="additional-info">
            City: <form:input path="detail.city"/><br>
            Phone Number: <form:input path="detail.phone"/><br>
            Email: <form:input path="detail.EMail"/><br>
            Birth Day: <form:input path="detail.birthDay"/><br>
            Hired Day: <form:input path="detail.hiredDay"/><br>
      </div>
      <!-- Кнопка для сохранения сотрудника -->
      <input type="submit" value="OK">
</form:form>

</body>
</html>


