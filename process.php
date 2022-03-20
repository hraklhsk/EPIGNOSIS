<?php
        session_start();    
        $host = "localhost";  
        $user = "root";  
        $password = '';  
        $db_name = "database";  
          
        $con = mysqli_connect($host, $user, $password, $db_name);  
        if(mysqli_connect_errno()) {  
            die("Failed to connect with MySQL: ". mysqli_connect_error());  
        }
        $email = $_POST['email'];  
        $password = $_POST['pass'];  
        $email = stripcslashes($email);  
        $password = stripcslashes($password);  
        $email = mysqli_real_escape_string($con, $email);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select *from login where email = '$email' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);
        if($count < 0){ 
            echo "<h1><center> Login failed. Invalid username or password.</center></h1>";
        }          
if(isset($row['type'])=="admin"){
    header("location: adminpanel.php");
    exit();
    }  
    elseif(isset($row['type'])=="user"){
        header("location: submissioninfo.php");
        exit();
    }else{
        echo "<h1><center> Login failed. Invalid username or password.</center></h1>";
    }
?> 