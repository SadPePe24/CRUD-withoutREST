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
<form action="saveEmployee" method="post">
      Name: <input type="text" name="name"><br>
      Surname: <input type="text" name="surname"><br>
      Department: <input type="text" name="department"><br>
      Salary: <input type="text" name="salary"><br>
      <!-- Кнопка для отображения/скрытия выезжающего меню -->
      <input type="button" value="Additional Info" onclick="toggleAdditionalInfo()">
      <!-- Выезжающее меню с дополнительной информацией -->
      <div id="additionalInfo" class="additional-info">
            City: <input type="text" name="city"><br>
            Phone Number: <input type="text" name="phone"><br>
            Email: <input type="text" name="eMail"><br>
            Birth Day: <input type="text" name="birthDay"><br>
            Hired Day: <input type="text" name="hiredDay"><br>
      </div>
      <!-- Кнопка для сохранения сотрудника -->
      <input type="submit" value="OK">
</form>

</body>
</html>


