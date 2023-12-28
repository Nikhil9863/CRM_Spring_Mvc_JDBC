<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beautiful Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 270px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 12px;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .submit:hover {
            background-color: #45a049;
            color:white;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2 style="text-align: center;">Customer Registration</h2>
       
       
        <form action="save" method="post">

          <label for="yourName">Full Name:</label>
          <input type="text" id="yourName" name="Cust_Name" required>
      
          <br><br>
         
          <label for="name">Email:</label>
          <input type="text" id="name" name="Cust_E_mail" required>
          
          <br><br>
      
          <label for="phoneNo">Phone Number:</label>
          <input type="tel" id="phoneNo" name="Cust_phno" pattern="[0-9]{10}" required>
         
          <br><br>
          
          <input type="submit" class="submit" value="Register">
      
        </form>
    </div>


 

</body>
</html>
  
      
   